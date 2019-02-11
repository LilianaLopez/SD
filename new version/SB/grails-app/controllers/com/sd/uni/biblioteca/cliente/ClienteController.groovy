package com.sd.uni.biblioteca.cliente

import com.sd.uni.biblioteca.beans.cliente.ClienteB
import com.sd.uni.biblioteca.service.auth.AuthServiceImpl
import com.sd.uni.biblioteca.service.auth.IAuthService
import com.sd.uni.biblioteca.service.cliente.ClienteServiceImpl
import com.sd.uni.biblioteca.service.cliente.IClienteService
import grails.plugin.springsecurity.annotation.Secured


import org.springframework.dao.DataIntegrityViolationException
import org.springframework.beans.factory.annotation.Autowired;


class ClienteController {
	
	def IClienteService clienteService = new ClienteServiceImpl()
	def IAuthService authService = new AuthServiceImpl()

	static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
	
		def index() {
			redirect(action: "list", params: params)
		}
		
		//@Secured(['ROLE_SUPERUSER', 'ROLE_ADMIN'])
	def list(Integer max) {
		def page = 0
		def next
		if(null != params.get("page")){
			page = Integer.parseInt(params.get("page"))
		}
		def text = params.text
		def search = ""
		if(null!=params.get("text") && !"".equals(params.get("text")) && !"null".equals(params.get("text"))){
			search += "text="+params.text+'&'
		}
		if(null!=params.get("sort") && !"".equals(params.get("sort")) && !"null".equals(params.get("sort"))){
			search +="sort="+params.get("sort")+'&'
		}
		if(null!=params.get("order") && !"".equals(params.get("order")) && !"null".equals(params.get("order"))){
			search +="order="+params.get("order")+'&'
		}
		def clientes = null
		if(null != search && !"".equals(search)){
			clientes = clienteService.find(search,10,page)
			next = clienteService.find(search,10,page+1)
		}else{
			clientes = clienteService.find(null,10,page)
			next = clienteService.find(null,10,page+1)
		}
		[clienteInstanceList: clientes, clienteInstanceTotal: clientes.size(), page: page, next: next.size(),
		 text: text, user:authService.getUsername()]
	}
		
		//@Secured(['ROLE_SUPERUSER', 'ROLE_ADMIN'])
		def create() {
			
		 [clienteInstance: new ClienteB(params)]
		}
		
		//@Secured(['ROLE_SUPERUSER', 'ROLE_ADMIN'])
		def save() {
			//def menuPopulars = menuPopularService.ordenarMenus(5)
			def clienteInstance = new ClienteB(params)
			
			def nuevaCliente = clienteService.save(clienteInstance)
			if (!nuevaCliente?.getId()) {
				//render(view: "create", model: [clienteInstance: clienteInstance, menuPopularInstanceList: menuPopulars])
				return
			}
	
			flash.message = message(code: 'default.created.message', args: [
				message(code: 'Cliente', default: 'Cliente'),
				nuevaCliente.getNombre(),
				nuevaCliente.getApellido()
			])
			redirect(action: "show", id: nuevaCliente.getId())
		}
	
		//@Secured(['ROLE_SUPERUSER', 'ROLE_ADMIN'])
		def show(Long id) {
			//def menuPopulars = menuPopularService.ordenarMenus(5)
			def clienteInstance = clienteService.getById(id.intValue())
			if (!clienteInstance) {
				flash.message = message(code: 'default.not.found.message', args: [
					message(code: 'Cliente', default: 'Cliente'),
					id
				])
				redirect(action: "list")
				return
			}
	
			[clienteInstance: clienteInstance]
		}
	
		//@Secured(['ROLE_SUPERUSER', 'ROLE_ADMIN'])
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
		
		//@Secured(['ROLE_SUPERUSER', 'ROLE_ADMIN'])
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
	


