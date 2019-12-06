/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.wcs.lemursportal.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.wcs.lemursportal.model.DarwinCore;
import org.wcs.lemursportal.service.DarwinCoreService;
import org.wcs.lemursportal.service.TaxonomiService;
import org.wcs.lemursportal.service.MetadataService;

/**
 *
 * @author OC-USER6
 */
@Controller
public class GraphicsController {

    @Autowired
    private TaxonomiService taxonomiService;

    @Autowired
    private DarwinCoreService darwinCoreService;

    @Autowired
    private MetadataService metadataService;

    @RequestMapping(value = "/graphics", method = RequestMethod.GET)
    public ModelAndView graphics(HttpServletRequest request) {
        ModelAndView model = new ModelAndView("graphics");
        List<Object[]> speciesGpByIUCN_Statuslist = taxonomiService.getCountSpeciesGpByIUCN_Status();
        List<Object[]> speciesGpByFamilylist = taxonomiService.getCountSpeciesGpByFamily();
        List<Object[]> speciesGpByGenus = taxonomiService.getCountSpeciesGpByGenus();
        List<DarwinCore> occurrencePerYearlist = darwinCoreService.getOccperYear();
        List<Object[]> metadatabySpecies = metadataService.getDocbySpecies();
        List<Object[]> metadatabyYear = metadataService.getDocbyPublicationYear();
        List<Object[]> metadatabyBL = metadataService.getDocbyBibliographicLevel();
        model.addObject("speciesGpByIUCNStatuslist", speciesGpByIUCN_Statuslist);
        model.addObject("speciesGpByFamilylist", speciesGpByFamilylist);
        model.addObject("speciesGpByGenus", speciesGpByGenus);
        model.addObject("occurrencePerYearlist", occurrencePerYearlist);
        model.addObject("metadatabyspecies", metadatabySpecies);
        model.addObject("metadatabyYear", metadatabyYear);
        model.addObject("metadatabyBL", metadatabyBL);
        return model;
    }
}
