package com.sd.uni.biblioteca.service.cliente;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sd.uni.biblioteca.dto.cliente.ClienteDto;
import com.sd.uni.biblioteca.dto.cliente.ClienteResult;
import com.sd.uni.biblioteca.service.base.BaseServiceImpl;
//import com.sd.uni.biblioteca.utils.TomcatConnectors;
import com.sd.uni.biblioteca.beans.cliente.ClienteB;
import com.sd.uni.biblioteca.rest.cliente.ClienteResourceImpl;
import com.sd.uni.biblioteca.rest.cliente.IClienteResource;

@Service("clienteService")
public class ClienteServiceImpl extends BaseServiceImpl<ClienteB, ClienteDto> implements IClienteService{
	@Autowired
	private IClienteResource _clienteResource = new ClienteResourceImpl();
	
	public ClienteServiceImpl() {
		
	}
	@Override
	public ClienteB save(ClienteB bean) {
		final ClienteDto cliente = convertBeanToDto(bean);
		final ClienteDto dto = _clienteResource.save(cliente);
		final ClienteB clienteB = convertDtoToBean(dto);
		return clienteB;
	} 

	@Override
	public List<ClienteB> getAll() {
		final ClienteResult result = _clienteResource.getAll();
		final List<ClienteDto> cliList = null == result.getClientes() ? new ArrayList<ClienteDto>()
				: result.getClientes();
		final List<ClienteB> clientes = new ArrayList<ClienteB>();
		for (ClienteDto dto : cliList) {
			final ClienteB cliB = convertDtoToBean(dto);
			clientes.add(cliB);
		}
		return clientes;
	}

	@Override
	public ClienteB getById(Integer id) {
		final ClienteDto dto = _clienteResource.getById(id);
		final ClienteB cliB = convertDtoToBean(dto);

		return cliB;
	}

	@Override
	protected ClienteB convertDtoToBean(ClienteDto dto) {
		final Map<String, String> params = new HashMap<String, String>();
		params.put("id", String.valueOf(dto.getId()));
		params.put("nombre", dto.getNombre());
		params.put("apellido", dto.getApellido());
		params.put("correo", dto.getCorreo());
		params.put("direccion", dto.getDireccion());
		params.put("ruc", dto.getRuc());
		params.put("ci", String.valueOf(dto.getCi()));
		params.put("telefono", dto.getTelefono());
		params.put("invitacion", String.valueOf(dto.getInvitacion()));

		final ClienteB clienteB = new ClienteB(params);
		//clienteB.setInvitacion(dto.getInvitacion());
		return clienteB;
	}

	@Override
	protected ClienteDto convertBeanToDto(ClienteB bean) {
		final ClienteDto dto = new ClienteDto();
		dto.setId(bean.getId());
		dto.setNombre(bean.getNombre());
		dto.setApellido(bean.getApellido());
		dto.setCorreo(bean.getCorreo());
		dto.setDireccion(bean.getDireccion());
		dto.setRuc(bean.getRuc());
		dto.setCi(bean.getCi());
		dto.setTelefono(bean.getTelefono());
		dto.setInvitacion(bean.getInvitacion());
		
		//TomcatConnectors t = new TomcatConnectors();

		return dto;
	}
	
	
	
	/*@Override
	public String getTom(){
		TomcatConnectors t = new TomcatConnectors();
		return t.getJvm();
	}
*/
}

