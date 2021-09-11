package com.skilldistillery.film.entities;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class Actor {

	private int id;
	private String firstName;
	private String lastName;
	private List<Film> films = new ArrayList<>();
	
	public Actor() {
		super();
	}
	public Actor(int id, String firstName, String lastName, List<Film> films) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.films = films;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	@Override
	public int hashCode() {
		return Objects.hash(firstName, id, lastName);
	}
	
	public Actor(String firstName, String lastName) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
	}
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Actor other = (Actor) obj;
		return Objects.equals(firstName, other.firstName) && id == other.id && Objects.equals(lastName, other.lastName);
	}
	
	@Override
	public String toString() {
		return "Actor [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", films=" + films + "]";
	}

	public List<Film> getFilms() {
		List<Film> copy = new ArrayList<>(films);
		return copy;
	}

}
