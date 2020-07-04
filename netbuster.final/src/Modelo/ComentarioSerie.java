package Modelo;

public class ComentarioSerie {
	
	int id_com_ser;
	int id_serie;
	int id_comentario;
	
	public ComentarioSerie() {
	}
	
	
	public ComentarioSerie(int id_com_ser, int id_serie, int id_comentario) {
		super();
		this.id_com_ser = id_com_ser;
		this.id_serie = id_serie;
		this.id_comentario = id_comentario;
	}


	public int getId_com_ser() {
		return id_com_ser;
	}


	public void setId_com_ser(int id_com_ser) {
		this.id_com_ser = id_com_ser;
	}


	public int getId_serie() {
		return id_serie;
	}


	public void setId_serie(int id_serie) {
		this.id_serie = id_serie;
	}


	public int getId_comentario() {
		return id_comentario;
	}


	public void setId_comentario(int id_comentario) {
		this.id_comentario = id_comentario;
	}
	
	

}
