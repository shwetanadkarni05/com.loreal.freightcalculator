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
		billingType (nullable:true,blank:true)
		minumumNumberOfCases (nullable:true,blank:true)
		minumumWeighInKgs (nullable:true,blank:true)
		fixedFreight (nullable:true,blank:true)
		deliveryCharges (nullable:true,blank:true)
		lrCharges (nullable:true,blank:true)
		
	}
	
	static belongsTo = [ distributor: Distributor ]
	
}
				
					
