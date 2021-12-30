package com.service;

import java.util.ArrayList;


import com.model.Medicines;


public interface IMedicineService
{


	public void addMedicine(Medicines medicine);

	public ArrayList<Medicines> getMedicines();
	
	public void updateMedicine(Medicines medicine);

	public void removeMedicine(int medicineId);
	
}
