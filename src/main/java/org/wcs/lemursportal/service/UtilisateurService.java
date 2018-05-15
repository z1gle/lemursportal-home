package org.wcs.lemursportal.service;

import java.util.List;

import org.wcs.lemursportal.model.UserRole;
import org.wcs.lemursportal.model.Utilisateur;

public interface UtilisateurService {

	Utilisateur findById(int id);
	
	void saveUtilisateur(Utilisateur utilisateur);
	
	Utilisateur findUtilisateur(int id);
	
	long getUtilisateurCount();
	
	List<Utilisateur> getExpert(UserRole userRole);

}
