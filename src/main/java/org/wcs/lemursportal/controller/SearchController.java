/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.wcs.lemursportal.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.wcs.lemursportal.repository.ThematiqueRepository;
import org.wcs.lemursportal.service.ClientInfoService;
import org.wcs.lemursportal.service.DarwinCoreService;
import org.wcs.lemursportal.service.MetadataService;
import org.wcs.lemursportal.service.TaxonomiService;
import org.wcs.lemursportal.service.UtilisateurService;

/**
 *
 * @author OC-USER6
 */
@Controller
public class SearchController {

    @Autowired
    private MessageSource messageSource;

    private static final Logger logger = Logger.getLogger(SearchController.class);

    @Autowired
    private ClientInfoService clientInfoService;

    @Autowired
    private TaxonomiService taxonomiService;

    @Autowired
    private UtilisateurService utilisateurService;

    @Autowired
    private DarwinCoreService darwinCoreService;

    @Autowired
    private ThematiqueRepository thematiqueRepository;

    @Autowired
    private MetadataService documentService;

    @RequestMapping(value = "/lists/discussionslist{keyword}", method = RequestMethod.GET)
    public ModelAndView discussionslist(@RequestParam("keyword") String keyword) {
        ModelAndView model = new ModelAndView("/lists/discussionslist");
        List<Object[]> discussion = documentService.findDiscussion(keyword.toLowerCase());
        int countdisc=discussion.size();
        model.addObject("searchfield", keyword);
        model.addObject("discussion", discussion);
        model.addObject("countdisc", countdisc);
        return model;
    }

    @RequestMapping(value = "/lists/expertslist{keyword}", method = RequestMethod.GET)
    public ModelAndView expertslist(@RequestParam("keyword") String keyword) {
        ModelAndView model = new ModelAndView("/lists/expertslist");
        List<Object[]> exp = utilisateurService.findExpert(keyword.toLowerCase());
        int countexp=exp.size();
        model.addObject("searchfield", keyword);
        model.addObject("expertresult", exp);
        model.addObject("counte", countexp);
        return model;
    }

    @RequestMapping(value = "/lists/occurrenceList{keyword}", method = RequestMethod.GET)
    public ModelAndView occurrenceList(@RequestParam("keyword") String keyword) {
        ModelAndView model = new ModelAndView("lists/occurrenceList");
        List<Object[]> occurrence = darwinCoreService.findOccurrennce(keyword.toLowerCase());
        int countoccs = occurrence.size();
        model.addObject("searchfield", keyword);
        model.addObject("resultocc", occurrence);
        model.addObject("countoccurrence", countoccs);
        return model;
    }

    @RequestMapping(value = "/lists/specieslist{keyword}", method = RequestMethod.GET)
    public ModelAndView specieslist(@RequestParam("keyword") String keyword) {
        List<Object[]> tax = taxonomiService.search(keyword.toLowerCase());
        int counttax = tax.size();
        ModelAndView model = new ModelAndView("lists/specieslist");
        model.addObject("searchfield", keyword);
        model.addObject("tax", tax);
        model.addObject("counttax", counttax);
        return model;
    }
}
