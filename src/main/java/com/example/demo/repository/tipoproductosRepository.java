package com.example.demo.repository;

import com.example.demo.model.Contenido;
import com.example.demo.model.tipoproductos;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface tipoproductosRepository extends JpaRepository<tipoproductos, Long> {

}
