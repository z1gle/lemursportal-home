/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.wcs.lemursportal.controller;

import javax.servlet.http.HttpServletRequest;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.wcs.lemursportal.service.TaxonomiService;

/**
 *
 * @author OC-USER6
 */
@RestController
public class TaxonomyController {
    private static final Logger logger = Logger.getLogger(TaxonomyController.class);
    @Autowired
    private TaxonomiService taxonomiService;

    @RequestMapping(value = "/graphics", method = RequestMethod.POST)
    public String maj_conservation_uicn(HttpServletRequest request){           
        taxonomiService.MAJIUCN_satus(request.getParameter("category"),request.getParameter("scientificname"));
        return "true";
    }
 
}
