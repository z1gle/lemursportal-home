/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.wcs.lemursportal.controller;

/**
 *
 * @author WCS
 */
import org.springframework.beans.factory.annotation.Autowired;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Calendar;
import java.util.List;
import java.util.Date;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.wcs.lemursportal.model.Actualite;
import org.wcs.lemursportal.model.Utilisateur;
import org.wcs.lemursportal.service.ActualiteService;

@Controller
public class ActualiteController {

    @Autowired
    private ActualiteService actuservice;

    private static final String UPLOAD_DIRECTORY = "/resources/images";

    @RequestMapping(value = "/upload", method = RequestMethod.POST)
    public String save(@RequestParam CommonsMultipartFile file, @RequestParam String title,
            @RequestParam String commentaire, @RequestParam String url_source, Utilisateur user, HttpSession session) throws Exception {
        Actualite actu = new Actualite();
        ServletContext context = session.getServletContext();
        String path = context.getRealPath(UPLOAD_DIRECTORY);
        String filename = file.getOriginalFilename();
        Date datePhoto = Calendar.getInstance().getTime();
        String nomPhoto = "actualite_" + datePhoto.getTime() + ".jpg";
        String url = UPLOAD_DIRECTORY + "/" + nomPhoto;
        System.out.println(path + " " + filename);
        System.out.println("Chemin=" + file.getStorageDescription());
        byte[] bytes = file.getBytes();
        BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(
                new File(path + File.separator + nomPhoto)));
        stream.write(bytes);
        stream.flush();
        stream.close();
        actu.setIdUser(88983);
        actu.setTitreActu(title);
        actu.setCommentaireActu(commentaire);
        actu.setUrlPhoto(url);
        actu.setUrlSourceActu(url_source);
        actu.setDateActu(Calendar.getInstance().getTime());
        actuservice.saveActualite(actu);
        return "redirect:/";
    }
    
    @RequestMapping(value = "/edit")
    public String edit(@RequestParam int id,
            HttpSession session) throws Exception {
        Actualite actu =actuservice.findActualiteById(id);
        ModelAndView model = new ModelAndView("edit_actu");
        model.addObject("actu",actu);
        return "redirect:/";
    }

    @RequestMapping(value = "/delete")
    public String delete(@RequestParam long id,
            HttpSession session) throws Exception {
          actuservice.delete(id);
        return "redirect:/";
    }
}
