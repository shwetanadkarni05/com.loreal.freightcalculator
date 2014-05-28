package com.loreal.freightcalculator

class FreightTransaction {
	Integer srNo	//Generate -- use Id 
	Integer orderNo	
	Integer invoiceNo	
	String billingType	
	Date invoiceDate	
	Integer invUnitsTotal	
	Integer invoiceValue	
	Integer invoiceNoOfCases	
	Double weightOfInvoice
	String freightModel	
	Double weightInKgs  //-- from where ?? -- not populated
	Double costPerKg
	Double costPerCase
	Double perKgOrCaseCost	//Load based on cfa and dist -- not used
	Double grLrCharges	//ditto as abv
	Double otherCharges // sum of all d ther charges  against a distributor ??
	Integer actualCases	// entered by cfa
	Double totalAmount //Calculate
	
	static belongsTo = [ distributor: Distributor ]

    static constraints = {
    }
}
