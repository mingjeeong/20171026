package com.work.model;

public class Cosmetic {

	private String cosmeticName;
	private String cosmeticBrand;
	private String cosmeticType;
	private String cosmeticPrice;
	private int cosmeticScore;
	
	public Cosmetic() {
		super();
	}

	public Cosmetic(String cosmeticName) {
		super();
		this.cosmeticName = cosmeticName;
	}

	public Cosmetic(String cosmeticName, String cosmeticBrand, String cosmeticType, String cosmeticPrice,
			int cosmeticScore) {
		super();
		this.cosmeticName = cosmeticName;
		this.cosmeticBrand = cosmeticBrand;
		this.cosmeticType = cosmeticType;
		this.cosmeticPrice = cosmeticPrice;
		this.cosmeticScore = cosmeticScore;
	}

	public String getCosmeticName() {
		return cosmeticName;
	}

	public void setCosmeticName(String cosmeticName) {
		this.cosmeticName = cosmeticName;
	}

	public String getCosmeticBrand() {
		return cosmeticBrand;
	}

	public void setCosmeticBrand(String cosmeticBrand) {
		this.cosmeticBrand = cosmeticBrand;
	}

	public String getCosmeticType() {
		return cosmeticType;
	}

	public void setCosmeticType(String cosmeticType) {
		this.cosmeticType = cosmeticType;
	}

	public String getCosmeticPrice() {
		return cosmeticPrice;
	}

	public void setCosmeticPrice(String cosmeticPrice) {
		this.cosmeticPrice = cosmeticPrice;
	}

	public int getCosmeticScore() {
		return cosmeticScore;
	}

	public void setCosmeticScore(int cosmeticScore) {
		this.cosmeticScore = cosmeticScore;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Cosmetic [cosmeticName=");
		builder.append(cosmeticName);
		builder.append(", cosmeticBrand=");
		builder.append(cosmeticBrand);
		builder.append(", cosmeticType=");
		builder.append(cosmeticType);
		builder.append(", cosmeticPrice=");
		builder.append(cosmeticPrice);
		builder.append(", cosmeticScore=");
		builder.append(cosmeticScore);
		builder.append("]");
		return builder.toString();
	}
	
	
	
	
}
