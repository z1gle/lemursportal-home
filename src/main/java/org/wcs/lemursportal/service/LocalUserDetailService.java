package org.wcs.lemursportal.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.web.authentication.WebAuthenticationDetails;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.wcs.lemursportal.model.UserType;
import org.wcs.lemursportal.model.Utilisateur;
import org.wcs.lemursportal.repository.UtilisateurRepository;

/**
 *
 * @author z
 *
 */
@Service("localUserDetailService")
public class LocalUserDetailService implements AuthenticationService {

    private static final Logger LOGGER = LoggerFactory.getLogger(LocalUserDetailService.class);

    private UtilisateurRepository userRepository;

    
    @Autowired
    public LocalUserDetailService(UtilisateurRepository repository) {
        this.userRepository = repository;
    }

    @Override
    @Transactional
    public UserDetails loadUserByUsername(final String userId) throws UsernameNotFoundException {
        Utilisateur user = userRepository.findByEmail(userId);

        List<SimpleGrantedAuthority> simpleGrantedAuthorities = buildSimpleGrantedAuthorities(user);

        return buildUserForAuthentication(user, simpleGrantedAuthorities);
    }

    private List<SimpleGrantedAuthority> buildSimpleGrantedAuthorities(final Utilisateur user) {
        List<SimpleGrantedAuthority> simpleGrantedAuthorities = new ArrayList<SimpleGrantedAuthority>();
        if (user.getRoles() != null) {
            for (UserType role : user.getRoles()) {
                simpleGrantedAuthorities.add(new SimpleGrantedAuthority(role.getLibelle()));
            }
        }
        return simpleGrantedAuthorities;
    }
    
    private User buildUserForAuthentication(Utilisateur user, List<SimpleGrantedAuthority> authorities) {
		return new User(user.getEmail(), user.getMotdepasse(), true, true, true, true, authorities);
	}
    
    @Autowired
    private AuthenticationManager authenticationManager;

    @Override
    public void autoLogin(String email, String password, HttpServletRequest request) {
        UserDetails userDetails = this.loadUserByUsername(email);
        UsernamePasswordAuthenticationToken usernamePasswordAuthenticationToken = new UsernamePasswordAuthenticationToken(userDetails, password, userDetails.getAuthorities());
        request.getSession();//créer une session si ce n'est pas déjà fait
        usernamePasswordAuthenticationToken.setDetails(new WebAuthenticationDetails(request));
        Authentication authenticatedUser = authenticationManager.authenticate(usernamePasswordAuthenticationToken);

        if (usernamePasswordAuthenticationToken.isAuthenticated()) {
            SecurityContextHolder.getContext().setAuthentication(authenticatedUser);
            LOGGER.debug(String.format("Auto login '%s' successfully!", email));
        } else {
            LOGGER.debug(String.format("Auto login '%s' failed!", email));
        }

    }

}

