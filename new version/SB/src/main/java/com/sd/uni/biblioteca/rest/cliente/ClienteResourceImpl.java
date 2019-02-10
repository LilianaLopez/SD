package com.sd.uni.biblioteca.rest.cliente;

import com.sd.uni.biblioteca.dto.cliente.ClienteDto;
import com.sd.uni.biblioteca.dto.cliente.ClienteResult;
import com.sd.uni.biblioteca.rest.base.BaseResourceImpl;

import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Repository;

@Repository("clienteResource")
public class ClienteResourceImpl extends BaseResourceImpl<ClienteDto> implements
		IClienteResource {

	public ClienteResourceImpl() {
		super(ClienteDto.class, "/cliente");
	}

	@Override
	//@CacheEvict(value = CACHE_REGION, key = "'clientes'")
	//@CachePut(value = CACHE_REGION, key = "'cliente_' + #cliente.id", condition = "#cliente.id!=null")
	public ClienteDto save(ClienteDto cliente) {
		ClienteDto nuevoDto = super.save(cliente);
		/*if (null == cliente.getId()) {
			getCacheManager().getCache(CACHE_REGION).put(
					"cliente_" + nuevoDto.getId(), nuevoDto);
		}*/
		return nuevoDto;
	}

	@Override
	//@Cacheable(value = CACHE_REGION, key = "'cliente_' + #id")
	public ClienteDto getById(Integer id) {
		return super.getById(id);
	}

	@Override
	//@Cacheable(value = CACHE_REGION, key = "'clientes'")
	public ClienteResult getAll() {
		return getWebResource().get(ClienteResult.class);
		
	}


}
