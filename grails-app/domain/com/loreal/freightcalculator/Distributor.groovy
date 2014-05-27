package com.loreal.freightcalculator

class Distributor {
	Integer customerCode
	String customerName
	String customerCity
	String freightStructure
	Double rate
	Double grlrCharges
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
    }
	
	static belongsTo = [ cfa: User ]
}
