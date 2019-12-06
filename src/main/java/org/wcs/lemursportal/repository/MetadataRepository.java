/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.wcs.lemursportal.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.wcs.lemursportal.model.Metadata;

/**
 *
 * @author OC-USER6
 */
public interface MetadataRepository extends JpaRepository<Metadata, Integer> {

    @Query("select count(id_document) from Metadata")
    long getCount();

    @Query(value = "SELECT count(m.id_document),t.scientificname \n"
            + "FROM Metadata m JOIN association_metadata_taxonomi a ON m.id= a.id_metadata "
            + "JOIN taxonomi_base t ON a.id_taxonomi= t.idtaxonomibase group by t.scientificname order by t.scientificname",
            nativeQuery = true)
    public List<Object[]> getDocbySpecies();

    @Query("Select year, count(id_document)as count from Metadata where year is not null group by year order by year")
    public List<Object[]> getDocbyPublicationYear();

    @Query("Select bibliographic_resource, count(id_document)as count from Metadata where bibliographic_resource is not null and bibliographic_resource not like '' group by bibliographic_resource")
    public List<Object[]> getDocbyBibliographicLevel();
}
