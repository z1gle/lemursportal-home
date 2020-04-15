/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.wcs.lemursportal.service;

import java.util.List;

/**
 *
 * @author OC-USER6
 */
public interface MetadataService {

    long getDocumentCount();

    List<Object[]> getDocbySpecies();

    List<Object[]> getDocbyPublicationYear();

    List<Object[]> getDocbyBibliographicLevel();

    List<Object[]> findGlobal(String search);

    List<Object[]> findDiscussion(String keyword);
    
    List<Object[]> findGloballim(String search);

    List<Object[]> findDiscussionlim(String keyword);
    
    List<Object[]> getDocbyTopics();
}
