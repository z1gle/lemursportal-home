package org.wcs.lemursportal.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.wcs.lemursportal.model.ClientInfo;

/**
 * @author 
 *
 */
@Repository
@Transactional
public interface ClientInfoRepository extends
		JpaRepository<ClientInfo, Long> {
	
	@Query("select count(*) from ClientInfo")
	long getCount();
	
}
