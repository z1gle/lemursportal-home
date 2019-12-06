/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.wcs.lemursportal.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.wcs.lemursportal.repository.MetadataRepository;

/**
 *
 * @author OC-USER6
 */

@Service("MetadataServiceImpl")
public class MetadataServiceImpl implements MetadataService {

    @Autowired //@Resource
    private MetadataRepository dao;

    @Override
    public long getDocumentCount() {
        return dao.getCount();
    }

    @Override
    public List<Object[]> getDocbySpecies() {
        return dao.getDocbySpecies();
    }

    @Override
    public List<Object[]> getDocbyPublicationYear() {
        return dao.getDocbyPublicationYear();
    }

    @Override
    public List<Object[]> getDocbyBibliographicLevel() {
        return dao.getDocbyBibliographicLevel();
    }

}
