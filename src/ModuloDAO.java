

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ModuloDAO {

	Connection conn;

	private String SQL_LISTAR_MODULOS = "SELECT * FROM tb_modulo";

	public ModuloDAO(Connection conn) {
		this.conn = conn;
	}

	
	
	public List<Modulo> listarTodas() {

		List<Modulo> listaModulos = new ArrayList<>();
		
		try (Statement stmt = conn.createStatement(); ResultSet rs = stmt.executeQuery(SQL_LISTAR_MODULOS);) {
			while (rs.next()) {
				
				Modulo m = new Modulo();
				m.setNome(rs.getString("nome"));
				m.setTitular(rs.getString("titular"));
				m.setAuxiliar(rs.getString("auxiliar"));
				m.setDtInicio(rs.getDate("dtInicio"));

				listaModulos.add(m);
			}
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		
		
		return listaModulos;
	}

}
