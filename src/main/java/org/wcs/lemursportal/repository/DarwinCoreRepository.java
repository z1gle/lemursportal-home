package org.wcs.lemursportal.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.wcs.lemursportal.model.DarwinCore;

/**
 * @author 
 *
 */
@Repository
@Transactional
public interface DarwinCoreRepository extends
		JpaRepository<DarwinCore, Integer> {
	
	@Query("select count(*) from DarwinCore")
	long getCount();

}
