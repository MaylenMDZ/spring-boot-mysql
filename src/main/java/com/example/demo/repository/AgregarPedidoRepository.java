package com.example.demo.repository;

import com.example.demo.model.Pedido;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface AgregarPedidoRepository extends CrudRepository<Pedido, Long> {

}
