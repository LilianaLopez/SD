package com.sd.uni.biblioteca.contacto

import com.sd.uni.biblioteca.beans.contacto.ContactoB
import com.sd.uni.biblioteca.service.contacto.ContactoServiceImpl
import com.sd.uni.biblioteca.service.contacto.IContactoService


import org.springframework.dao.DataIntegrityViolationException
import org.springframework.security.access.annotation.Secured
import org.springframework.beans.factory.annotation.Autowired;


class ContactoController {
	
	def IContactoService contactoService = new ContactoServiceImpl()

	static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
	
	    @Secured(['ROLE_SUPERUSER', 'ROLE_ADMIN'])
		def index() {
			redirect(action: "list", params: params)
		}
		
		@Secured(['ROLE_SUPERUSER', 'ROLE_ADMIN'])
		def list(Integer max) {
			//def menuPopulars = menuPopularService.ordenarMenus(5)
			def contactos = contactoService.getAll()
			[contactoInstanceList: contactos, contactoInstanceTotal: contactos.size()]
		}
		
		@Secured(['ROLE_SUPERUSER', 'ROLE_ADMIN'])
		def create() {
			//def menuPopulars = menuPopularService.ordenarMenus(5)
			[contactoInstance: new ContactoB(params)]
		}
		
		@Secured(['ROLE_SUPERUSER', 'ROLE_ADMIN'])
		def save() {
			
			def contactoInstance = new ContactoB(params)
			def nuevaContacto = contactoService.save(contactoInstance)
			if (!nuevaContacto?.getId()) {
				render(view: "create")
				return
			}
	
			flash.message = message(code: 'default.valid.message', args: [
				message(code: 'contacto.label', default: 'Se ha enviado su mensaje!')])
			redirect(action: "create")
		}
	

		@Secured(['ROLE_SUPERUSER', 'ROLE_ADMIN'])
		def edit(Long id) {
			def contactoInstance = contactoService.getById((Integer.parseInt(params.get("id"))))
			if (!contactoInstance) {
				flash.message = message(code: 'default.not.found.message', args: [
					message(code: 'contacto.label', default: 'Contacto'),
					id
				])
				redirect(action: "list")
				return
			}
	
			[contactoInstance: contactoInstance]
		}
	
		@Secured(['ROLE_SUPERUSER', 'ROLE_ADMIN'])
		def update(Long id) {
			def contactoInstance = contactoService.getById(Integer.parseInt(params.get("edit")))
			if (!contactoInstance) {
				flash.message = message(code: 'default.not.found.message', args: [
					message(code: 'contacto.label', default: 'Contacto'),
					id
				])
				redirect(action: "list")
				return
			}
			contactoInstance.setNombre(params.get("nombre"))
			contactoInstance.setApellido(params.get("apellido"))
			contactoInstance.setCorreo(params.get("correo"))
			contactoInstance.setTelefono(params.get("telefono"))
			contactoInstance.setMensaje(params.get("mensaje"))
			contactoService.save(contactoInstance)
			flash.message = message(code: 'default.updated.message', args: [
				message(code: 'contacto.label', default: 'Contacto'),
				contactoInstance.nombre,
				contactoInstance.apellido,
				contactoInstance.mensaje
			])
			redirect(action: "list")
		}
	
		
}
	


