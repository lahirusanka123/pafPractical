package com.paf.HospitalManagement.HelthCare.Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.paf.HospitalManagement.HelthCare.Bean.DoctorBean;
import com.paf.HospitalManagement.HelthCare.Util.HelthCareDB;

public class DoctorModel {
	
	HelthCareDB db = new HelthCareDB();
	Connection con = db.getCon();

	public String ViewDoctor() {
		
		String a = "" ;
		
		try {
			String sql = "SELECT * FROM doctor";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery(); 
	          
			
	         while (rs.next()) {
             
	        	   a +=  "<option value="+rs.getInt("id")+" >"+rs.getString("f_name")+" </option>";
	        		  
	         }
	         
	          
	         
	         
			} catch (SQLException e) {
				 
				e.printStackTrace();
			}
              
		
		return a;

	}

	public String addDoctor(DoctorBean Dbean) {

		String e1 = null;

		try {
			

			String sql = "INSERT INTO doctor (f_name, l_name, email,phoneNo,nic,Specialization,age) "
						+ "VALUE(?,?,?,?,?,?,?)";

			PreparedStatement ps = con.prepareStatement(sql);
			

			ps.setString(1, Dbean.getF_name());
			ps.setString(2, Dbean.getL_name());
			ps.setString(3, Dbean.getEmail());
			ps.setInt(4, Dbean.getPhoneNo());
			ps.setString(5, Dbean.getNic());
			ps.setString(6, Dbean.getSpecialization());
			ps.setInt(7, Dbean.getAge());
			
			
			ps.executeUpdate();

			e1 = "Doctor details inserted";

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return e1;

	}

	public String UpdateDoctor(DoctorBean Dbean) {

		String e = null;
		
		
		try {
			
			String sql = "UPDATE  doctor SET " 
						+ "f_name = ?," 
						+ "l_name = ?,"
						+ "email = ?," 
						+ "phoneNo = ?,"
						+ "nic = ?," 	
						+ "age = ?," 
						+ "Specialization = ?"											 
						+ "WHERE id = ?";
			
					

			PreparedStatement ps = con.prepareStatement(sql);
			
			
			ps.setString(1, Dbean.getF_name());
			ps.setString(2, Dbean.getL_name());
			ps.setString(3, Dbean.getEmail());
			ps.setInt(4, Dbean.getPhoneNo());
			ps.setString(5, Dbean.getNic());
			ps.setInt(6, Dbean.getAge());
			ps.setString(7, Dbean.getSpecialization());			
			ps.setInt(8, Dbean.getId());
			
			System.out.println(ps);
			
			ps.executeUpdate();
			
			e = "Doctor "+Dbean.getId()+" details Updated";
			
			
		} catch (SQLException e1) {


			e1.printStackTrace();
		}

		

		return e;

	}

	public String DeleteDoctor(int id) {
		
		String status = null; 	
		
		try {
			String sql = "DELETE  FROM doctor  "
						+ "WHERE id = ?";
			
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ps.executeLargeUpdate();
			status = "Doctor "+id+" deleted ";
			
		} catch (SQLException e) {
			 
			e.printStackTrace();
		}
		 
		
		return status;

	}

}
