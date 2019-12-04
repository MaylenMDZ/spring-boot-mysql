package com.example.demo.repository;

import com.example.demo.model.Reseñas;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface ReseñasRepository extends JpaRepository<Reseñas, Long> {
 
    @Query(value="SELECT * FROM reseñas WHERE id_producto = ?1", nativeQuery = true)
    List<Reseñas> reseñasByIdProducto(Long id);
}
