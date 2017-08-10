package edu.securde.manager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import edu.securde.db.*;
import edu.securde.beans.Borrow;
import edu.securde.beans.Catalog;

public class CatalogManager {
	public static ArrayList<Catalog> getAllCatalogs(){
		String sql = "SELECT * FROM " + Catalog.TABLE_NAME + ";";
		Connection conn = DBPool.getInstance().getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Catalog> catalogs = new ArrayList<>();

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while(rs.next()) {
				Catalog catalog = new Catalog();
				catalog.setCatalogid(rs.getInt(Catalog.COLUMN_CATALOGID));
				catalog.setTitle(rs.getString(Catalog.COLUMN_TITLE));
				catalog.setAuthor(rs.getString(Catalog.COLUMN_AUTHOR));
				catalog.setYear(rs.getInt(Catalog.COLUMN_YEAR));
				catalog.setPublisher(rs.getString(Catalog.COLUMN_PUBLISHER));
				catalog.setCatalogtype(rs.getInt(Catalog.COLUMN_CATALOGTYPE));
				catalog.setStatus(rs.getInt(Catalog.COLUMN_STATUS));
				catalog.setTags(rs.getString(Catalog.COLUMN_TAGS));
				catalog.setLocation(rs.getString(Catalog.COLUMN_LOCATION));
				catalogs.add(catalog);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return catalogs;
	}
	public static ArrayList<Catalog> searchCatalog(String search, String reference, String by) {
		String sql = "SELECT * FROM " + Catalog.TABLE_NAME;
		String whereReference = "";
		String whereBy = "";
		if(reference.length() > 0) {
			if(reference.equals("libro")) {
				whereReference = Catalog.COLUMN_CATALOGTYPE + " = 1";
			}else if(reference.equals("magasin")) {
				whereReference = Catalog.COLUMN_CATALOGTYPE + " = 2";
			}else if(reference.equals("pinaghirapan")) {
				whereReference = Catalog.COLUMN_CATALOGTYPE + " = 3";
			}
		}
		if(by.length() > 0) {
			if(by.equals("titulo")) {
				whereBy = Catalog.COLUMN_TITLE + " LIKE '%" + search + "%'";
			}else if(by.equals("otor")) {
				whereBy = Catalog.COLUMN_AUTHOR + " LIKE '%" + search + "%'";
			}else if(by.equals("publiso")) {
				whereBy = Catalog.COLUMN_PUBLISHER + " LIKE '%" + search + "%'";
			}else if(by.equals("taon")) {
				whereBy = Catalog.COLUMN_YEAR + " LIKE '%" + search + "%'";
			}else if(by.equals("saan")) {
				whereBy = Catalog.COLUMN_LOCATION + " LIKE '%" + search + "%'";
			}
		}
		if(whereReference.length() > 0 && whereBy.length() > 0) {
			sql+= " WHERE " + whereReference + " AND " + whereBy;
		}else if(whereReference.length() > 0) {
			sql+= " WHERE " + whereReference;
		}else if(whereBy.length() > 0){
			System.out.println("whereBy");
			sql+= " WHERE " + whereBy;
		}else {
			sql+= " WHERE " + Catalog.COLUMN_TITLE + " LIKE '%" + search + "%'";
		}
		sql += ";";
		System.out.println(sql);
		Connection conn = DBPool.getInstance().getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Catalog> catalogs = new ArrayList<>();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
			Catalog catalog = new Catalog();
			catalog.setCatalogid(rs.getInt(Catalog.COLUMN_CATALOGID));
			catalog.setTitle(rs.getString(Catalog.COLUMN_TITLE));
			catalog.setAuthor(rs.getString(Catalog.COLUMN_AUTHOR));
			catalog.setYear(rs.getInt(Catalog.COLUMN_YEAR));
			catalog.setPublisher(rs.getString(Catalog.COLUMN_PUBLISHER));
			catalog.setCatalogtype(rs.getInt(Catalog.COLUMN_CATALOGTYPE));
			catalog.setStatus(rs.getInt(Catalog.COLUMN_STATUS));
			catalog.setTags(rs.getString(Catalog.COLUMN_TAGS));
			catalogs.add(catalog);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return catalogs;
	}

	public static Catalog getCatalog(String title) {
		String sql = "SELECT * FROM " + Catalog.TABLE_NAME + " WHERE " + Catalog.COLUMN_TITLE + " LIKE " + title  +  ";";
		Connection conn = DBPool.getInstance().getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Catalog catalog = new Catalog();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

				catalog.setCatalogid(rs.getInt(Catalog.COLUMN_CATALOGID));
				catalog.setTitle(rs.getString(Catalog.COLUMN_TITLE));
				catalog.setAuthor(rs.getString(Catalog.COLUMN_AUTHOR));
				catalog.setYear(rs.getInt(Catalog.COLUMN_YEAR));
				catalog.setPublisher(rs.getString(Catalog.COLUMN_PUBLISHER));
				catalog.setCatalogtype(rs.getInt(Catalog.COLUMN_CATALOGTYPE));
				catalog.setStatus(rs.getInt(Catalog.COLUMN_STATUS));
				catalog.setTags(rs.getString(Catalog.COLUMN_TAGS));

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return catalog;
	}


	public static void ChangeStatus(int catalogID, int statusID) {
		String sql = "UPDATE " + Catalog.TABLE_NAME + " SET "
			    + Catalog.COLUMN_STATUS 
				+ "=? WHERE "+ Catalog.COLUMN_CATALOGID +" =?;";

		Connection conn = DBPool.getInstance().getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(2, catalogID);
			pstmt.setInt(1, statusID);
			pstmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

		public static boolean DeleteCatalog(int catalogid) {
		String sql = "DELETE " + "FROM" + Catalog.TABLE_NAME
				 + " WHERE " + Catalog.COLUMN_CATALOGID + " LIKE " + "?" + ";";
	
		Connection conn = DBPool.getInstance().getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
	
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, catalogid);
			pstmt.executeUpdate();
	
	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	
		return true;
	}
		
		public static boolean AddCatalog(int catalogid) {
			String sql = "INSERT INTO FROM " + Catalog.TABLE_NAME
					 + " WHERE " + Catalog.COLUMN_CATALOGID + " LIKE " + "?" + ";";
		
			Connection conn = DBPool.getInstance().getConnection();
			PreparedStatement pstmt = null;
			ResultSet rs = null;
		
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, catalogid);
				pstmt.executeUpdate();
		
		
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				try {
					rs.close();
					pstmt.close();
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		
			return true;
		}
		
		

}
