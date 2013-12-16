package com.mh.password

/**
 * Password
 * A domain class describes the data object and it's mapping to the database
 * * @author Mohamed El Hafi
 * @since  16-12-2013
 *
 */
class Password {

	/* Default (injected) attributes of GORM */
//	Long	id
//	Long	version
	
	
/* Properies */
	
	String name
	String ip
	String url
	String password
	String description
	/* Automatic timestamping of GORM */
	Date	dateCreated
	Date	lastUpdated
	
//	static	belongsTo	= []	// tells GORM to cascade commands: e.g., delete this object if the "parent" is deleted.
//	static	hasOne		= []	// tells GORM to associate another domain object as an owner in a 1-1 mapping
//	static	hasMany		= []	// tells GORM to associate other domain objects for a 1-n or n-m mapping
//	static	mappedBy	= []	// specifies which property should be used in a mapping 
	
    static	mapping = {
    }
    
	static	constraints = {
		password blank: false , nullable: false
		name blank: false , nullable: false
		description size: 1..1000 , nullable: true
		url url: true, nullable: true
		ip nullable: true
		
    }
	
	/*
	 * Methods of the Domain Class
	 */
//	@Override	// Override toString for a nicer / more descriptive UI 
//	public String toString() {
//		return "${name}";
//	}
}
