package com.elorrieta.HelloDataBase;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



public class ListarAlumnos {


	public static void main(String[] args) {

		System.out.println("Listado de Listado de clientes");

		String sql = ("SELECT nombre FROM garajebd.cliente;");

		try (

				// obtener conexio a la base de datos
				Connection conexion = BDUtil.getConnection();
				PreparedStatement pst = conexion.prepareStatement(sql);
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
