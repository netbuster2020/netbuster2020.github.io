package Modelo;

public class ComentarioPelicula {
	
	int id_com_pel;
	int id_pelicula;
	int id_comentario;
	
	
	public ComentarioPelicula() {
	}
	
	public ComentarioPelicula(int id_com_pel, int id_pelicula, int id_comentario) {
		super();
		this.id_com_pel = id_com_pel;
		this.id_pelicula = id_pelicula;
		this.id_comentario = id_comentario;
	}

	public int getId_com_pel() {
		return id_com_pel;
	}

	public void setId_com_pel(int id_com_pel) {
		this.id_com_pel = id_com_pel;
	}

	public int getId_pelicula() {
		return id_pelicula;
	}

	public void setId_pelicula(int id_pelicula) {
		this.id_pelicula = id_pelicula;
	}

	public int getId_comentario() {
		return id_comentario;
	}

	public void setId_comentario(int id_comentario) {
		this.id_comentario = id_comentario;
	}
	
	

}
