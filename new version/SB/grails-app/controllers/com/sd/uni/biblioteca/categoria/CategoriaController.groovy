package com.sd.uni.biblioteca.categoria

import com.sd.uni.biblioteca.beans.categoria.CategoriaB
import com.sd.uni.biblioteca.service.auth.AuthServiceImpl
import com.sd.uni.biblioteca.service.auth.IAuthService
import com.sd.uni.biblioteca.service.categoria.ICategoriaService
import com.sd.uni.biblioteca.service.categoria.CategoriaServiceImpl
//import com.sd.uni.biblioteca.service.usuario.IUsuarioService;
import org.springframework.security.access.annotation.Secured

class CategoriaController {
	
	static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
	
	//service
	def ICategoriaService categoriaService =new CategoriaServiceImpl()
	def IAuthService authService = new AuthServiceImpl()

	@Secured(['ROLE_SUPERUSER', 'ROLE_ADMIN'])
    def index() {
		redirect(action: "list", params: params)
	}
	
	@Secured(['ROLE_SUPERUSER', 'ROLE_ADMIN'])
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
		def categorias = null
		if(null != search && !"".equals(search)){
			categorias = categoriaService.find(search,10,page)
			next = categoriaService.find(search,10,page+1)
		}else{
			categorias = categoriaService.find(null,10,page)
			next = categoriaService.find(null,10,page+1)
		}
		[categoriaInstanceList: categorias, categoriaInstanceTotal: categorias.size(), page: page, next: next.size(),
		 text: text, user:authService.getUsername()]
	}
	
	@Secured(['ROLE_SUPERUSER', 'ROLE_ADMIN'])
	def create() {
		[categoriaInstance: new CategoriaB(params)]
	}
	
	@Secured(['ROLE_SUPERUSER', 'ROLE_ADMIN'])
	def save() {
		def newCategoria = new CategoriaB(params)
		
		def categoriaInstance = categoriaService.save(newCategoria)
		
		if (!categoriaInstance.getId()) {
			render(view: "create", model: [categoriaInstance: categoriaInstance])
			return
		}

		flash.message = message(code: 'default.created.message', args: [
			message(code: 'categoria.label', default: 'Categoria'),
			categoriaInstance.getId()
		])
		redirect(action: "list")
	}
	
	@Secured(['ROLE_SUPERUSER', 'ROLE_ADMIN'])
	def showResult(Integer max) {
		def text = params.text
		categoriaService=new CategoriaServiceImpl()
		def categorias = categoriaService.getAll()
		if(null != text && !"".equals(text)){
			categorias = categoriaService.find(text)
			
		}else{
			categorias = categoriaService.getAll()
		}
		
		render (template:"showResult", model:[categoriaInstanceList: categorias, categoriaInstanceTotal:categorias.size()])
	}
	
	@Secured(['ROLE_SUPERUSER', 'ROLE_ADMIN'])
	def show(Long id) {
		def categoriaInstance = categoriaService.getById(id.intValue())
		if (!categoriaInstance) {
			flash.message = message(code: 'default.not.found.message', args: [
				message(code: 'categoria.label', default: 'Categoria'),
				id
			])
			redirect(action: "list")
			return
		}

		[categoriaInstance: categoriaInstance]
	}
	
	@Secured(['ROLE_SUPERUSER', 'ROLE_ADMIN'])
	def edit(Long id) {
		def categoriaInstance = categoriaService.getById(id.intValue())
		if (!categoriaInstance) {
			flash.message = message(code: 'default.not.found.message', args: [
				message(code: 'categoria.label', default: 'Categoria'),
				id
			])
			redirect(action: "list")
			return
		}

		[categoriaInstance: categoriaInstance]
	}
	
	@Secured(['ROLE_SUPERUSER', 'ROLE_ADMIN'])
	def update(Long id) {
		def categoriaInstance = categoriaService.getById(id.intValue())
		categoriaInstance.setDescripcion(params.get("descripcion"))
		
		categoriaService.save(categoriaInstance)
		
		
		redirect(action: "list")
	}

	
}
	
	
		
