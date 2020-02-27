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
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.LockedException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.wcs.lemursportal.model.ClientInfo;
import org.wcs.lemursportal.model.UserRole;
import org.wcs.lemursportal.model.Utilisateur;
import org.wcs.lemursportal.repository.ThematiqueRepository;
import org.wcs.lemursportal.service.ClientInfoService;
import org.wcs.lemursportal.service.DarwinCoreService;
import org.wcs.lemursportal.service.MetadataService;
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
    
    @Autowired 
	private ThematiqueRepository thematiqueRepository;
    
        @Autowired
    private MetadataService documentService;
    
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
        model.addAttribute("nbrDocument", df2.format(documentService.getDocumentCount()));
        model.addAttribute("topics", thematiqueRepository.findAll());
        
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
        
//        return "index";
        return "remake_index";
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
    
    @RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, HttpServletRequest request) {

		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", getErrorMessage(request, "SPRING_SECURITY_LAST_EXCEPTION"));
		}

		if (logout != null) {
			model.addObject("msg", "You've been logged out successfully.");
		}
		model.setViewName("login");

		return model;

	}
    
 // customize the error message
 	private String getErrorMessage(HttpServletRequest request, String key) {

 		Exception exception = (Exception) request.getSession().getAttribute(key);

 		String error = "";
 		if (exception instanceof BadCredentialsException) {
 			error = "Invalid username and password!";
 		} else if (exception instanceof LockedException) {
 			error = exception.getMessage();
 		} else {
 			error = "Invalid username and password!";
 		}

 		return error;
 	}

 	// for 403 access denied page
 	@RequestMapping(value = "/403", method = RequestMethod.GET)
 	public ModelAndView accesssDenied() {

 		ModelAndView model = new ModelAndView();

 		// check if user is login
 		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
 		if (!(auth instanceof AnonymousAuthenticationToken)) {
 			UserDetails userDetail = (UserDetails) auth.getPrincipal();
 			System.out.println(userDetail);

 			model.addObject("username", userDetail.getUsername());

 		}

 		model.setViewName("403");
 		return model;

 	}
 	
 	@ModelAttribute("currentUser")
    public Utilisateur getCurrentUser(Authentication authentication) {
 		Utilisateur userInfo = new Utilisateur();
        if (authentication != null) {
            String email = authentication.getName();
            userInfo = utilisateurService.findByEmail(email);
        }
        return userInfo;
    }

     @RequestMapping(value = "/results{keyword}", method = RequestMethod.GET)
    public ModelAndView results(@RequestParam("keyword") String keyword) {
        
         List<Object[]> expert = utilisateurService.findExpertlim(keyword.toLowerCase());
          List<Object[]> e = utilisateurService.findExpert(keyword.toLowerCase());
        int countexpert=e.size();
        List<Object[]> m = documentService.findGloballim(keyword.toLowerCase());
         List<Object[]> meta = documentService.findGlobal(keyword.toLowerCase());
        int countdocs=meta.size();
        List<Object[]> d = documentService.findDiscussionlim(keyword.toLowerCase());
        List<Object[]> post= documentService.findDiscussion(keyword.toLowerCase());
        int countdiscussion=post.size();
        List<Object[]> tax = taxonomiService.searchlim(keyword.toLowerCase());
        List<Object[]> t = taxonomiService.search(keyword.toLowerCase());
        int countspecies=t.size();
        List<Object[]> occ = darwinCoreService.findOccurrenncelim(keyword.toLowerCase());
        List<Object[]> o = darwinCoreService.findOccurrennce(keyword.toLowerCase());
        int countoccs=o.size();
        ModelAndView model = new ModelAndView("results");
        model.addObject("expertres", expert);
        model.addObject("searchfield", keyword);
        model.addObject("result", tax);
        model.addObject("countdocs", countdocs);
        model.addObject("resdocs", m);
        model.addObject("countspecies", countspecies);
        model.addObject("countocc", countoccs);
        model.addObject("occres", occ);
        model.addObject("countexpert", countexpert);
        model.addObject("countdiscussion", countdiscussion);
        model.addObject("discussionres", d);
        return model;
    }
}
