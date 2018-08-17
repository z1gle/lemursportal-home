package org.wcs.lemursportal.service;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.wcs.lemursportal.model.UserRole;
import org.wcs.lemursportal.model.UserType;
import org.wcs.lemursportal.model.Utilisateur;
import org.wcs.lemursportal.repository.UtilisateurRepository;

@Service("utilisateurServiceImpl")
@Transactional
public class UtilisateurServiceImpl implements UtilisateurService {

	@Autowired //@Resource
	private UtilisateurRepository dao;
	
	@PersistenceContext(unitName="lemursportalPUnit")
	protected EntityManager em;
	
	public Utilisateur findById(int id) {
		return dao.findOne(id);
	}

	@Override
    @Transactional
    public void saveUtilisateur(Utilisateur utilisateur) {
		dao.save(utilisateur);
	}

	@Override
    @Transactional
    public long getUtilisateurCount() {
		return dao.getCount();
	}

	public Utilisateur findUtilisateur(int id) {
		return dao.findOne(id);
	}

	@Override
	@Transactional(readOnly=true)
	public List<Utilisateur> getExpert(UserRole userRole) {
		TypedQuery<UserType> query = em.createQuery("Select t from  UserType t left join fetch t.users where t.id=:usertype order by random()", UserType.class);
		query.setParameter("usertype", userRole.getId());

		UserType type = query.getSingleResult();
		return new ArrayList<Utilisateur>(type.getUsers());
	}
	
	@Override
	public Utilisateur findByEmail(String email) {
		return dao.findByEmail(email);
	}

}
