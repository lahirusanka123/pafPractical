package com.paf.HospitalManagement.HelthCare.Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.paf.HospitalManagement.HelthCare.Bean.HospitalBean;
import com.paf.HospitalManagement.HelthCare.Util.HelthCareDB;

public class HospitalModel {
	
	HelthCareDB db = new HelthCareDB();
	Connection con = db.getCon();

	public String ViewHospital() {
		
		String a = "";
		
		try {
			String sql = "SELECT * FROM hospital";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery(); 
	         
					 			
			
	         while (rs.next()) {
             
	        	 a +=  "<option value="+rs.getInt("hospital_id")+" >"+rs.getString("hospitalName")+" </option>";
	     				 
	        	   
	         }
	         
	         
	         
	         
			} catch (SQLException e) {
				 
				e.printStackTrace();
			}
              
		
		return a;

	}

	public String addHospital(HospitalBean Hbean) {

		String e1 = null;

		try {
 

			String sql = "INSERT INTO hospital (hospitalName, email, phoneNo,city,address) "
						+ "VALUE(?,?,?,?,?)";

			PreparedStatement ps = con.prepareStatement(sql);
			

			ps.setString(1, Hbean.getHospitalName());
			ps.setString(2, Hbean.getEmail());
			ps.setInt(3, Hbean.getPhoneNo());
			ps.setString(4, Hbean.getCity());
			ps.setString(5, Hbean.getAddress());
			
			ps.executeUpdate();

			e1 = "Hospital details inserted";

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return e1;

	}

	public String UpdateHospital(HospitalBean Hbean) {

		String e = null;
		
		
		try {
			
			String sql = "UPDATE  hospital SET " 
						+ "hospitalName = ?," 
						+ "email = ?,"
						+ "phoneNo = ?," 
						+ "city = ?,"
						+ "address = ?" 						 
						+ "WHERE hospital_id = ?";
			
			 

			PreparedStatement ps = con.prepareStatement(sql);
			

			ps.setString(1, Hbean.getHospitalName());
			ps.setString(2, Hbean.getEmail());
			ps.setInt(3, Hbean.getPhoneNo());
			ps.setString(4, Hbean.getCity());
			ps.setString(5, Hbean.getAddress());
			ps.setInt(6, Hbean.getHospital_id());
			
			
			ps.executeUpdate();
			
			e = "Hospital details Updated";
			
			
		} catch (SQLException e1) {


			e1.printStackTrace();
		}

		

		return e;

	}

	public String DeleteHospital(int id) {
		
		String status = null; 	
		
		try {
			String sql = "DELETE  FROM hospital  "
						+ "WHERE hospital_id = ?";
			
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ps.executeLargeUpdate();
			status = "Hospital "+id+" deleted ";
			
		} catch (SQLException e) {
			 
			e.printStackTrace();
		}
		 
		
		return status;

	}

}