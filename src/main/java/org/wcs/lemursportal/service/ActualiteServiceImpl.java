/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.wcs.lemursportal.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.wcs.lemursportal.model.Actualite;
import org.wcs.lemursportal.repository.ActualiteRepository;

/**
 *
 * @author WCS
 */
@Service("ActualiteService")
@Transactional
public class ActualiteServiceImpl implements ActualiteService {

    @Autowired
    private ActualiteRepository dao;

    @Override
    @Transactional
    public void saveActualite(Actualite actualite) {
        dao.save(actualite);
    }

    @Override
    @Transactional
    public void delete(long id) {
        dao.delete(id);
    }

    @Override
    public Actualite findActualiteById(long id) {
        return dao.findOne(id);
    }

    @Override
    public List<Actualite> list() {
        return dao.findAll();
    }

}
