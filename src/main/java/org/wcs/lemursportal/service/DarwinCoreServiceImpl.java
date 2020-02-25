package org.wcs.lemursportal.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.wcs.lemursportal.model.DarwinCore;
import org.wcs.lemursportal.repository.DarwinCoreRepository;

@Service("darwinCoreServiceImpl")
@Transactional
public class DarwinCoreServiceImpl implements DarwinCoreService {

    @Autowired //@Resource
    private DarwinCoreRepository dao;

    public DarwinCore findById(int id) {
        return dao.findOne(id);
    }

    @Override
    @Transactional
    public void saveDarwinCore(DarwinCore darwinCore) {
        dao.save(darwinCore);
    }

    @Override
    @Transactional
    public long getDarwinCoreCount() {
        return dao.getCount();
    }

    public DarwinCore findDarwinCore(int id) {
        return dao.findOne(id);
    }

    @Override
    public List<DarwinCore> getOccperYear() {
        return dao.getOccperYear();
    }

    @Override
    public List<Object[]> findOccurrennce(String keyword) {
        return dao.findOccurrennce(keyword);
    }

    @Override
    public List<Object[]> findOccurrenncelim(String keyword) {
         return dao.findOccurrenncelim(keyword);
    }
}
