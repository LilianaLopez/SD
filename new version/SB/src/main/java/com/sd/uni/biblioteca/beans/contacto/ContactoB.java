package com.sd.uni.biblioteca.beans.contacto;

import java.util.Map;

import org.apache.commons.lang.StringUtils;

import com.sd.uni.biblioteca.beans.base.BaseBean;

public class ContactoB extends BaseBean {
	private static final long serialVersionUID = 1L;
	private String _nombre;
	private String _apellido;
	private String _correo;
	private String _telefono;
	private String _mensaje;
	

	public ContactoB(Map<String, String> params) {
		super(params);
	}

	@Override
	protected void create(Map<String, String> params) {
		if (!StringUtils.isBlank(params.get("id"))) {
			setId(Integer.valueOf(params.get("id")));
		}
		setNombre(params.get("nombre"));
		setApellido(params.get("apellido"));
		setCorreo(params.get("correo"));
		setTelefono(params.get("telefono"));
		setMensaje(params.get("mensaje"));
		        
	}

	
	
	public String getNombre() {
		return _nombre;
	}
	
	public void setNombre(String nombre) {
		_nombre = nombre;
	}
	
	
	public String getApellido() {
		return _apellido;
	}
	
	public void setApellido(String apellido) {
		_apellido = apellido;
	}
	
	
	public String getCorreo() {
		return _correo;
	}
	
	public void setCorreo(String correo) {
		_correo = correo;
	}
	
	public String getTelefono() {
		return _telefono;
	}
	
	public void setTelefono(String telefono) {
		_telefono = telefono;
	}
	
	public String getMensaje() {
		return _mensaje;
	}
	
	public void setMensaje(String mensaje) {
		_mensaje = mensaje;
	}

	
}
