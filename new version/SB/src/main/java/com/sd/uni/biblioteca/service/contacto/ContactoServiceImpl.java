package com.sd.uni.biblioteca.service.contacto;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sd.uni.biblioteca.dto.contacto.ContactoDto;
import com.sd.uni.biblioteca.dto.contacto.ContactoResult;
import com.sd.uni.biblioteca.service.base.BaseServiceImpl;
import com.sd.uni.biblioteca.beans.contacto.ContactoB;
import com.sd.uni.biblioteca.rest.contacto.ContactoResourceImpl;
import com.sd.uni.biblioteca.rest.contacto.IContactoResource;

@Service("contactoService")
public class ContactoServiceImpl extends BaseServiceImpl<ContactoB, ContactoDto> implements IContactoService{
	@Autowired
	private IContactoResource _contactoResource = new ContactoResourceImpl();
	
	public ContactoServiceImpl() {
		
	}
	@Override
	public ContactoB save(ContactoB bean) {
		final ContactoDto contacto = convertBeanToDto(bean);
		final ContactoDto dto = _contactoResource.save(contacto);
		final ContactoB contactoB = convertDtoToBean(dto);
		return contactoB;
	}

	@Override
	public List<ContactoB> getAll() {
		final ContactoResult result = _contactoResource.getAll();
		final List<ContactoDto> catList = null == result.getContactos() ? new ArrayList<ContactoDto>()
				: result.getContactos();
		final List<ContactoB> contactos = new ArrayList<ContactoB>();
		for (ContactoDto dto : catList) {
			final ContactoB catB = convertDtoToBean(dto);
			contactos.add(catB);
		}
		return contactos;
	}

	@Override
	public ContactoB getById(Integer id) {
		final ContactoDto dto = _contactoResource.getById(id);
		final ContactoB catB = convertDtoToBean(dto);

		return catB;
	}

	@Override
	protected ContactoB convertDtoToBean(ContactoDto dto) {
		final Map<String, String> params = new HashMap<String, String>();
		params.put("id", String.valueOf(dto.getId()));
		params.put("nombre", dto.getNombre());
		params.put("apellido", dto.getApellido());
		params.put("correo", dto.getCorreo());
		params.put("telefono", dto.getTelefono());
		params.put("mensaje", dto.getMensaje());
		final ContactoB contactoB = new ContactoB(params);
		return contactoB;
	}

	@Override
	protected ContactoDto convertBeanToDto(ContactoB bean) {
		final ContactoDto dto = new ContactoDto();
		dto.setId(bean.getId());
		dto.setNombre(bean.getNombre());
		dto.setApellido(bean.getApellido());
		dto.setCorreo(bean.getCorreo());
		dto.setTelefono(bean.getTelefono());
		dto.setMensaje(bean.getMensaje());
		return dto;
	}

}

