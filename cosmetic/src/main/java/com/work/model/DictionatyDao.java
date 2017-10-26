package com.work.model;

import java.util.ArrayList;

public interface DictionatyDao  {

	public ArrayList<String> searchBrand(String cosmeticBrand);
	public ArrayList<Ingredient> searchIngredient(String ingredient);
}
