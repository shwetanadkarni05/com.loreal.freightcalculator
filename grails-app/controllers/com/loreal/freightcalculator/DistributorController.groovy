package com.loreal.freightcalculator

import com.loreal.DataExcelImporter

class DistributorController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

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
		println params.fileUpload
		if(params.fileUpload){
			if(params.fileUpload instanceof org.springframework.web.multipart.commons.CommonsMultipartFile){
				//new FileOutputStream('d:/submitted_file').leftShift( params.fileUpload.getInputStream() );
				//params.cfile.transferTo(new File('D:/submitted_file'));
				DataExcelImporter importer = new DataExcelImporter(params.fileUpload.originalFilename);
				def booksMapList = importer.getCFAs();
		   
				booksMapList.each { Map cfaParams ->
					println cfaParams
				}
		   
				  // new Book(importer.getOneMoreBookParams()).save()
				   
			}else{
				log.error("wrong attachment type [${fileUpload.getClass()}]");
			}
		}
		
		render(view: "importDistributorData")
	}
}
