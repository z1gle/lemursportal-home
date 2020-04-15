package org.wcs.lemursportal.service;

import java.util.List;
import org.wcs.lemursportal.model.TaxonomiBase;

public interface TaxonomiService {

    TaxonomiBase findById(int id);

    void saveTaxonomiBase(TaxonomiBase taxonomiBase);

    TaxonomiBase findTaxonomiBase(int id);

    long getTaxonomiBaseCount();

    List<Object[]> getCountSpeciesGpByIUCN_Status();

    List<Object[]> getCountSpeciesGpByFamily();

    List<Object[]> getCountSpeciesGpByGenus();
    
    List<Object[]> getSpeciesByTopics();

    public List<Object[]> search(String keyword);
    
    public List<Object[]> searchlim(String keyword);
    
    void MAJIUCN_satus(String scientificname,String category);
}
