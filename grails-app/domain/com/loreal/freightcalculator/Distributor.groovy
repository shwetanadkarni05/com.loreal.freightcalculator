package com.loreal.freightcalculator

class Distributor {
	Integer customerCode
	String customerName
	String customerCity
	String divisionCode
	String freightStructure
	Double rate
	Double grlrCharges
	Double handlingCharges
	Double deliveryCharges
	Double loadingUnloadingCharges
	Double fuelCharges
	Double docketCharges
	Double serviceTaxRate
	Double exciseDuty
	Double vat
	Double surcharge
	Double labourCharges
	Boolean isDeleted 
	
	static constraints = {
		freightStructure (blank:false, nullable:false,inList:["Per Trip","Per Kg","Per Case","Fixed Vehicle","Per Invoice"])
		divisionCode (blank:true, nullable:true)
		isDeleted (blank:true, nullable:true)
		handlingCharges (blank:true, nullable:true)
		
	
	}
	
	static belongsTo = [ cfa: User ]
}







