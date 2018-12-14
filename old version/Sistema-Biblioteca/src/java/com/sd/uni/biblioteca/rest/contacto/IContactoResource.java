package com.sd.uni.biblioteca.rest.contacto;

import com.sd.uni.biblioteca.dto.contacto.ContactoDto;
import com.sd.uni.biblioteca.dto.contacto.ContactoResult;
import com.sd.uni.biblioteca.rest.base.IBaseResource;

public interface IContactoResource extends IBaseResource<ContactoDto> {
	public ContactoResult getAll();
   
}
