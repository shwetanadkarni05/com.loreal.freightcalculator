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
	Double perKgOrCaseCost	//Load based on cfa and dist
	Double grCharges	//ditto as abv
	Integer actualCases	// entered by cfa
	Double totalAmount //Calculate
	
	static belongsTo = [ distributor: Distributor ]

    static constraints = {
    }
}
