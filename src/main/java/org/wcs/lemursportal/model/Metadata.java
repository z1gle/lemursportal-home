/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.wcs.lemursportal.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

/**
 *
 * @author OC-USER6
 */
@Entity
@Table(name = "metadata")
public class Metadata implements Serializable {

    private static final long serialVersionUID = -4363175251635937661L;
    private final static Logger logger = LogManager.getLogger(Metadata.class);
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private long ids;

    @Column(name = "bibliographic_resource")
    String bibliographic_resource;

    @Column(name = "contributor")
    int contributor;

    @Column(name = "coverage")
    String coverage;

    @Column(name = "creator")
    String creator;

    @Column(name = "date_publication")
    String date_publication;

    @Column(name = "description")
    String description;

    @Column(name = "file_name")
    String file_name;

    @Column(name = "format")
    String format;

    @Column(name = "id_document")
    int id_document;

    @Column(name = "id_thematique")
    int id_thematique;

    @Column(name = "id_utilisateur")
    int id_utilisateur;

    @Column(name = "identifier")
    String identifier;

    @Column(name = "language")
    String language;

    @Column(name = "publisher")
    String publisher;

    @Column(name = "relation")
    String relation;

    @Column(name = "rights")
    String rights;

    @Column(name = "source")
    String source;

    @Column(name = "subject")
    String subject;

    @Column(name = "title")
    String title;

    @Column(name = "type")
    String type;

    @Column(name = "url")
    String url;

    @Column(name = "year")
    String year;

    
    public Metadata() {
    }

    public Metadata(long ids, String bibliographic_resource, int contributor, String coverage, String creator, String date_publication, String description, String file_name, String format, int id_document, int id_thematique, int id_utilisateur, String identifier, String language, String publisher, String relation, String rights, String source, String subject, String title, String type, String url, String year) {
        this.ids = ids;
        this.bibliographic_resource = bibliographic_resource;
        this.contributor = contributor;
        this.coverage = coverage;
        this.creator = creator;
        this.date_publication = date_publication;
        this.description = description;
        this.file_name = file_name;
        this.format = format;
        this.id_document = id_document;
        this.id_thematique = id_thematique;
        this.id_utilisateur = id_utilisateur;
        this.identifier = identifier;
        this.language = language;
        this.publisher = publisher;
        this.relation = relation;
        this.rights = rights;
        this.source = source;
        this.subject = subject;
        this.title = title;
        this.type = type;
        this.url = url;
        this.year = year;
    }

    public long getId() {
        return ids;
    }

    public void setId(long ids) {
        this.ids = ids;
    }

    public String getBibliographic_resource() {
        return bibliographic_resource;
    }

    public void setBibliographic_resource(String bibliographic_resource) {
        this.bibliographic_resource = bibliographic_resource;
    }

    public int getContributor() {
        return contributor;
    }

    public void setContributor(int contributor) {
        this.contributor = contributor;
    }

    public String getCoverage() {
        return coverage;
    }

    public void setCoverage(String coverage) {
        this.coverage = coverage;
    }

    public String getCreator() {
        return creator;
    }

    public void setCreator(String creator) {
        this.creator = creator;
    }

    public String getDate_publication() {
        return date_publication;
    }

    public void setDate_publication(String date_publication) {
        this.date_publication = date_publication;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getFile_name() {
        return file_name;
    }

    public void setFile_name(String file_name) {
        this.file_name = file_name;
    }

    public String getFormat() {
        return format;
    }

    public void setFormat(String format) {
        this.format = format;
    }

    public int getId_document() {
        return id_document;
    }

    public void setId_document(int id_document) {
        this.id_document = id_document;
    }

    public int getId_thematique() {
        return id_thematique;
    }

    public void setId_thematique(int id_thematique) {
        this.id_thematique = id_thematique;
    }

    public int getId_utilisateur() {
        return id_utilisateur;
    }

    public void setId_utilisateur(int id_utilisateur) {
        this.id_utilisateur = id_utilisateur;
    }

    public String getIdentifier() {
        return identifier;
    }

    public void setIdentifier(String identifier) {
        this.identifier = identifier;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public String getRelation() {
        return relation;
    }

    public void setRelation(String relation) {
        this.relation = relation;
    }

    public String getRights() {
        return rights;
    }

    public void setRights(String rights) {
        this.rights = rights;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }
}
