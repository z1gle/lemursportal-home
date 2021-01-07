/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.wcs.lemursportal.service;

import org.wcs.lemursportal.model.Actualite;
import java.util.List;

/**
 *
 * @author WCS
 */
public interface ActualiteService {

    public void saveActualite(Actualite actualite);

    public void delete(long id);

    public Actualite findActualiteById(long id);

    public List<Actualite> list();
}
