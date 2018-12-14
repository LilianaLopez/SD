package com.sd.uni.biblioteca.rest.contacto;


import com.sd.uni.biblioteca.dto.contacto.ContactoDto;
import com.sd.uni.biblioteca.dto.contacto.ContactoResult;
import com.sd.uni.biblioteca.rest.base.BaseResourceImpl;

import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Repository;

@Repository("contactoResource")
public class ContactoResourceImpl extends BaseResourceImpl<ContactoDto> implements
		IContactoResource {

	public ContactoResourceImpl() {
		super(ContactoDto.class, "/contacto");
	}

	@Override
	public ContactoDto save(ContactoDto contacto) {
		ContactoDto newDto = super.save(contacto);
		
		return newDto;
	}

	@Override
	public ContactoDto getById(Integer id) {
		return super.getById(id);
	}

	@Override
	public ContactoResult getAll() {
		
		return getWebResource().get(ContactoResult.class);
		
	}


}
