package Modelo;

public class Pelicula {
    int id_pelicula;
    String titulo;
    String descripcion;
    String autor;

    public Pelicula() {
    }

    public Pelicula(String titulo, String descripcion, String autor) {
        this.titulo = titulo;
        this.descripcion = descripcion;
        this.autor = autor;
    }

    public int getId_pelicula() {
        return id_pelicula;
    }

    public void setId_pelicula(int id_pelicula) {
        this.id_pelicula = id_pelicula;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }



}
