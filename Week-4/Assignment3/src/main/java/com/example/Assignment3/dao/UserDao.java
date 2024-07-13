package com.example.Assignment3.dao;

import com.example.Assignment3.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import java.sql.*;

@Repository
public class UserDao {
    @Autowired
    JdbcTemplate jdbcTemplate;
    /*
    use jdbcTemplate.update(PreparedStatementCreator psc, KeyHolder generatedKeyHolder)
    PreparedStatementCreator for more flexible and secure sql query
     */
    public int save(User user) {
        String sql = "INSERT INTO user (email, password) VALUES (?,?)";

        KeyHolder keyHolder = new GeneratedKeyHolder();
        jdbcTemplate.update(
                new PreparedStatementCreator() {
                    public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
                        PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
                        ps.setString(1, user.getEmail());
                        ps.setString(2, user.getPassword());
                        return ps;
                    }
                }, keyHolder);

        return keyHolder.getKey().intValue();
    }
    /*
    version 1 :object list + isEmpty
    if email is not unique value in this table,
    mapping sql query result into a User object list

     public List<User> findByEmail(String email) {
        String sql = "SELECT * FROM user WHERE email = ?";
        return jdbcTemplate.query(sql, new Object[]{email}, new RowMapper<User>() {

            @Override
            public User mapRow(ResultSet rs, int rowNum) throws SQLException {
                User user = new User();
                user.setId(rs.getInt("id"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
                return user;
            }
        });
    }
     */

    // version 2 : since our email column is a unique set, use object + try-catch syntax is more precise
    public User findByEmail(String email) {
        String sql = "SELECT * FROM user WHERE email = ?";
        try{
            return jdbcTemplate.queryForObject(sql, new Object[]{email}, new BeanPropertyRowMapper<User>(User.class));
        }
        catch(EmptyResultDataAccessException e) {
            return null;
        }
    }

    public void deleteByEmail(String email) {
        String sql = "DELETE FROM user WHERE email = ?";
        jdbcTemplate.update(sql, new Object[]{email});
    }

}