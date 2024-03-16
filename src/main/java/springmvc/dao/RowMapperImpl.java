package springmvc.dao;

import org.springframework.jdbc.core.RowMapper;
import springmvc.model.Student;

import java.sql.ResultSet;
import java.sql.SQLException;

public class RowMapperImpl implements RowMapper<Student> {
    @Override
    public Student mapRow(ResultSet rs, int rowNum) throws SQLException {
        Student student=new Student();
        student.setId(rs.getInt(1));
        student.setName(rs.getString(2));
        student.setQualification(rs.getString(3));
        student.setAddress(rs.getString(4));
        return student;
    }
}
