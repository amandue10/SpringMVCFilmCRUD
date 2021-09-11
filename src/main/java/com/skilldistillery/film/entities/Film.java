package com.skilldistillery.film.entities;

import java.util.List;
import java.util.Objects;

public class Film {

	private int id;
	private String title;
	private String description;
	private int releaseYear;
	private int languageId;
	private int rentalDuration;
	private double rentalRate;
	private int length;
	private double replacementCost;
	private String rating;
	private String specialFeatures;
	private List<Actor> cast;

	public Film(int id, String title, String description, int releaseYear, int languageId, int rentalDuration,
			double rentalRate, int length, double replacementCost, String rating, String specialFeatures,
			List<Actor> cast) {
		super();
		this.id = id;
		this.title = title;
		this.description = description;
		this.releaseYear = releaseYear;
		this.languageId = languageId;
		this.rentalDuration = rentalDuration;
		this.rentalRate = rentalRate;
		this.length = length;
		this.replacementCost = replacementCost;
		this.rating = rating;
		this.specialFeatures = specialFeatures;
		this.cast = cast;
		
	}

	public Film() {
		super();
	}

	public Film(int int1, String string, String string2, int int2, int int3, int int4, int int5, double double1,
			String string3, String string4, List<Actor> cast2, String string5) {
		// TODO Auto-generated constructor stub
	}

	public Film(int int1, String string, String string2, int int2, int int3, int int4, int int5, double double1,
			String string3, String string4) {
		// TODO Auto-generated constructor stub
	}

	public Film(String title2, short releaseYear2, String rating2, String desc, String lang) {
		// TODO Auto-generated constructor stub
	}

	public List<Actor> getcast() {
		return cast;
	}

	public void setcast(List<Actor> cast) {
		this.cast = cast;
	}

	public int getid() {
		return id;
	}

	public void setid(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getreleaseYear() {
		return releaseYear;
	}

	public void setreleaseYear(int releaseYear) {
		this.releaseYear = releaseYear;
	}

	public int getlanguageId() {
		return languageId;
	}

	public void setlanguageId(int languageId) {
		this.languageId = languageId;
	}

	public int getrentalDuration() {
		return rentalDuration;
	}

	public void setrentalDuration(int rentalDuration) {
		this.rentalDuration = rentalDuration;
	}

	public double getrentalRate() {
		return rentalRate;
	}

	public void setrentalRate(double rentalRate) {
		this.rentalRate = rentalRate;
	}

	public int getLength() {
		return length;
	}

	public void setLength(int length) {
		this.length = length;
	}

	public double getreplacementCost() {
		return replacementCost;
	}

	public void setreplacementCost(double replacementCost) {
		this.replacementCost = replacementCost;
	}

	public String getRating() {
		return rating;
	}

	public void setRating(String rating) {
		this.rating = rating;
	}

	public String getspecialFeatures() {
		return specialFeatures;
	}

	public void setspecialFeatures(String specialFeatures) {
		this.specialFeatures = specialFeatures;
	}

	@Override
	public int hashCode() {
		return Objects.hash(description, id, languageId, length, rating, releaseYear, rentalDuration, rentalRate,
				replacementCost, specialFeatures, title);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Film other = (Film) obj;
		return Objects.equals(description, other.description) && id == other.id && languageId == other.languageId
				&& length == other.length && Objects.equals(rating, other.rating) && releaseYear == other.releaseYear
				&& rentalDuration == other.rentalDuration
				&& Double.doubleToLongBits(rentalRate) == Double.doubleToLongBits(other.rentalRate)
				&& Double.doubleToLongBits(replacementCost) == Double.doubleToLongBits(other.replacementCost)
				&& Objects.equals(specialFeatures, other.specialFeatures) && Objects.equals(title, other.title);
	}

	@Override
	public String toString() {
		return "Film [id=" + id + ", title=" + title + ", description=" + description + ", releaseYear=" + releaseYear
				+ ", languageId=" + languageId + ", rentalDuration=" + rentalDuration + ", rentalRate=" + rentalRate
				+ ", length=" + length + ", replacementCost=" + replacementCost + ", rating=" + rating
				+ ", specialFeatures=" + specialFeatures + ", cast=" + cast + "]";
	}

}
