package org.wcs.lemursportal.service;

import org.wcs.lemursportal.model.DarwinCore;

public interface DarwinCoreService {

	DarwinCore findById(int id);
	
	void saveDarwinCore(DarwinCore darwinCore);
	
	DarwinCore findDarwinCore(int id);
	
	long getDarwinCoreCount();
	

}
