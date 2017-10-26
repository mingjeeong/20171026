package com.work.model;

public class Ingredient {

	private String ingredientName;
	private int ingredientRisk;
	
	public Ingredient() {
		super();
	}
	
	public Ingredient(String ingredientName, int ingredientRisk) {
		super();
		this.ingredientName = ingredientName;
		this.ingredientRisk = ingredientRisk;
	}
	
	public String getIngredientName() {
		return ingredientName;
	}
	public void setIngredientName(String ingredientName) {
		this.ingredientName = ingredientName;
	}
	public int getIngredientRisk() {
		return ingredientRisk;
	}
	public void setIngredientRisk(int ingredientRisk) {
		this.ingredientRisk = ingredientRisk;
	}
	
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Ingredient [ingredientName=");
		builder.append(ingredientName);
		builder.append(", ingredientRisk=");
		builder.append(ingredientRisk);
		builder.append("]");
		return builder.toString();
	}
	
	
}
