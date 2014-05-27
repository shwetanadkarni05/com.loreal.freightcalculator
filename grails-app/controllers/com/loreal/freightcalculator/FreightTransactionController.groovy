package com.loreal.freightcalculator

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
	
	def calculateFreight={
		
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
