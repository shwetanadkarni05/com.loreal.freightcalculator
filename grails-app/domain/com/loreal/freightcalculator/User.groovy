package com.loreal.freightcalculator

class User {
	String userCode
	String userFullName
	String userRole
	String userLocation
	String userRegion
	String userName
	String userPassword
	Date dateCreated // Predefined names by Grails will be filled automatically
	Date lastUpdated // Predefined names by Grails will be filled automatically

	static constraints = {
		userCode (nullable:false,unique:true)
		userFullName (blank:false, nullable:false, matches:"[a-zA-Z0-9- ]+")
		userRole (blank:false, nullable:false,inList:["MANAGEMENT","CFA","RLM"])
		userLocation (blank:false, nullable:false)
		userRegion (blank:false, nullable:false,inList:["North","South","West","East","India"])
		userName (blank:false, nullable:false,matches:"[a-zA-Z1-9_-]+",minSize:8)
		userPassword (blank:false, nullable:false,minSize:8,password:true)
	}
	
	String toString(){
		return userFullName;
	}
}
				
