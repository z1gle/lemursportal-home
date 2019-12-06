package org.wcs.lemursportal.service;

import java.util.List;
import org.wcs.lemursportal.model.DarwinCore;

public interface DarwinCoreService {

    DarwinCore findById(int id);

    void saveDarwinCore(DarwinCore darwinCore);

    DarwinCore findDarwinCore(int id);

    long getDarwinCoreCount();

    List<DarwinCore> getOccperYear();
}
