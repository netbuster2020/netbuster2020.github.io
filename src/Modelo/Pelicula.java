package Modelo;

public class Pelicula {
    int id_pelicula;
    String nombre_p;
    String fecha_estreno;
    String pais_o;
    String genero_p;
    String actor_p;
    String premios;
    String resena;
    String foto;
    String video;


    public Pelicula() {
    }

    public Pelicula(String nombre_p, String fecha_estreno ,String pais_o, String genero_p, String actor_p, String premios, String resena, String foto, String video) {
        this.nombre_p = nombre_p;
        this.fecha_estreno = fecha_estreno;
        this.pais_o = pais_o;
        this.genero_p = genero_p;
        this.actor_p = actor_p;
        this.premios = premios;
        this.resena = resena;
        this.foto = foto;
        this.video = video;
    }


    public int getId_pelicula() {
        return id_pelicula;
    }

    public void setId_pelicula(int id_pelicula) {
        this.id_pelicula = id_pelicula;
    }

    public String getNombre_p() {
        return nombre_p;
    }

    public void setNombre_p(String nombre_p) {
        this.nombre_p = nombre_p;
    }

    public String getFecha_estreno() {
        return fecha_estreno;
    }

    public void setFecha_estreno(String fecha_estreno) {
        this.fecha_estreno = fecha_estreno;
    }
    
    public String getPais_o() {
        return pais_o;
    }

    public void setPais_o(String pais_o) {
        this.pais_o = pais_o;
    }
    
    public String getGenero_p() {
        return genero_p;
    }

    public void setGenero_p(String genero_p) {
        this.genero_p = genero_p;
    }
        
    public String getActor_p() {
        return actor_p;
    }

    public void setActor_p(String actor_p) {
        this.actor_p = actor_p;
    }
        
    public String getPremios() {
        return premios;
    }

    public void setPremios(String premios) {
        this.premios = premios;
    }
        
    public String getResena() {
        return resena;
    }

    public void setResena(String resena) {
        this.resena = resena;

    }
  public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }
      public String getVideo() {
        return video;
    }

    public void setVideo(String video) {
        this.video = video;
    }

}
