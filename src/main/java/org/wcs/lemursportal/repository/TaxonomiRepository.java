package org.wcs.lemursportal.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.wcs.lemursportal.model.TaxonomiBase;

/**
 * @author
 *
 */
@Repository
//@Transactional
public interface TaxonomiRepository extends
        JpaRepository<TaxonomiBase, Integer> {

    @Query("select count(*) from TaxonomiBase")
    long getCount();

    @Query("Select conservationStatus, count(Distinct scientificname)as count from TaxonomiBase where conservationStatus is not null and conservationStatus not like '-' group by conservationStatus")
    public List<Object[]> getSpeciesByIUCNStatus();

    @Query("Select dwcfamily, count(Distinct scientificname)as count from TaxonomiBase group by dwcfamily")
    public List<Object[]> getSpeciesByFamily();

    @Query("Select genus, count(Distinct scientificname)as count from TaxonomiBase group by genus")
    public List<Object[]> getSpeciesByGenus();

    @Query(value = "select tp.topic,count(tp.species) from (select test.topic,test.species from \n"
            + "(select m.*, tax.scientificname as species, t.libelle as topic \n"
            + "from metadata m \n"
            + "left join association_metadata_taxonomi amtax on amtax.id_metadata = m.id \n"
            + "left join association_metadata_topic amt on amt.id_metadata = m.id \n"
            + "left join thematique t on t.id = amt.id_topic \n"
            + "left join taxonomi_base tax on tax.idtaxonomibase = amtax.id_taxonomi) as test \n"
            + "left join metadata m on test.id = m.id \n"
            + "where test.topic not like '' and test.species not like '' group by test.topic,test.species)tp group by tp.topic", nativeQuery = true)
    public List<Object[]> getSpeciesByTopics();

    @Query(value = "SELECT distinct(t.scientificname),t.idtaxonomibase,p.chemin "
            + "FROM taxonomi_base t left join photo_taxonomi p on t.idtaxonomibase=p.id_taxonomi and p.profil=true where "
            + "LOWER(t.higherclassification) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.kingdom) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.phylum) LIKE '%' || :keyword || '%' or LOWER(t.dwcclass) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.dwcorder) LIKE '%' || :keyword || '%' or LOWER(t.dwcfamily) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.genus) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.genussource) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.specificepithet) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.specificepithetsource) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.infraspecificepithet) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.infraspecificepithetsource) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.scientificname) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.scientificnameauthorship) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.acceptednameusage) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.basisofrecord) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.infraspecificepithet) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.frenchvernacularname) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.malagasyvernacularname) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.englishvernacularname) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.germany_vernacular_name) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.length_and_weight) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.length_and_weight_source) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.color_en) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.color_fr) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.color_source) LIKE '%' || :keyword || '%' or t.habitat_fr LIKE '%' || :keyword || '%' or "
            + "LOWER(t.habitat_en) LIKE '%' || :keyword || '%' or t.habitatsource LIKE '%' || :keyword || '%' or "
            + "LOWER(t.population_density) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.population_density_source) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.ecology_fr) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.ecology_en) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.ecologysource) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.behavior_fr) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.behavior_en) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.behaviorsource) LIKE '%' || :keyword || '%' or t.threat_fr LIKE '%' || :keyword || '%' or "
            + "LOWER(t.threat_en) LIKE '%' || :keyword || '%' or t.threatsource LIKE '%' || :keyword || '%' or "
            + "LOWER(t.conservation_status) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.iucn_source) LIKE '%' || :keyword || '%' or t.protectedareaoccurrences LIKE '%' || :keyword || '%' or "
            + "LOWER(t.protected_area_occurrences_sources) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.species_expert) LIKE '%' || :keyword || '%'"
            + " order by t.scientificname ", nativeQuery = true)
    public List<Object[]> search(@Param("keyword") String keyword);

    @Query(value = "SELECT distinct(t.scientificname),t.idtaxonomibase,p.chemin "
            + "FROM taxonomi_base t left join photo_taxonomi p on t.idtaxonomibase=p.id_taxonomi and p.profil=true where "
            + "LOWER(t.higherclassification) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.kingdom) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.phylum) LIKE '%' || :keyword || '%' or LOWER(t.dwcclass) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.dwcorder) LIKE '%' || :keyword || '%' or LOWER(t.dwcfamily) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.genus) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.genussource) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.specificepithet) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.specificepithetsource) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.infraspecificepithet) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.infraspecificepithetsource) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.scientificname) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.scientificnameauthorship) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.acceptednameusage) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.basisofrecord) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.infraspecificepithet) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.frenchvernacularname) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.malagasyvernacularname) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.englishvernacularname) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.germany_vernacular_name) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.length_and_weight) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.length_and_weight_source) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.color_en) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.color_fr) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.color_source) LIKE '%' || :keyword || '%' or t.habitat_fr LIKE '%' || :keyword || '%' or "
            + "LOWER(t.habitat_en) LIKE '%' || :keyword || '%' or t.habitatsource LIKE '%' || :keyword || '%' or "
            + "LOWER(t.population_density) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.population_density_source) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.ecology_fr) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.ecology_en) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.ecologysource) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.behavior_fr) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.behavior_en) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.behaviorsource) LIKE '%' || :keyword || '%' or t.threat_fr LIKE '%' || :keyword || '%' or "
            + "LOWER(t.threat_en) LIKE '%' || :keyword || '%' or t.threatsource LIKE '%' || :keyword || '%' or "
            + "LOWER(t.conservation_status) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.iucn_source) LIKE '%' || :keyword || '%' or t.protectedareaoccurrences LIKE '%' || :keyword || '%' or "
            + "LOWER(t.protected_area_occurrences_sources) LIKE '%' || :keyword || '%' or "
            + "LOWER(t.species_expert) LIKE '%' || :keyword || '%' "
            + "order by t.scientificname limit 2", nativeQuery = true)
    public List<Object[]> searchlim(@Param("keyword") String keyword);

    @Transactional
    @Modifying
    @Query(value = "UPDATE taxonomi_base set conservation_status=:category where scientificname like '%' || :scientificname || '%' ", nativeQuery = true)
    public void MAJIUCN_satus(@Param("category") String category, @Param("scientificname") String scientificname);
}
