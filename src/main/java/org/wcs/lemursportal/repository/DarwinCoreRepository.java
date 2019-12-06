package org.wcs.lemursportal.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.wcs.lemursportal.model.DarwinCore;

/**
 * @author
 *
 */
@Repository
@Transactional
public interface DarwinCoreRepository extends
        JpaRepository<DarwinCore, Integer> {

    @Query("select count(*) from DarwinCore")
    long getCount();

    @Query("select dwcyear, count(iddwc),count(reviewed) as reviewed\n"
            + " from DarwinCore\n"
            + " where reviewed='t' and dwcyear is not null  and dwcyear is not null  and dwcyear not like '-' or\n"
            + " dwcyear is not null  and dwcyear not like '-' group by dwcyear order by dwcyear")
    public List<DarwinCore> getOccperYear();

}
