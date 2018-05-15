package org.wcs.lemursportal.repository;

import java.util.List;

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
	
}
