package com.elorrieta.HelloDataBase;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.jdbc.Connection;

public class ListarAlumnos {

	final static String URL_CONEXIO = "jdbc:mysql://localhost:3306/garajebd?&useSSL=false";
	final static String USUARIO = "root";
	final static String PASSWORD = "root";

	public static void main(String[] args) {

		System.out.println("Listado de Listado de clientes");

		String sql = ("SELECT nombre FROM garajebd.cliente;");

		try (

				// obtener conexio a la base de datos
				Connection conexion = (Connection) DriverManager.getConnection(URL_CONEXIO, USUARIO, PASSWORD);
				PreparedStatement pst = conexion.clientPrepareStatement(sql);
				ResultSet rs = pst.executeQuery();

		) {

			while (rs.next()) {

				String nombre = rs.getString("nombre");

				System.out.println("Nombre " + nombre);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
