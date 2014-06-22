package com.loreal.freightcalculator

import com.loreal.FreightExcelImporter
import com.loreal.freightcalculator.Distributor
import com.loreal.freightcalculator.User

class FreightTransactionController {

	static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

	def beforeInterceptor = [action:this.&checkUser,except:['index','list','show']]

	def checkUser={
		if(!session.user) {
			// i.e. user not logged in
			redirect(controller:'user',action:'login')
			return false
			}

	}
	def index = {
		redirect(action: "list", params: params)
	}

	def displayCalculateFreight={
		def signedInUser = session.user
		def cfaCode = signedInUser.id
		def distList = Distributor.findAllWhere(cfa:signedInUser)
		def freightList = []
		distList.each {dist -> 
			freightList += FreightTransaction.findAllWhere(distributor:dist,actualCases:null,totalAmount:null)
		}
		def freightTransactionInstanceTotal = freightList.size()
		render(view: "list", model: [distList:distList,freightTransactionInstanceList:freightList,freightTransactionInstanceTotal:freightTransactionInstanceTotal])
		
		
	}
	
	def getFreight={
		
	}
	
	def importInvoiceData={
		render(view: "importInvoiceData")
	}
	
	def excelFreightImport={
		def custCode, cfaCode, dist
		def newCfa
		println "++++++++++++    "+(params.fileUpload)
		if(params.fileUpload){
			if(params.fileUpload instanceof org.springframework.web.multipart.commons.CommonsMultipartFile){
//				println "Entered if loop"
				FreightExcelImporter importer = new FreightExcelImporter(params.fileUpload.originalFilename);
//				println "Second line in if loop"
				def freightMapList = importer.getFreights();
				
				println "@@@@@@@@@@@@@@   "+freightMapList.size()
				
				freightMapList.each{Map freightMap ->
					
//				println "*****************************************************"
//				println freightMap
//				println "*****************************************************"
//				
				//Retrieve Distributor
					custCode = freightMap.get('customercode')
					custCode = custCode.intValue()
					dist = Distributor.findWhere(customerCode:custCode)
					if(dist){
						
						//[plant:1410.0, division:10.0, customercode:1001395.0, customername:RELIANCE RETAIL LTD. - AHMEDABAD, customercity:AHMEDABAD, 
						//orderunitstotal:720.0, invoiceno:5.1057502E8, billingtype:F2, invoicedate:02.04.2014, 
						//invunitstotal:708.0, invoicevalue:73004.23, noofcases:29.0, weightofinvoice:142968.0]
						def newFreight = new FreightTransaction()
						newFreight.plant = freightMap.get('plant').intValue()
						newFreight.division = freightMap.get('division').intValue()
						newFreight.distributor = dist
						newFreight.orderUnitsTotal = freightMap.get('orderunitstotal').intValue()
						newFreight.invoiceNo = freightMap.get('invoiceno').intValue()
						newFreight.billingType = freightMap.get('billingtype')
						def invDate = freightMap.get('invoicedate')						 
						Date date = Date.parse( 'dd.mm.yyyy', invDate )
						newFreight.invoiceDate = date
						newFreight.invUnitsTotal = freightMap.get('invunitstotal').intValue()
						newFreight.invoiceValue = freightMap.get('invoicevalue')
						newFreight.invoiceNoOfCases = freightMap.get('noofcases').intValue()
						newFreight.weightOfInvoice = freightMap.get('weightofinvoice')
						
						newFreight.freightModel = dist.freightStructure
						newFreight.weightInKgs = 0.0 	// TODO
						newFreight.costPerCase = dist.costPerCase
						newFreight.costPerKg = dist.costPerKg
						newFreight.grLrCharges = dist.grlrCharges
						newFreight.handlingCharges = dist.handlingCharges
						newFreight.loadingUnloadingCharges = dist.loadingUnloadingCharges
						newFreight.fuelCharges = dist.fuelCharges
						newFreight.deliveryCharges = dist.deliveryCharges
						newFreight.actualCases = null
						newFreight.totalAmount = null 
						
						if( !newFreight.validate() ) {
							println("********   newFreight  validate*************")
							newFreight.errors.each {
								 println it
							}
							println("*********************")
						 }
						
						if(newFreight.save(flush: true)){
							//println "Saved successfully DIST - "+newDist.customerCode
						}
						else{
							println "Unsuccessful in saving DIST "+newFreight.invoiceNo
						}
						
						
					}else{
					}
						
				}
			}else{
				log.error("wrong attachment type [${fileUpload.getClass()}]");
			}
		}
		
		render(view: "importInvoiceData")
	}

