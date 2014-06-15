package com.loreal.freightcalculator

class DistributorConditions {
	String billingType
	Integer minumumNumberOfCases
	Double minumumWeighInKgs
	String fixedFreight
	String deliveryCharges
	String lrCharges	
	Date dateCreated // Predefined names by Grails will be filled automatically
	Date lastUpdated // Predefined names by Grails will be filled automatically

	static constraints = {
		userCode (nullable:false,unique:true)
		userFullName (blank:false, nullable:false, matches:"[a-zA-Z ]+")
		userRole (blank:false, nullable:false,inList:["MANAGEMENT","CFA","RLM"])
		userLocation (blank:false, nullable:false)
		userRegion (blank:false, nullable:false,inList:["North","South","West","East"])
		userName (blank:false, nullable:false,matches:"[a-zA-Z1-9_]+",minSize:8)
		userPassword (blank:false, nullable:false,minSize:8,password:true)
	}
	
	static belongsTo = [ distributor: Distributor ]
	
	
}
				
					
