package org.wcs.lemursportal.model;

/**
 * Enum�ration de la liste des roles utilis�s par l'application.
 * Cette �num�ration doit refleter le contenu de l'entity (table) {@link UserType}
 * 
 * @author
 *
 */
public enum UserRole {
	ADMINISTRATEUR(10001, "ROLE_ADMIN"), 
	MODERATEUR(1001, "ROLE_MODERATEUR"), 
	EXPERT(101, "ROLE_EXPERT"), 
	SIMPLE_USER(10, "ROLE_USER");
	
	private int id;
	private String role;
	private UserType userType;
	
	UserRole(int id, String role){
		this.id = id;
		this.role = role;
		userType = new UserType();
		userType.setId(id);
		userType.setLibelle(role);
	}
	
	public int getId(){
		return id;
	}
	
	public String getRole(){
		return role;
	}
	
	public static UserRole toEnum(String role){
		for(UserRole e : values()){
			if(e.getRole().equalsIgnoreCase(role)){
				return e;
			}
		}
		return null;
	}
	
	public static UserRole toEnum(int id){
		for(UserRole e : values()){
			if(e.id == id){
				return e;
			}
		}
		return null;
	}

	public UserType getUserType() {
		return userType;
	}
}
