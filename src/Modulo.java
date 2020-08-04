

import java.util.Date;

public class Modulo {
	private String nome;
	private String titular;
	private String auxiliar;
	private Date dtInicio;

	

	public Modulo(String nome, String titular, String auxiliar, Date dtInicio) {
		super();
		this.nome = nome;
		this.titular = titular;
		this.auxiliar = auxiliar;
		this.dtInicio = dtInicio;
	}

	public Modulo() {

	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getTitular() {
		return titular;
	}

	public void setTitular(String titular) {
		this.titular = titular;
	}

	public String getAuxiliar() {
		return auxiliar;
	}

	public void setAuxiliar(String auxiliar) {
		this.auxiliar = auxiliar;
	}

	public Date getDtInicio() {
		return dtInicio;
	}

	public void setDtInicio(Date dtInicio) {
		this.dtInicio = dtInicio;
	}

}
