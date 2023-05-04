package kapil.project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;
import kapil.project.model.*;

public class ProductsDao {
	
	private Connection con;

	private String query;
    private PreparedStatement pst;
    private ResultSet rs;
    
    
	public ProductsDao(Connection con) {
		this.con = con;
	}
	
	
	public List<Products> getAllProducts(){
		List<Products> products1 = new ArrayList<Products>();
		
		try {
			query = "select * from products1";
			pst = this.con.prepareStatement(query);
			rs = pst.executeQuery();
			while(rs.next()) {
				Products sow = new Products();
				sow.setId1(rs.getInt("id1"));
				sow.setName1(rs.getString("name1"));
				sow.setCategory1(rs.getString("category1"));
				sow.setPrice1(rs.getString("price1"));
				sow.setImage1(rs.getString("image1"));
				
				products1.add(sow);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return products1;
	}
    
    

}
