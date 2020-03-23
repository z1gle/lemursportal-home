/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.wcs.lemursportal.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.wcs.lemursportal.model.Metadata;

/**
 *
 * @author OC-USER6
 */
public interface MetadataRepository extends JpaRepository<Metadata, Integer> {

    @Query("select count(id_document) from Metadata where type='4'")
    long getCount();

    @Query(value = "SELECT count(m.id_document),t.scientificname \n"
            + "FROM Metadata m JOIN association_metadata_taxonomi a ON m.id= a.id_metadata "
            + "JOIN taxonomi_base t ON a.id_taxonomi= t.idtaxonomibase group by t.scientificname order by t.scientificname",
            nativeQuery = true)
    public List<Object[]> getDocbySpecies();

    @Query("Select year, count(id_document)as count from Metadata where year is not null and year not like '' group by year order by year")
    public List<Object[]> getDocbyPublicationYear();

    @Query("Select bibliographic_resource, count(id_document)as count from Metadata where bibliographic_resource is not null and bibliographic_resource not like '' group by bibliographic_resource")
    public List<Object[]> getDocbyBibliographicLevel();

    @Query(value = "select distinct m.id,m.title,m.url,m.year,m.creator,m.coverage from \n"
            + "(select m.*, tax.scientificname as species, t.libelle as topic \n"
            + "from metadata m \n"
            + "left join association_metadata_taxonomi amtax on amtax.id_metadata = m.id \n"
            + "left join association_metadata_topic amt on amt.id_metadata = m.id \n"
            + "left join thematique t on t.id = amt.id_topic \n"
            + "left join taxonomi_base tax on tax.idtaxonomibase = amtax.id_taxonomi) as test \n"
            + "left join metadata m on test.id = m.id \n"
            + "where lower(rtrim(ltrim(replace(test.*\\:\\:text, ','\\:\\:text, ''\\:\\:text), '('\\:\\:text), ')'\\:\\:text)) ilike '%' || :keyword || '%' and m.type='4' "
            + "order by m.year desc", nativeQuery = true)
    public List<Object[]> findGlobal(@Param("keyword") String keyword);

    @Query(value = "select distinct m.id,m.title,m.url,m.year,m.creator,m.coverage from \n"
            + "(select m.*, tax.scientificname as species, t.libelle as topic \n"
            + "from metadata m \n"
            + "left join association_metadata_taxonomi amtax on amtax.id_metadata = m.id \n"
            + "left join association_metadata_topic amt on amt.id_metadata = m.id \n"
            + "left join thematique t on t.id = amt.id_topic \n"
            + "left join taxonomi_base tax on tax.idtaxonomibase = amtax.id_taxonomi) as test \n"
            + "left join metadata m on test.id = m.id \n"
            + "where lower(rtrim(ltrim(replace(test.*\\:\\:text, ','\\:\\:text, ''\\:\\:text), '('\\:\\:text), ')'\\:\\:text)) ilike '%' || :keyword || '%' and m.type='4' "
            + "order by m.year desc limit 2", nativeQuery = true)
    public List<Object[]> findGloballim(@Param("keyword") String keyword);

    @Query(value = "select u.photo_profil,me.id,me.title,me.contenu from message me \n"
            + "left join document d on me.document_id=d.id \n"
            + "left join metadata m on d.id=m.id_document\n"
            + " left join utilisateur u on me.owner_id=u.id \n"
            + " where me.deleted='f' and parent_id is null and lower(contenu) like '%' || :keyword || '%' limit 2", nativeQuery = true)
    public List<Object[]> findDiscussionlim(@Param("keyword") String keyword);

    @Query(value = "select u.photo_profil,me.id,me.title,me.contenu from message me \n"
            + "left join document d on me.document_id=d.id \n"
            + "left join metadata m on d.id=m.id_document\n"
            + " left join utilisateur u on me.owner_id=u.id \n"
            + " where me.deleted='f' and parent_id is null and lower(contenu) like '%' || :keyword || '%'", nativeQuery = true)
    public List<Object[]> findDiscussion(@Param("keyword") String keyword);
}