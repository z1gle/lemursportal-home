package org.wcs.lemursportal.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.wcs.lemursportal.model.Utilisateur;

/**
 * @author 
 *
 */
@Repository
@Transactional
public interface UtilisateurRepository extends
		JpaRepository<Utilisateur, Integer> {
	
	@Query("select count(*) from Utilisateur")
	long getCount();
	
	//@Query("select u from UserInfo as u where u.email=?1")
	Utilisateur findByEmail(String email);
	
}
