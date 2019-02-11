package com.sd.uni.biblioteca.usuario


import com.sd.uni.biblioteca.beans.user.UserB
import com.sd.uni.biblioteca.beans.role.RoleB
import com.sd.uni.biblioteca.service.role.*
import com.sd.uni.biblioteca.service.user.*


import grails.plugin.springsecurity.annotation.Secured
import org.springframework.dao.DataIntegrityViolationException

class UsuarioController {

	static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

	//service
	def IUserService usuarioService =new UserServiceImpl()
	def IRoleService rolService=new RoleServiceImpl()
	
	@Secured(['ROLE_SUPERUSER', 'ROLE_ADMIN'])
	def index() {
		def usuarios = usuarioService.getAll()

		[usuarioInstanceList: usuarios]

	}


	
	@Secured(['ROLE_SUPERUSER', 'ROLE_ADMIN'])
	def create() {
		[usuarioInstance: new UserB(params) , roleInstance:new RoleB(params),  rols:rolService.getAll()]
	}
	
	@Secured(['ROLE_SUPERUSER', 'ROLE_ADMIN'])
	def save() {
		def newUsuario = new UserB(params)
		def newRole = new RoleB (params)

		Set<RoleB> rolesIds = new HashSet<>()
		rolesIds.add(rolService.getById(Integer.valueOf(params.roleId)))

		newUsuario.setRoles(rolesIds)
		newUsuario.setType("Empleado")
		def usuarioInstance = usuarioService.save(newUsuario)
		
		if (!usuarioInstance.getId()) {
			render(view: "create", model: [usuarioInstance: usuarioInstance])
			return
		}


		redirect(action: "index")
	}
	
	
	
	
	
	@Secured(['ROLE_SUPERUSER', 'ROLE_ADMIN'])
	def show(Long id) {
		def usuarioInstance = usuarioService.getById(id.intValue())
		if (!usuarioInstance) {

			redirect(action: "index")
			return
		}

		[usuarioInstance: usuarioInstance]
	}

	@Secured(['ROLE_SUPERUSER', 'ROLE_ADMIN'])
	def edit(Long id) {
		def usuarioInstance = usuarioService.getById(id.intValue())
		if (!usuarioInstance) {

			redirect(action: "list")
			return
		}

		[usuarioInstance: usuarioInstance, rols:rolService.getAll()]
	}

	
	@Secured(['ROLE_SUPERUSER', 'ROLE_ADMIN'])
	def update(Long id) {
		def usuarioInstance = usuarioService.getById(id.intValue())
		//usuarioInstance.properties= params
		usuarioInstance.setName(params.get("name"))
		usuarioInstance.setPassword(params.get("password"))
		def rolId=params.get("roleId").toString().toInteger()
		usuarioInstance.setRole(rolService.getById(rolId))
		usuarioService.save(usuarioInstance)
		
		
		redirect(action: "list")
	}

	
}