/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.wcs.lemursportal.model;

import java.util.Date;
import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author WCS
 */
@Entity
@Table(name = "actualite")
public class Actualite implements Serializable {

    private static final long serialVersionUID = 74458L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id_actu")
    private Long idActu;
    
    @Column(name = "id_user")
    private Integer idUser;

    @Column(name = "titre_actu")
    private String titreActu;

    @Column(name = "commentaire_actu")
    private String commentaireActu;
    
    @Column(name = "url_photo")
    private String urlPhoto;
    
    @Column(name = "url_source_actu")
    private String urlSourceActu;

    @Column(name = "date_actu")
    private Date dateActu;

    public Long getIdActu() {
        return idActu;
    }

    public void setIdActu(Long idActu) {
        this.idActu = idActu;
    }

    public Integer getIdUser() {
        return idUser;
    }

    public void setIdUser(Integer idUser) {
        this.idUser = idUser;
    }

    public String getTitreActu() {
        return titreActu;
    }

    public void setTitreActu(String titreActu) {
        this.titreActu = titreActu;
    }

    public String getCommentaireActu() {
        return commentaireActu;
    }

    public void setCommentaireActu(String commentaireActu) {
        this.commentaireActu = commentaireActu;
    }

    public String getUrlPhoto() {
        return urlPhoto;
    }

    public void setUrlPhoto(String urlPhoto) {
        this.urlPhoto = urlPhoto;
    }

    public String getUrlSourceActu() {
        return urlSourceActu;
    }

    public void setUrlSourceActu(String urlSourceActu) {
        this.urlSourceActu = urlSourceActu;
    }

    public Date getDateActu() {
        return dateActu;
    }

    public void setDateActu(Date dateActu) {
        this.dateActu = dateActu;
    }

    
}
