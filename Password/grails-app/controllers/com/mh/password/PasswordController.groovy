package com.mh.password

import grails.plugins.springsecurity.Secured
import org.springframework.dao.DataIntegrityViolationException




/**
 * PasswordController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 *  @author Mohamed El Hafi
 *  @since  16-12-2013
 */

@Secured(['ROLE_ADMIN' , 'ROLE_USER'])
class PasswordController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [passwordInstanceList: Password.list(params), passwordInstanceTotal: Password.count()]
    }

    def create() {
        [passwordInstance: new Password(params)]
    }

    def save() {
        def passwordInstance = new Password(params)
        if (!passwordInstance.save(flush: true)) {
            render(view: "create", model: [passwordInstance: passwordInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'password.label', default: 'Password'), passwordInstance.id])
        redirect(action: "show", id: passwordInstance.id)
    }

    def show() {
        def passwordInstance = Password.get(params.id)
        if (!passwordInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'password.label', default: 'Password'), params.id])
            redirect(action: "list")
            return
        }

        [passwordInstance: passwordInstance]
    }

    def edit() {
        def passwordInstance = Password.get(params.id)
        if (!passwordInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'password.label', default: 'Password'), params.id])
            redirect(action: "list")
            return
        }

        [passwordInstance: passwordInstance]
    }

    def update() {
        def passwordInstance = Password.get(params.id)
        if (!passwordInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'password.label', default: 'Password'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (passwordInstance.version > version) {
                passwordInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'password.label', default: 'Password')] as Object[],
                          "Another user has updated this Password while you were editing")
                render(view: "edit", model: [passwordInstance: passwordInstance])
                return
            }
        }

        passwordInstance.properties = params

        if (!passwordInstance.save(flush: true)) {
            render(view: "edit", model: [passwordInstance: passwordInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'password.label', default: 'Password'), passwordInstance.id])
        redirect(action: "show", id: passwordInstance.id)
    }

    def delete() {
        def passwordInstance = Password.get(params.id)
        if (!passwordInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'password.label', default: 'Password'), params.id])
            redirect(action: "list")
            return
        }

        try {
            passwordInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'password.label', default: 'Password'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'password.label', default: 'Password'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
