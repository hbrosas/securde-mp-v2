package edu.securde.manager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import edu.securde.DbPool.DBPool;
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
	
	
}
