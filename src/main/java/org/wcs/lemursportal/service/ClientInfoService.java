package org.wcs.lemursportal.service;

import org.wcs.lemursportal.model.ClientInfo;

public interface ClientInfoService {

	ClientInfo findById(long id);
	
	void saveClientInfo(ClientInfo clientInfo);
	
	ClientInfo findClientInfoById(long id);
	
	long getClientInfoCount();
	

}
