package springmvc.dao;



import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import springmvc.model.Student;

import java.util.List;


public class StudentDao {

   JdbcTemplate jdbcTemplate;


    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public int save(Student student){
        String sql="insert into student(name,qualification,address) values(?,?,?)";
        return this.jdbcTemplate.update(sql,student.getName(),student.getQualification(),student.getAddress());
    }

//    get all student data
     public List<Student> getAllStudent(){
        String sql="select * from student";
        return jdbcTemplate.query(sql,new RowMapperImpl());
    }
     
     
//     show edit student data
     
     public Student getById(int id) {
    	 String sql= "select * from student where id=?";
    	 RowMapper<Student> rowMapper=new RowMapperImpl();
    	 return jdbcTemplate.queryForObject(sql,rowMapper,id);
     }
     
//     update data
     public int updateData(Student student) {
    	 String sql="update student set name=?, qualification=?, address=? where id=?";
    	 return jdbcTemplate.update(sql,student.getName(),student.getQualification(),student.getAddress(),student.getId());
     }

//     delete data 
     
     public int deleteData(int id) {
    	 String sql="delete from student where id=?";
    	 return jdbcTemplate.update(sql,id);
     }
   
}
