package org.wcs.lemursportal.repository;

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

}
