package com.skilldistillery.film.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.skilldistillery.film.entities.Actor;
import com.skilldistillery.film.entities.Film;

public class FilmDaoJdbcImpl implements FilmDAO {
	private static final String URL = "jdbc:mysql://localhost:3306/sdvid?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=US/Mountain";
	private String user = "student";
	private String pass = "student";
	
	public FilmDaoJdbcImpl() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	
	
	@Override
	public Film findById(int filmId) {
		String mySql = "select * from film where id = ?";
		Film film = null;
		Connection conn = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		try {
			conn = DriverManager.getConnection(URL, user, pass);
			pst = conn.prepareStatement(mySql);
			pst.setInt(1, filmId);
			rs = pst.executeQuery();

			if (rs.next()) {
				film = new Film();
				List<Actor> actors = findActorsByFilmId(filmId);
				
				film.setId(rs.getInt(1));
				film.setTitle(rs.getString(2));
				film.setDescription(rs.getString(3));
				film.setReleaseYear(rs.getInt(4));
				film.setLanguageId(rs.getInt(5));
				film.setRentalDuration(rs.getInt(6));
				film.setRentalRate(rs.getDouble(7));
				film.setLength(rs.getInt(8));
				film.setReplacementCost(rs.getDouble(9));
				film.setRating(rs.getString(10));
				film.setSpecialFeatures(rs.getString(11));
				film.setCast(actors);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeResource(conn, pst, rs);
		}
		return film;
	}

	@Override
	public List<Actor> findActorsByFilmId(int filmId){
		String mySql = "select a.id, a.first_name, a.last_name, f.id from actor a "
				+ "join film_actor fa on a.id = fa.actor_id " + "join film f on fa.film_id = f.id " + "where f.id =? ";
		List<Actor> actors = new ArrayList<>();
		Connection conn = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		try {
			conn = DriverManager.getConnection(URL, user, pass);
			pst = conn.prepareStatement(mySql);
			pst.setInt(1, filmId);
			rs = pst.executeQuery();

			while (rs.next()) {
				Actor actor = new Actor();
				actor.setId(rs.getInt(1));
				actor.setFirstName(rs.getString(2));
				actor.setFirstName(rs.getString(2));
				actors.add(actor);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeResource(conn, pst, rs);
		}
		return actors;
	}
	
	private void closeResource(Connection conn, PreparedStatement pst, ResultSet rs) {
		try {
			if (rs != null) {
				rs.close();
			}
			if (pst != null) {
				pst.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
