package com.sd.uni.biblioteca.rest.cliente;

import com.sd.uni.biblioteca.dto.cliente.ClienteDto;
import com.sd.uni.biblioteca.dto.cliente.ClienteResult;
import com.sd.uni.biblioteca.rest.base.IBaseResource;

public interface IClienteResource extends IBaseResource<ClienteDto> {
	public ClienteResult getAll();
   
}
