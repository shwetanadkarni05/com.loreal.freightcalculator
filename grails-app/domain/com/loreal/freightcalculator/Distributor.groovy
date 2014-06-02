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
	
	static constraints = {
		freightStructure (blank:false, nullable:false,inList:["Per Trip","Per Kg","Per Case","Fixed Vehicle","Per Invoice"])
	
	}
	
	static belongsTo = [ cfa: User ]
}







