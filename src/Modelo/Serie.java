package Modelo;

public class Serie {
    int id_serie;
    String nombre_s;
    String genero_s;
    String resena_s;
    String foto_s;

    public Serie() {
    }

    public Serie(String nombre_s, String genero_s, String resena_s,String foto_s) {
        this.nombre_s = nombre_s;
        this.genero_s = genero_s;
        this.resena_s = resena_s;
        this.foto_s = foto_s;
    }

    public int getId_serie() {
        return id_serie;
    }

    public void setId_serie(int id_serie) {
        this.id_serie = id_serie;
    }

    public String getNombre_s() {
        return nombre_s;
    }

    public void setNombre_s(String nombre_s) {
        this.nombre_s = nombre_s;
    }

    public String getGenero_s() {
        return genero_s;
    }

    public void setGenero_s(String genero_s) {
        this.genero_s = genero_s;
    }
    
    public String getResena_s() {
        return resena_s;
    }

    public void setResena_s(String resena_s) {
        this.resena_s = resena_s;
    }

    public String getFoto_s() {
        return foto_s;
    }

    public void setFoto_s(String foto_s) {
        this.foto_s = foto_s;
    }

}
