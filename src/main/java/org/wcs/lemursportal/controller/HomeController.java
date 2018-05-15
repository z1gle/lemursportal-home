package org.wcs.lemursportal.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.FontMetrics;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

import javax.imageio.ImageIO;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.wcs.lemursportal.model.ClientInfo;
import org.wcs.lemursportal.model.UserRole;
import org.wcs.lemursportal.model.Utilisateur;
import org.wcs.lemursportal.service.ClientInfoService;
import org.wcs.lemursportal.service.DarwinCoreService;
import org.wcs.lemursportal.service.TaxonomiService;
import org.wcs.lemursportal.service.UtilisateurService;

@Controller
public class HomeController {

	@Autowired
    private MessageSource messageSource;
    
    private static final Logger logger = Logger.getLogger(HomeController.class);

    @Autowired 
	private ClientInfoService clientInfoService;
    
    @Autowired 
	private TaxonomiService taxonomiService;
    
    @Autowired 
	private UtilisateurService utilisateurService;
    
    @Autowired 
	private DarwinCoreService darwinCoreService;
    
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(Locale locale, Model model, HttpServletRequest request,
            HttpServletResponse response){

        Locale currentLocale = LocaleContextHolder.getLocale();
        ClientInfo clInfo = new ClientInfo();
    	
        Cookie[] cookies = request.getCookies();
        boolean count = true;
        if (cookies != null) {
        	for (int i = 0; i < cookies.length; i++) {
     			if(cookies[i].getName().equals("LPVC")) {
     				count = false;
     			}
        	}
        }
        
        if(count) {
        	clInfo.setClientInfo(request);
        	clientInfoService.saveClientInfo(clInfo);
        }
        
        Cookie newCookie = new Cookie("LPVC", clientInfoService.getClientInfoCount()+"");
        newCookie.setMaxAge(12 * 60 * 60);
        response.addCookie(newCookie);
        
        DecimalFormat df2 = new DecimalFormat("#,##0");
        
        model.addAttribute("nbrTaxonomi", df2.format(taxonomiService.getTaxonomiBaseCount()));
        model.addAttribute("nbrUtilisateur", df2.format(utilisateurService.getUtilisateurCount()));
        model.addAttribute("nbrOccurrence", df2.format(darwinCoreService.getDarwinCoreCount()));
        
        List<Utilisateur> listExperts = utilisateurService.getExpert(UserRole.EXPERT);
        List<Utilisateur> experts = new ArrayList<Utilisateur>();
		
		if(null== listExperts || listExperts.size()== 0){
			model.addAttribute("noexpert","expert.not.found");
		} else {
			int i = 0;
			for (Utilisateur utilisateur : listExperts) {
				if(i<4) {
					//Ne pas afficher biographie < 10 mots
					if(utilisateur.getBiographie() != null && !utilisateur.getBiographie().isEmpty()
							&& utilisateur.getBiographie().length()>10) {
						experts.add(utilisateur);
						i++;
					}
				} else break;
			}
			model.addAttribute("experts",experts);
		}
        model.addAttribute("locale", currentLocale);
        
        return "index";
    }
    
//    @RequestMapping(value = "/image-byte-array", method = RequestMethod.GET)
//    public @ResponseBody byte[] getImageAsByteArray() throws IOException {
//        InputStream in = servletContext.getResourceAsStream("/WEB-INF/images/image-example.jpg");
//        return IOUtils.toByteArray(in);
//    }
    
    @RequestMapping(value="/visit", method=RequestMethod.GET)
	 public void getVisitCounter(HttpServletRequest request, HttpServletResponse response) throws IOException {

        BufferedImage buffer = new BufferedImage(105, 20, BufferedImage.TYPE_INT_RGB);
        Graphics2D g = buffer.createGraphics();
        g.setRenderingHint(RenderingHints.KEY_ANTIALIASING,
                RenderingHints.VALUE_ANTIALIAS_ON);
        
        URL fontUrl = new URL("http://ff.cdn.1001fonts.net/d/i/digital-7.regular.ttf");
        Font font = new Font("Monospaced", Font.PLAIN, 19);
		try {
			InputStream istream = this.getClass().getClassLoader()
                    .getResourceAsStream("led-counter-7.ttf");
			
			font = Font.createFont(Font.TRUETYPE_FONT, istream);
			
//			font = Font.createFont(Font.TRUETYPE_FONT, fontUrl.openStream());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        font = font.deriveFont(Font.PLAIN, 19);	
        
        g.setFont(font);
        g.setColor(Color.BLACK);
        g.fillRect(0, 0, 105, 20);
        g.setColor(Color.green);
        DecimalFormat df2 = new DecimalFormat("0000000");	
//        g.drawString(df2.format(clientInfoService.getClientInfoCount()), 0, 20);
        
        FontMetrics metrics = g.getFontMetrics(font);
        int x = (100 - metrics.stringWidth(df2.format(clientInfoService.getClientInfoCount())))/ 2;
//        int y = 16;//metrics.getAscent() - metrics.getHeight()/ 2 ;
        g.setFont(font);

        g.drawString(df2.format(clientInfoService.getClientInfoCount()), 15, 16);

        response.setContentType("image/png");
        OutputStream os = response.getOutputStream();
        ImageIO.write(buffer, "png", os);
        os.close();
        
//        IOUtils.toByteArray(in);
//        
//        return "index";
    }

}
