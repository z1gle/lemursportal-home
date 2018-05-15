package org.wcs.lemursportal.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.wcs.lemursportal.model.ClientInfo;
import org.wcs.lemursportal.repository.ClientInfoRepository;

@Service("clientInfoService")
@Transactional
public class ClientInfoServiceImpl implements ClientInfoService {

	@Autowired //@Resource
	private ClientInfoRepository dao;
//	@PersistenceContext(unitName="lemursportalPUnit")
//	protected EntityManager em;
	
	public ClientInfo findById(long id) {
		return dao.findOne(id);
	}

	@Override
    @Transactional
    public void saveClientInfo(ClientInfo clientInfo) {
		dao.save(clientInfo);
	}

	@Override
    @Transactional
    public long getClientInfoCount() {
		return dao.getCount();
	}

	public ClientInfo findClientInfoById(long id) {
		return dao.findOne(id);
	}

}
