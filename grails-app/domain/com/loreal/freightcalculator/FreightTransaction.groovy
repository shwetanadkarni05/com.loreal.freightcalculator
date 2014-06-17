package com.loreal.freightcalculator

class FreightTransaction {

	Integer plant
	Integer division
	Integer orderUnitsTotal
	//Integer orderNo - no order number 	
	Integer invoiceNo	
	String billingType	
	Date invoiceDate	
	Integer invUnitsTotal	
	Double invoiceValue	
	Integer invoiceNoOfCases	
	Double weightOfInvoice
	
	String freightModel	//D
	Double weightInKgs  //-- from where ?? -- not populated
	Double costPerKg	//D
	Double costPerCase	//D
	Double grLrCharges	//D
	Double handlingCharges //D
	Double loadingUnloadingCharges // D
	Double deliveryCharges //D
	Double fuelCharges //D
	
	Integer actualCases	// entered by cfa
	Double totalAmount //Calculate
	
	static belongsTo = [ distributor: Distributor ]

    static constraints = {
		actualCases (blank:true, nullable:true)
		totalAmount (blank:true, nullable:true)
    }
}
