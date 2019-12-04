package com.example.demo.repository;

import com.example.demo.model.Contenido;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface ContenidoRepository extends JpaRepository<Contenido, Long> {

}
