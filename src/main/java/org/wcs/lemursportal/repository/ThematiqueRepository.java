package org.wcs.lemursportal.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.wcs.lemursportal.model.Thematique;

/**
 * @author 
 *
 */
@Repository
@Transactional
public interface ThematiqueRepository extends
		JpaRepository<Thematique, Integer> {
}
