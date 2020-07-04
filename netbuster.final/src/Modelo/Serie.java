package Modelo;

public class Serie {
    int id_serie;
    String nombre_s;
    String ano_estreno;
    String n_temporadas;
    String ideoma_original;
    String genero_s;
    String plataforma;
    String estado;
    String resena_s;
    String foto_s;
    String video_s;

    public Serie() {
        
    }

    public Serie(String nombre_s, String ano_estreno, String n_temporadas, String ideoma_original, String genero_s, String plataforma, String estado, String resena_s,String foto_s,String video_s) {
        this.nombre_s = nombre_s;
        this.ano_estreno = ano_estreno;
        this.n_temporadas = n_temporadas;
        this.ideoma_original = ideoma_original;
        this.genero_s = genero_s;
        this.plataforma = plataforma;
        this.resena_s = resena_s;
        this.foto_s = foto_s;
        this.video_s = video_s;
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

    public String getAno_estreno() {
        return ano_estreno;
    }

    public void setAno_estreno(String ano_estreno) {
        this.ano_estreno = ano_estreno;
    }

    public String getN_temporadas() {
        return n_temporadas;
    }

    public void setN_temporadas(String n_temporadas) {
        this.n_temporadas = n_temporadas;
    }

    public String getIdeoma_original() {
        return ideoma_original;
    }
    

    public void setIdeoma_original(String ideoma_original) {
        this.ideoma_original = ideoma_original;
    }

    public String getGenero_s() {
        return genero_s;
    }
    

    public void setGenero_s(String genero_s) {
        this.genero_s = genero_s;
    }

    public String getPlataforma() {
        return plataforma;
    }
    

    public void setPlataforma(String plataforma) {
        this.plataforma = plataforma;
    }

    public String getEstado() {
        return estado;
    }


    public void setEstado(String estado) {
        this.estado = estado;
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

    public String getVideo_s() {
        return video_s;
    }

    public void setVideo_s(String video_s) {
        this.video_s = video_s;
    }

}
