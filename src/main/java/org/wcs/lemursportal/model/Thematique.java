package org.wcs.lemursportal.model;

import java.io.Serializable;
import java.util.Date;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 *
 */
@Entity
@Table(name = "thematique")
public class Thematique implements Serializable {

    private static final long serialVersionUID = -7731302369156672050L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer id;

    @Column(name = "libelle", unique = true, nullable = false)
    private String libelle;

    @Column(name = "description", nullable = true)
    private String description;

    @Column(name = "date_creation", nullable = false)
    private Date creationDate;

    @Column(name = "date_modif", nullable = true)
    private Date editDate;

    @Column(name = "created_by")
    private Integer createdBy;

    @Column(name = "modified_by")
    private Integer modifiedBy;

    private Boolean deleted = false;

    @Column(name = "deleted_by", nullable = true)
    private Integer deletedBy;

    @Column(name = "deleted_date", nullable = true)
    private Date deletedDate;

    /**
     * @return the deleted
     */
    public Boolean getDeleted() {
        return deleted;
    }

    /**
     * @param deleted the deleted to set
     */
    public void setDeleted(Boolean deleted) {
        this.deleted = deleted;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLibelle() {
        return libelle;
    }

    public void setLibelle(String libelle) {
        this.libelle = libelle;
    }

    public Date getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(Date creationDate) {
        this.creationDate = creationDate;
    }

    public Date getEditDate() {
        return editDate;
    }

    public void setEditDate(Date editDate) {
        this.editDate = editDate;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
//	public List<Post> getPosts() {
//		return posts;
//	}
//	public void setPosts(List<Post> posts) {
//		this.posts = posts;
//	}

    @Override
    public boolean equals(Object o) {

        if (o == this) {
            return true;
        }
        if (!(o instanceof Thematique)) {
            return false;
        }

        Thematique thematique = (Thematique) o;
        return Objects.equals(id, thematique.id);

    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }

    /**
     * @return the deletedBy
     */
    public Integer getDeletedBy() {
        return deletedBy;
    }

    /**
     * @param deletedBy the deletedBy to set
     */
    public void setDeletedBy(Integer deletedBy) {
        this.deletedBy = deletedBy;
    }

    /**
     * @return the deletedDate
     */
    public Date getDeletedDate() {
        return deletedDate;
    }

    /**
     * @param deletedDate the deletedDate to set
     */
    public void setDeletedDate(Date deletedDate) {
        this.deletedDate = deletedDate;
    }

    public Integer getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(Integer createdBy) {
        this.createdBy = createdBy;
    }

    public Integer getModifiedBy() {
        return modifiedBy;
    }

    public void setModifiedBy(Integer modifiedBy) {
        this.modifiedBy = modifiedBy;
    }

}
