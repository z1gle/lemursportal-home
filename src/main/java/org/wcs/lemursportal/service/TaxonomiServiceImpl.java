package org.wcs.lemursportal.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
//import org.springframework.transaction.annotation.Transactional;
import org.wcs.lemursportal.model.TaxonomiBase;
import org.wcs.lemursportal.repository.TaxonomiRepository;

@Service("taxonomiServiceImpl")
//@Transactional
public class TaxonomiServiceImpl implements TaxonomiService {

	@Autowired //@Resource
	private TaxonomiRepository dao;
//	@PersistenceContext(unitName="lemursportalPUnit")
//	protected EntityManager em;
	
	public TaxonomiBase findById(int id) {
		return dao.findOne(id);
	}

	@Override
//    @Transactional
    public void saveTaxonomiBase(TaxonomiBase taxonomiBase) {
		dao.save(taxonomiBase);
	}

	@Override
//    @Transactional
    public long getTaxonomiBaseCount() {
		return dao.getCount();
	}

	public TaxonomiBase findTaxonomiBase(int id) {
		return dao.findOne(id);
	}

}
