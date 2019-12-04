package com.example.demo.model;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import javax.persistence.*;
import javax.validation.constraints.NotBlank;


@Entity
@Table(name = "reseñas")
@EntityListeners(AuditingEntityListener.class)
public class Reseñas {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long id;

    @NotBlank
    public String nombre;
    
    @NotBlank
    public String email;
    
    @NotBlank
    public String reseña;
    
    @NotBlank
    public String foto;
    
    public int id_producto;

    public Reseñas() {
        super();
    }

    public Reseñas(String nombre, String email, String reseña, String foto, int idProducto) {
        this.nombre = nombre;
        this.email = email;
        this.reseña = reseña;
        this.foto = foto;
        this.id_producto = idProducto;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getReseña() {
        return reseña;
    }

    public void setReseña(String reseña) {
        this.reseña = reseña;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    public int getId_producto() {
        return id_producto;
    }

    public void setId_producto(int id_producto) {
        this.id_producto = id_producto;
    }

    

}
