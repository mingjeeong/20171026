package com.work.service;

import java.util.ArrayList;

import com.work.model.Cosmetic;
import com.work.model.Ingredient;

public interface DictionaryService {

	public ArrayList<String> searchBrand(String cosmeticBrand);
	public ArrayList<Ingredient> searchIngredient(String ingredientName);
}
