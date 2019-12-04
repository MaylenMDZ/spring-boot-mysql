package com.example.demo.repository;

import com.example.demo.model.Producto;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductoRepository extends JpaRepository<Producto, Long> {
    @Procedure(procedureName = "spproductosearch")
    List<Producto> spproductosearch();
    @Query(value = "SELECT * FROM productos LIMIT 16", nativeQuery = true)
    List<Producto> findByName(String nombre);
    
    
    @Query(value="SELECT * FROM productos WHERE id = ?1", nativeQuery = true)
    List<Producto> findByIdProducto(Long id);
    
    
}
