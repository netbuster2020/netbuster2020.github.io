package Modelo;


public class Comentario {
	

	int id_comentario;
	int id_user;
	String fecha_ahora;
	String mensaje;
	
	public Comentario() {
	}
	
	public Comentario(int id_comentario, int id_user, String fecha_ahora, String mensaje) {
		super();
		this.id_comentario = id_comentario;
		this.id_user = id_user;
		this.fecha_ahora = fecha_ahora;
		this.mensaje = mensaje;
	}

	public int getId_comentario() {
		return id_comentario;
	}

	public void setId_comentario(int id_comentario) {
		this.id_comentario = id_comentario;
	}

	public int getId_user() {
		return id_user;
	}

	public void setId_user(int id_user) {
		this.id_user = id_user;
	}

	public String getFecha_ahora() {
		return fecha_ahora;
	}

	public void setFecha_ahora(String fecha_ahora) {
		this.fecha_ahora = fecha_ahora;
	}

	public String getMensaje() {
		return mensaje;
	}

	public void setMensaje(String mensaje) {
		this.mensaje = mensaje;
	}
	
	

}
