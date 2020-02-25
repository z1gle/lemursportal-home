package org.wcs.lemursportal.service;

import java.util.List;
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

    @Override
    public List<Object[]> getCountSpeciesGpByIUCN_Status() {
        return dao.getSpeciesByIUCNStatus();
    }

    @Override
    public List<Object[]> getCountSpeciesGpByFamily() {
        return dao.getSpeciesByFamily();
    }

    @Override
    public List<Object[]> getCountSpeciesGpByGenus() {
        return dao.getSpeciesByGenus();
    }

    @Override
    public List<Object[]> search(String keyword) {
        return dao.search(keyword);
    }

    @Override
    public List<Object[]> searchlim(String keyword) {
       return dao.searchlim(keyword);
    }
    @Override
    public void MAJIUCN_satus(String scientificname, String category) {
        dao.MAJIUCN_satus(scientificname, category);
    }
}
