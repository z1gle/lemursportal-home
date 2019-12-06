package org.wcs.lemursportal.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
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

}
