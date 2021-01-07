/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.wcs.lemursportal.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.wcs.lemursportal.model.Actualite;

/**
 *
 * @author WCS
 */
@Repository
@Transactional
public interface ActualiteRepository extends
		JpaRepository<Actualite, Long>{
    
}
