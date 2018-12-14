package com.sd.uni.biblioteca.beans.cliente;

import java.util.Map;

import org.apache.commons.lang.StringUtils;

import com.sd.uni.biblioteca.beans.base.BaseBean;

public class ClienteB extends BaseBean {
	private static final long serialVersionUID = 1L;
	private String _nombre;
	private String _apellido;
	private String _correo;
	private String _direccion;
	private int _ci;
	private String _telefono;
	private String _ruc;
	private boolean _invitacion;
	

	public ClienteB(Map<String, String> params) {
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
		setDireccion(params.get("direccion"));
		if(null != params.get("ci")){ 
            setCi(Integer.parseInt(params.get("ci")));
        }
		setTelefono(params.get("telefono"));
		setRuc(params.get("ruc"));
		setInvitacion(Boolean.valueOf(params.get("invitacion")));
		
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
	
	public String getDireccion() {
		return _direccion;
	}
	
	public void setDireccion(String direccion) {
		_direccion = direccion;
	}
	
	public Integer getCi() {
		return _ci;
	}
	
	public void setCi(Integer ci) {
		_ci = ci;
	}
	
	public String getTelefono() {
		return _telefono;
	}
	
	public void setTelefono(String telefono) {
		_telefono = telefono;
	}
	
	public String getRuc() {
		return _ruc;
	}
	
	public void setRuc(String ruc) {
		_ruc = ruc;
	}
	
	
	public boolean getInvitacion() {
		return _invitacion;
	}
	
	public void setInvitacion(boolean invitacion) {
		_invitacion = invitacion;
	}

	
}