	def list = {
		params.max = Math.min(params.max ? params.int('max') : 10, 100)
		freightList = FreightTransaction.list(params)
		freightCount = FreightTransaction.count()
		[freightTransactionInstanceList: freightList, freightTransactionInstanceTotal: freightCount]
	}

	def create = {
		def freightTransactionInstance = new FreightTransaction()
		freightTransactionInstance.properties = params
		return [freightTransactionInstance: freightTransactionInstance]
	}

	def save = {
		def freightTransactionInstance = new FreightTransaction(params)
		if (freightTransactionInstance.save(flush: true)) {
			flash.message = "${message(code: 'default.created.message', args: [message(code: 'freightTransaction.label', default: 'FreightTransaction'), freightTransactionInstance.id])}"
			redirect(action: "show", id: freightTransactionInstance.id)
		}
		else {
			render(view: "create", model: [freightTransactionInstance: freightTransactionInstance])
		}
	}

	def show = {
		def freightTransactionInstance = FreightTransaction.get(params.id)
		if (!freightTransactionInstance) {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'freightTransaction.label', default: 'FreightTransaction'), params.id])}"
			redirect(action: "list")
		}
		else {
			[freightTransactionInstance: freightTransactionInstance]
		}
	}

	def edit = {
		def freightTransactionInstance = FreightTransaction.get(params.id)
		if (!freightTransactionInstance) {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'freightTransaction.label', default: 'FreightTransaction'), params.id])}"
			redirect(action: "list")
		}
		else {
			return [freightTransactionInstance: freightTransactionInstance]
		}
	}

	def update = {
		def freightTransactionInstance = FreightTransaction.get(params.id)
		if (freightTransactionInstance) {
			if (params.version) {
				def version = params.version.toLong()
				if (freightTransactionInstance.version > version) {
					
					freightTransactionInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'freightTransaction.label', default: 'FreightTransaction')] as Object[], "Another user has updated this FreightTransaction while you were editing")
					render(view: "edit", model: [freightTransactionInstance: freightTransactionInstance])
					return
				}
			}
			freightTransactionInstance.properties = params
			if (!freightTransactionInstance.hasErrors() && freightTransactionInstance.save(flush: true)) {
				flash.message = "${message(code: 'default.updated.message', args: [message(code: 'freightTransaction.label', default: 'FreightTransaction'), freightTransactionInstance.id])}"
				redirect(action: "show", id: freightTransactionInstance.id)
			}
			else {
				render(view: "edit", model: [freightTransactionInstance: freightTransactionInstance])
			}
		}
		else {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'freightTransaction.label', default: 'FreightTransaction'), params.id])}"
			redirect(action: "list")
		}
	}

	def delete = {
		def freightTransactionInstance = FreightTransaction.get(params.id)
		if (freightTransactionInstance) {
			try {
				freightTransactionInstance.delete(flush: true)
				flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'freightTransaction.label', default: 'FreightTransaction'), params.id])}"
				redirect(action: "list")
			}
			catch (org.springframework.dao.DataIntegrityViolationException e) {
				flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'freightTransaction.label', default: 'FreightTransaction'), params.id])}"
				redirect(action: "show", id: params.id)
			}
		}
		else {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'freightTransaction.label', default: 'FreightTransaction'), params.id])}"
			redirect(action: "list")
		}
	}
}