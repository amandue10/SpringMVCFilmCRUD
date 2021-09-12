package com.skilldistillery.film.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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
			Class.forName("com.mysql.cj.jdbc.Driver");
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
	public List<Actor> findActorsByFilmId(int filmId) {
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

	@Override
	public boolean addNewFilm(Film film) {
		boolean isInserted = false;
		Connection conn = null;
		PreparedStatement pst = null;
		try {
			conn = DriverManager.getConnection(URL, user, pass);
			conn.setAutoCommit(false);
			String mySql = "insert into film(id,title,description,release_year,language_id,rental_duration,rental_rate,length,replacement_cost,rating,special_features) "
					+ "values(?,?,?,?,?,?,?,?,?,?,?)";
			pst = conn.prepareStatement(mySql, Statement.RETURN_GENERATED_KEYS);
			pst.setInt(1, film.getId());
			pst.setString(2, film.getTitle());
			pst.setString(3, film.getDescription());
			pst.setInt(4, film.getReleaseYear());
			pst.setInt(5, film.getLanguageId());
			pst.setInt(6, film.getRentalDuration());
			pst.setDouble(7, film.getRentalRate());
			pst.setInt(8, film.getLength());
			pst.setDouble(9, film.getReplacementCost());
			pst.setString(10, film.getRating());
			pst.setString(11, film.getSpecialFeatures());

			int updateCount = pst.executeUpdate();
			if (updateCount == 1) {
				isInserted = true;
			}
			conn.commit();
			return isInserted;
		} catch (SQLException e) {
			e.printStackTrace();
			if (conn != null) {
				try {
					conn.rollback();
				} catch (SQLException e1) {
					System.err.println("Error trying to rollback");
				}
			}
			return isInserted;
		} finally {
			closeResource(conn, pst, null);
		}
	}

	@Override
	public boolean deleteFilm(int filmId) {
		boolean isDeleted = false;
		Connection conn = null;
		PreparedStatement pst = null;
		try {
			conn = DriverManager.getConnection(URL, user, pass);
			conn.setAutoCommit(false);
			String mySql = "delete from film where id = ?";
			pst = conn.prepareStatement(mySql, Statement.RETURN_GENERATED_KEYS);
			pst.setInt(1, filmId);

			int updateCount = pst.executeUpdate();
			if (updateCount == 1) {
				isDeleted = true;
			}
			conn.commit();
			return isDeleted;
		} catch (SQLException e) {
			e.printStackTrace();
			if (conn != null) {
				try {
					conn.rollback();
				} catch (SQLException e1) {
					System.err.println("Error trying to rollback");
				}
			}
			return isDeleted;
		} finally {
			closeResource(conn, pst, null);
		}
	}

	@Override
	public boolean editFilm(Film film) {
		boolean isUpdated = false;
		Connection conn = null;
		PreparedStatement pst = null;
		
		try {
			conn = DriverManager.getConnection(URL,user,pass);
			conn.setAutoCommit(false);
			String mySql = "update film set title=?, description=?, release_year=?, language_id=?, rental_duration=?,"
					+ "rental_rate=?, length=?, replacement_cost=?, rating=?, special_features=? where id=?";
			pst = conn.prepareStatement(mySql, Statement.RETURN_GENERATED_KEYS);
			pst.setString(1, film.getTitle());
			pst.setString(2, film.getDescription());
			pst.setInt(3, film.getReleaseYear());
			pst.setInt(4, film.getLanguageId());
			pst.setInt(5, film.getRentalDuration());
			pst.setDouble(6, film.getRentalRate());
			pst.setInt(7, film.getLength());
			pst.setDouble(8, film.getReplacementCost());
			pst.setString(9, film.getRating());
			pst.setString(10, film.getSpecialFeatures());
			pst.setInt(11, film.getId());
			
			int updateCount = pst.executeUpdate();
			if(updateCount == 1) {
				isUpdated = true;
			}
			conn.commit();
			return isUpdated;
		} catch (SQLException e) {
			e.printStackTrace();
			if(conn != null) {
				try {
					conn.rollback();
				} catch (SQLException e1) {
					System.err.println("Error trying to rollback");
				}
			}
			return isUpdated;
		} finally {
			closeResource(conn, pst, null);
		}
	}
	
	@Override
	public List<Film> findFilmsByKeyword(String titleKeyword, String decKeyword) {
		List<Film> films = new ArrayList<>();
		String mySql = "select * from film " + "where title like ? or description like ?";
		Connection conn = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		try {
			conn = DriverManager.getConnection(URL, user, pass);
			pst = conn.prepareStatement(mySql);
			pst.setString(1, "%" + titleKeyword + "%");
			pst.setString(2, "%" + decKeyword + "%");
			rs = pst.executeQuery();

			while (rs.next()) {
				Film film = new Film();
				List<Actor> actors = findActorsByFilmId(film.getId());

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
				
				films.add(film);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeResource(conn, pst, rs);
		}
		return films;
	}
	
	@Override
	public String findFilmCategory(int filmId) {
		String mySql = "select c.name from film f " + "join film_category fc on f.id = fc.film_id "
				+ "join category c on fc.category_id = c.id " + "where f.id = ?";
		String category = null;
		Connection conn = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		try {
			conn = DriverManager.getConnection(URL, user, pass);
			pst = conn.prepareStatement(mySql);
			pst.setInt(1, filmId);
			rs = pst.executeQuery();

			if (rs.next()) {
				category = rs.getNString(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeResource(conn, pst, rs);
		}
		return category;
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
			System.err.println("Error trying to close resource");
		}
	}


}
