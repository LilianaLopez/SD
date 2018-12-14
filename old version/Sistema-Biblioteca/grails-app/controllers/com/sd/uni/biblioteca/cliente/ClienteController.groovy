package com.sd.uni.biblioteca.cliente

import com.sd.uni.biblioteca.beans.cliente.ClienteB
import com.sd.uni.biblioteca.service.cliente.ClienteServiceImpl
import com.sd.uni.biblioteca.service.cliente.IClienteService
import grails.plugin.springsecurity.annotation.Secured


import org.springframework.dao.DataIntegrityViolationException
import org.springframework.beans.factory.annotation.Autowired;


class ClienteController {
	
	def IClienteService clienteService = new ClienteServiceImpl()
	

	static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
	
		def index() {
			redirect(action: "list", params: params)
		}
		
		@Secured(['ROLE_SUPERUSER', 'ROLE_ADMIN'])
		def list(Integer max) {
			def clientes = clienteService.getAll()
		//	def tom = clienteService.getTom()
			
			[clienteInstanceList: clientes, clienteInstanceTotal: clientes.size()]

		}
		
		@Secured(['ROLE_SUPERUSER', 'ROLE_ADMIN'])
		def create() {
			
		 [clienteInstance: new ClienteB(params)]
		}
		
		@Secured(['ROLE_SUPERUSER', 'ROLE_ADMIN'])
		def save() {
			//def menuPopulars = menuPopularService.ordenarMenus(5)
			def clienteInstance = new ClienteB(params)
			
			def nuevaCliente = clienteService.save(clienteInstance)
			if (!nuevaCliente?.getId()) {
				//render(view: "create", model: [clienteInstance: clienteInstance, menuPopularInstanceList: menuPopulars])
				return
			}
	
			flash.message = message(code: 'default.created.message', args: [
				message(code: 'cliente.label', default: 'Cliente'),
				nuevaCliente.getNombre(),
				nuevaCliente.getApellido()
			])
			redirect(action: "show", id: nuevaCliente.getId())
		}
	
		@Secured(['ROLE_SUPERUSER', 'ROLE_ADMIN'])
		def show(Long id) {
			//def menuPopulars = menuPopularService.ordenarMenus(5)
			def clienteInstance = clienteService.getById(id.intValue())
			if (!clienteInstance) {
				flash.message = message(code: 'default.not.found.message', args: [
					message(code: 'cliente.label', default: 'Cliente'),
					id
				])
				redirect(action: "list")
				return
			}
	
			[clienteInstance: clienteInstance]
		}
	
		@Secured(['ROLE_SUPERUSER', 'ROLE_ADMIN'])
		def edit(Long id) {
			
			def clienteInstance = clienteService.getById((Integer.parseInt(params.get("id"))))
			if (!clienteInstance) {
				flash.message = message(code: 'default.not.found.message', args: [
					message(code: 'cliente.label', default: 'Cliente'),
					id
				])
				redirect(action: "list")
				return
			}
	
			[clienteInstance: clienteInstance]
		}
		
		@Secured(['ROLE_SUPERUSER', 'ROLE_ADMIN'])
		def update(Long id) {
			def clienteInstance = clienteService.getById(Integer.parseInt(params.get("edit")))
			if (!clienteInstance) {
				flash.message = message(code: 'default.not.found.message', args: [
					message(code: 'cliente.label', default: 'Cliente'),
					id
				])
				redirect(action: "list")
				return
			}
			clienteInstance.setNombre(params.get("nombre"))
			clienteInstance.setApellido(params.get("apellido"))
			clienteInstance.setCorreo(params.get("correo"))
			clienteInstance.setDireccion(params.get("direccion"))
			clienteInstance.setCi(Integer.parseInt(params.get("ci")))
			clienteInstance.setTelefono(params.get("telefono"))
			clienteInstance.setRuc(params.get("ruc"))
			clienteInstance.setInvitacion(Boolean.valueOf(params.get("invitacion")))
			clienteService.save(clienteInstance)
			flash.message = message(code: 'default.updated.message', args: [
				message(code: 'cliente.label', default: 'Cliente'),
				clienteInstance.nombre,
				clienteInstance.apellido
			])
			redirect(action: "list")
		}
	
		
}
	


