package com.loreal.freightcalculator

import com.loreal.DataExcelImporter
import com.loreal.freightcalculator.User

class DistributorController {

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

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [distributorInstanceList: Distributor.findAllWhere(isDeleted: false), distributorInstanceTotal: Distributor.countByIsDeleted(false)]
    }

    //def create = {
        //def distributorInstance = new Distributor()
        //distributorInstance.properties = params
        //return [distributorInstance: distributorInstance]
    //}
	
	def addNewConditions = {
		def signedInUser = session.user
		def distList,cfaList 
		def region
		if(signedInUser.userRole=='RLM'){
			region = signedInUser.userRegion
			cfaList = User.findAllWhere(userRegion:region)
			distList=[]
			cfaList.each {cfa ->
				distList += (Distributor.findAllWhere(cfa:cfa))
			}
		}
		[signedInUser:signedInUser,distList:distList,cfaList:cfaList]
	}
	
	def saveNewCondition = {
		DistributorConditions dc = new DistributorConditions()
		def distributorSelected = params.distributor
		dc.distributor = Distributor.get(distributorSelected)
		dc.billingType = params.billingType
		dc.minumumNumberOfCases = Integer.parseInt(params.minumumNoOfCases) 
		dc.minumumWeighInKgs = Double.parseDouble(params.minumumWeightInKgs) 
		dc.fixedFreight = params.fixedFreight
		dc.deliveryCharges = params.deliveryCharges
		dc.lrCharges = params.lrCharges
		
		if (dc.save(flush: true)) {
			flash.message = "Distributor Condition Saved Successfully"
			redirect(controller:"user",action: "menu")
		}
		else {
			flash.message = "Distributor Condition Not Saved. Please Re Enter Values"
			redirect(action: "addNewConditions")
		}
	}
	
	
	def addConditions = {
		def signedInUser = session.user
		def cfaDistributorMap = [:]
		def cfaSelected, rlmRegion, distSelected, cfaId
		def cfaList, distributorList
		if(signedInUser?.userRole=='RLM'){
			rlmRegion = signedInUser.userRegion
			cfaList = User.findAllWhere(userRegion: rlmRegion, userRole: "CFA")
			cfaSelected = cfaList[0]
			cfaList.each {cfa ->
				cfaId = cfa.id
				distributorList = Distributor.findAllWhere(cfa: cfa)//Distributor.findAll("from Distributor as d where d.cfa_id=:cfaId",[cfaId:cfa?.id])
				cfaDistributorMap.put((cfaId),distributorList)//${cfa.id} = distributorList
			}			
		}
		print "__________________________________________________"
		print cfaDistributorMap
		[cfaList:cfaList,cfaDistributorMap:cfaDistributorMap,cfaSelected:cfaSelected]
	}
	
	def listDistributorConditions = {
		def dist
		def conditionsList =[]
		def cfaSelected = params.cfa
		def distributorsSelected = params.distributor
		distributorsSelected.each { distId -> 
			dist = Distributor.get(distId)
			conditionsList.add(DistributorConditions.findAllWhere(distributor:dist))
		}
		//conditionsList = DistributorConditions.findAll("from DistributorConditions as dc where dc.distributor in (:distributors)",[distributors: distributorsSelected])
		[cfaSelected:cfaSelected,distributorsSelected:distributorsSelected,conditionsList:conditionsList,conditionInstanceTotal:conditionsList.size()]
	}
	
	def showDistributorConditions = {
		def conditionInstance = DistributorConditions.get(params.id)
        if (!conditionInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'distributorConditions.label', default: 'Condition'), params.id])}"
            redirect(action: "listDistributorConditions")
        }
        else {
            [conditionInstance: conditionInstance]
        }
	}
	
	def editConditions = { 
		def conditionInstance = DistributorConditions.get(params.id)
        if (!conditionInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'DistributorConditions.label', default: 'Distributor Conditions'), params.id])}"
            redirect(action: "addConditions")
        }
        else {
            return [conditionInstance: conditionInstance]
        }
	}
	
	def deleteConditions = {
		def conditionInstance = DistributorConditions.get(params.id)
		if (conditionInstance) {
			try {
				conditionInstance.delete(flush: true)
				flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'distributorConditions.label', default: 'Distributor Conditions'), params.id])}"
				redirect(action: "addConditions")
			}
			catch (org.springframework.dao.DataIntegrityViolationException e) {
				flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'distributorConditions.label', default: 'Distributor Conditions'), params.id])}"
				redirect(action: "showDistributorConditions", id: params.id)
			}
		}
		else {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'distributorConditions.label', default: 'Distributor Conditions'), params.id])}"
			redirect(action: "addConditions")
		}
	}

    def save = {
        def distributorInstance = new Distributor(params)
        if (distributorInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'distributor.label', default: 'Distributor'), distributorInstance.id])}"
            redirect(action: "show", id: distributorInstance.id)
        }
        else {
            render(view: "create", model: [distributorInstance: distributorInstance])
        }
    }

    def show = {
        def distributorInstance = Distributor.get(params.id)
        if (!distributorInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'distributor.label', default: 'Distributor'), params.id])}"
            redirect(action: "list")
        }
        else {
            [distributorInstance: distributorInstance]
        }
    }

    def edit = {
        def distributorInstance = Distributor.get(params.id)
        if (!distributorInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'distributor.label', default: 'Distributor'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [distributorInstance: distributorInstance]
        }
    }

    def update = {
        def distributorInstance = Distributor.get(params.id)
        if (distributorInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (distributorInstance.version > version) {
                    
                    distributorInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'distributor.label', default: 'Distributor')] as Object[], "Another user has updated this Distributor while you were editing")
                    render(view: "edit", model: [distributorInstance: distributorInstance])
                    return
                }
            }
			//Check if individual fields need to mentioned here
            distributorInstance.properties = params
            if (!distributorInstance.hasErrors() && distributorInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'distributor.label', default: 'Distributor'), distributorInstance.id])}"
                redirect(action: "show", id: distributorInstance.id)
            }
            else {
                render(view: "edit", model: [distributorInstance: distributorInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'distributor.label', default: 'Distributor'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def distributorInstance = Distributor.get(params.id)
        if (distributorInstance) {
            try {
				distributorInstance.isDeleted = true
                distributorInstance.save(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'distributor.label', default: 'Distributor'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'distributor.label', default: 'Distributor'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'distributor.label', default: 'Distributor'), params.id])}"
            redirect(action: "list")
        }
    }
	
	
	
	def importDistributorData = {
		render(view: "importDistributorData")
	}
	
	def excelImport = {
		def custCode, cfaCode
		def newCfa
		if(params.fileUpload){
			if(params.fileUpload instanceof org.springframework.web.multipart.commons.CommonsMultipartFile){
				//new FileOutputStream('d:/submitted_file').leftShift( params.fileUpload.getInputStream() );
				//params.cfile.transferTo(new File('D:/submitted_file'));
				DataExcelImporter importer = new DataExcelImporter(params.fileUpload.originalFilename);
				def cfasMapList = importer.getCFAs();
		   
				
				cfasMapList.each { Map cfaParams ->
					//println cfaParams
					custCode = cfaParams.get('customercode')
					
					//custCode = Integer.toString(custCode)
					if(custCode!='null'){
						custCode = custCode.intValue()
						if(Distributor.findAllWhere(customerCode:custCode)){
							//println "Dist with id "+custCode+" exists"
						}
						else{
							cfaCode = (cfaParams.get('cfacode')).intValue()
							cfaCode = Integer.toString(cfaCode)
							if(User.findAllWhere(userCode:cfaCode)){
								//println "CFA with id "+cfaCode+" exists"
								newCfa = User.findWhere(userCode:cfaCode)
							}
							else{
								newCfa = new User()
								newCfa.userCode = cfaCode
								newCfa.userFullName = "CFA-"+cfaCode
								newCfa.userRole = "CFA"
								newCfa.userLocation = cfaParams.get('cfalocation')
								newCfa.userRegion = cfaParams.get('cfaregion')
								newCfa.userName = "cfa_first_1"
								newCfa.userPassword = "cfa_first_1"
								
								if( !newCfa.validate() ) {
									println("@@@@@@@@@@@@@@@@@@@@@@@@@")
									newCfa.errors.each {
										 println it
									}
									println("@@@@@@@@@@@@@@@@@@@@@@@@@")
									
								 }
								
								if (newCfa.save(flush: true)) {
									//println "Saved successfully CFA - "+newCfa.userCode								
								}
								else {
									println "Unsuccessful in saving CFA "+newCfa.userCode									
								}								
							}
							
							def newDist = new Distributor()
							newDist.customerCode = custCode
							newDist.customerName = cfaParams.get('customername')
							newDist.customerCity = cfaParams.get('customercity')
							newDist.divisionCode = cfaParams.get('divisioncode')
							newDist.freightStructure = cfaParams.get('freightstructure')
							newDist.costPerInvoice = cfaParams.get('costperinvoicelr')
							newDist.costPerKg = cfaParams.get('costperkg')
							newDist.costPerCase = cfaParams.get('costpercase')
							newDist.grlrCharges = cfaParams.get('grlrcharges')
							newDist.handlingCharges = cfaParams.get('handlingcharges')
							newDist.deliveryCharges = cfaParams.get('deliverycharges')
							newDist.loadingUnloadingCharges = cfaParams.get('loadingunloadingcharges')
							newDist.fuelCharges = cfaParams.get('fuelsurcharges')
							newDist.cfa = newCfa
							newDist.isDeleted = false
							
							if( !newDist.validate() ) {
								println("*********************")
								newDist.errors.each {
									 println it
								}
								println("*********************")
							 }
							
							if(newDist.save(flush: true)){
								//println "Saved successfully DIST - "+newDist.customerCode
							}
							else{
								println "Unsuccessful in saving DIST "+newDist.customerCode
							}
						}
					}
				}
				
				
				
				/*
				 * 
				 * [cfacode:1520.0, cfaregion:South, cfalocation:Chennai, divisioncode:10.0, custom
ercode:1002624.0, customername:SRI VASANTHI AGENCY, customercity:CUDDALORE, frei
ghtstructure:Per Kg, costperinvoicelr:0.0, costperkg:5.7, costpercase:0.0, grlrc
harges:160.0, handlingcharges:0.0, deliverycharges:0.0, loadingunloadingcharges:
7.0, fuelsurcharges:0.0]
				 */
		   
				  // new Book(importer.getOneMoreBookParams()).save()
				   
			}else{
				log.error("wrong attachment type [${fileUpload.getClass()}]");
			}
		}
		
		render(view: "importDistributorData")
	}
}
