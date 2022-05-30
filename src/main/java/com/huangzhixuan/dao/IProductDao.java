package com.YangFanou.dao;

import com.YangFanou.model.Product;
import com.YangFanou.week4.ConfigDemoServlet;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public interface IProductDao {

    public int save(Product product,  Connection con) throws SQLException;
    public int delete(Integer productId, Connection con) throws SQLException;
    public int update(Product instance, Connection con) throws SQLException;
    public Product findById(Integer productId, Connection con) throws SQLException;
    public List<Product> findByCategoryId(int categoryId, Connection con) throws SQLException;
    public List<Product> findByPrice(double minPrice, double maxPrice,Connection con) throws SQLException;
    public List<Product> findAll(Connection con) throws SQLException;
    public List<Product> findByProductName(String productName, Connection con) throws SQLException;
    public List<Product> getPicture(Integer productId, Connection con) throws SQLException;
    public byte[] getPictureById(Integer productId, Connection con) throws  SQLException;
}