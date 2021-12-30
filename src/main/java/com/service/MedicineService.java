package com.service;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.medicine.util.DBConnectionUtil;
import com.model.Medicines;




public class MedicineService implements IMedicineService
{

	public static final Logger log = Logger.getLogger(MedicineService.class.getName());

	private static Connection connection;

	private PreparedStatement preparedStatement;

	@Override
	public void addMedicine(Medicines medicine)
	{

		try
		{

			// updating user table
			connection = DBConnectionUtil.getDBConnection();
			
			preparedStatement = connection.prepareStatement("insert into MEDICINES values (?, ?, ?, ?, ? )",
					PreparedStatement.RETURN_GENERATED_KEYS);
			connection.setAutoCommit(false);
			preparedStatement.setString(1, null);
			preparedStatement.setString(2, medicine.getMedicineName());
			preparedStatement.setString(3, medicine.getManufacturer());
			preparedStatement.setString(4, medicine.getmCompany());
			preparedStatement.setString(5, medicine.getSupplier());


			preparedStatement.execute();
			preparedStatement.getGeneratedKeys();
			connection.commit();

			

		} catch (SQLException | ClassNotFoundException e)
		{
			log.log(Level.SEVERE, e.getMessage());
		} finally
		{

			try
			{
				if (preparedStatement != null)
				{
					preparedStatement.close();
				}
				if (connection != null)
				{
					connection.close();
				}
			} catch (SQLException e)
			{
				log.log(Level.SEVERE, e.getMessage());
			}
		}
	}

	@Override
	public  ArrayList<Medicines> getMedicines()
	{
		
		return null;
	}

	@Override
	public void updateMedicine(Medicines medicine)
	{
		try
		{

			connection = DBConnectionUtil.getDBConnection();

			preparedStatement = connection.prepareStatement("UPDATE MEDICINES SET NAME=?,MANUFACTURER=?,COMPANY=?,SUPPLIER=? WHERE  ID=?");
			connection.setAutoCommit(false);

			preparedStatement.setString(1, medicine.getMedicineName());
			preparedStatement.setString(2, medicine.getManufacturer());
			preparedStatement.setString(3, medicine.getmCompany());
			preparedStatement.setString(4, medicine.getSupplier());
			preparedStatement.setInt(5, medicine.getMedicineID());

			preparedStatement.execute();
			connection.commit();

		} catch (SQLException | ClassNotFoundException e)
		{
			log.log(Level.SEVERE, e.getMessage());
		} finally
		{

			try
			{
				if (preparedStatement != null)
				{
					preparedStatement.close();
				}
				if (connection != null)
				{
					connection.close();
				}
			} catch (SQLException e)
			{
				log.log(Level.SEVERE, e.getMessage());
			}
		}

	}

	@Override
	public void removeMedicine(int medicineId)
	{
		if (medicineId != 0)
		{

			try
			{
				connection = DBConnectionUtil.getDBConnection();
				preparedStatement = connection.prepareStatement("delete from MEDICINES where ID = ?");
				preparedStatement.setInt(1, medicineId);
				preparedStatement.executeUpdate();
			} catch (SQLException | ClassNotFoundException e)
			{
				log.log(Level.SEVERE, e.getMessage());
			} finally
			{

				try
				{
					if (preparedStatement != null)
					{
						preparedStatement.close();
					}
					if (connection != null)
					{
						connection.close();
					}
				} catch (SQLException e)
				{
					log.log(Level.SEVERE, e.getMessage());
				}
			}
		}

	}


}
