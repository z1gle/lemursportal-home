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

     @Override
    public List<Object[]> findGlobal(String search) {
         return dao.findGlobal(search);
    }

    @Override
    public List<Object[]> findDiscussion(String keyword) {
       return dao.findDiscussion(keyword);
    }
    
    @Override
    public List<Object[]> getDocbyTopics() {
         return dao.getDocbyTopics();
    }

     @Override
    public List<Object[]> findGloballim(String search) {
         return dao.findGloballim(search);
    }

    @Override
    public List<Object[]> findDiscussionlim(String keyword) {
       return dao.findDiscussionlim(keyword);
    }

}