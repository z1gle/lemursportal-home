package org.wcs.lemursportal.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.wcs.lemursportal.model.Utilisateur;

/**
 * @author
 *
 */
@Repository
@Transactional
public interface UtilisateurRepository extends
        JpaRepository<Utilisateur, Integer> {

    @Query("select count(*) from Utilisateur")
    long getCount();

    //@Query("select u from UserInfo as u where u.email=?1")
    Utilisateur findByEmail(String email);

    @Query(value = "select expert.id,expert.photo_profil,expert.nom,expert.prenoms,expert.titre from (select u.*,a.genre,a.famille,a.espece\n"
            + "from utilisateur u left join utilisateur_typeuser ut on u.id=ut.idutilisateur\n"
            + "left join typeuser t on ut.idtypeuser=t.id \n"
            + "left join assignationexpert a on u.id=a.idexpert\n"
            + "where t.id=101) as expert left join domaine_expertise d on d.iduser=expert.id\n"
            + "left join thematique th on th.id=d.idthematique \n"
            + "where lower(expert.genre) like '%' || :keyword || '%' or lower(expert.famille) like '%' || :keyword || '%' or lower(expert.espece) like '%' || :keyword || '%' \n"
            + "or lower(concat(expert.nom,' ',expert.prenoms)) like '%' || :keyword || '%' or lower(concat(expert.prenoms,' ',expert.nom)) like '%' || :keyword || '%' "
            + "or lower(expert.biographie) like '%' || :keyword || '%' or lower(expert.publication) like '%' || :keyword || '%' "
            + "group by expert.id,expert.photo_profil,expert.nom,expert.prenoms,expert.titre limit 2", nativeQuery = true)
    List<Object[]> findExpertlim(@Param("keyword") String keyword);

    @Query(value = "select expert.id,expert.photo_profil,expert.nom,expert.prenoms,expert.titre from (select u.*,a.genre,a.famille,a.espece\n"
            + "from utilisateur u left join utilisateur_typeuser ut on u.id=ut.idutilisateur\n"
            + "left join typeuser t on ut.idtypeuser=t.id \n"
            + "left join assignationexpert a on u.id=a.idexpert\n"
            + "where t.id=101) as expert left join domaine_expertise d on d.iduser=expert.id\n"
            + "left join thematique th on th.id=d.idthematique \n"
            + "where lower(expert.genre) like '%' || :keyword || '%' or lower(expert.famille) like '%' || :keyword || '%' or lower(expert.espece) like '%' || :keyword || '%' \n"
            + "or lower(concat(expert.nom,' ',expert.prenoms)) like '%' || :keyword || '%' or lower(concat(expert.prenoms,' ',expert.nom)) like '%' || :keyword || '%' "
            + "or lower(expert.biographie) like '%' || :keyword || '%' or lower(expert.publication) like '%' || :keyword || '%' "
            + "group by expert.id,expert.photo_profil,expert.nom,expert.prenoms,expert.titre", nativeQuery = true)
    List<Object[]> findExpert(@Param("keyword") String keyword);

}
