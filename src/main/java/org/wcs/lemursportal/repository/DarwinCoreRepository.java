package org.wcs.lemursportal.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
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

     @Query(value = "select distinct(d.dwcyear), count(d.iddwc)as tous,(SELECT count(v.iddwc)as reviewed\n"
            + " FROM vue_validation_darwin_core v\n"
            + " WHERE v.validationexpert=1 and v.dwcyear=d.dwcyear) AS reviewed\n"
            + "from vue_validation_darwin_core d where d.dwcyear not like '-' or d.dwcyear not like '-' group by d.dwcyear order by d.dwcyear", nativeQuery = true)
    public List<Object[]> getOccperYear();

     @Query(value = "Select distinct(d.scientificname),\n"
            + "(select count(ts.iddwc) from vue_validation_darwin_core ts where ts.scientificname=d.scientificname ) as tous,\n"
            + "(select count(r.iddwc) from vue_validation_darwin_core r where r.validationexpert=1 and r.scientificname=d.scientificname )as reviewed,\n"
            + "(select count(a.iddwc) from vue_validation_darwin_core a where a.validationexpert=-1 and a.scientificname=d.scientificname )as attente_validation,\n"
            + "(select count(q.iddwc) from vue_validation_darwin_core q where q.validationexpert=0 and q.scientificname=d.scientificname )as questionnable\n"
            + "from darwin_core d\n"
            + "where lower(d.scientificname) like '%' || :keyword || '%' and lower(d.scientificname) not like '-' group by d.scientificname order by d.scientificname limit 2", nativeQuery = true)
    public List<Object[]> findOccurrenncelim(@Param("keyword") String keyword);
    
    @Query(value = "Select distinct(d.scientificname),\n"
            + "(select count(ts.iddwc) from vue_validation_darwin_core ts where ts.scientificname=d.scientificname ) as tous,\n"
            + "(select count(r.iddwc) from vue_validation_darwin_core r where r.validationexpert=1 and r.scientificname=d.scientificname )as reviewed,\n"
            + "(select count(a.iddwc) from vue_validation_darwin_core a where a.validationexpert=-1 and a.scientificname=d.scientificname )as attente_validation,\n"
            + "(select count(q.iddwc) from vue_validation_darwin_core q where q.validationexpert=0 and q.scientificname=d.scientificname )as questionnable\n"
            + "from darwin_core d\n"
            + "where lower(d.scientificname) like '%' || :keyword || '%' and lower(d.scientificname) not like '-' group by d.scientificname order by d.scientificname ", nativeQuery = true)
    public List<Object[]> findOccurrennce(@Param("keyword") String keyword);
}
