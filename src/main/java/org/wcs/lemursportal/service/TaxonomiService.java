package org.wcs.lemursportal.service;

import org.wcs.lemursportal.model.TaxonomiBase;

public interface TaxonomiService {

	TaxonomiBase findById(int id);
	
	void saveTaxonomiBase(TaxonomiBase taxonomiBase);
	
	TaxonomiBase findTaxonomiBase(int id);
	
	long getTaxonomiBaseCount();
	

}
