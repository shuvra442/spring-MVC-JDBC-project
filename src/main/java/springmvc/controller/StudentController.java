package springmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import springmvc.dao.StudentDao;
import springmvc.model.Student;

import java.util.List;

@Controller
public class StudentController {
    @Autowired
    private StudentDao studentDao;
    @RequestMapping("/studentForm")
    public String viewSimple(Model model){
        model.addAttribute("newStudent", new Student());
        return "studentForm";
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String saveStudent(@ModelAttribute Student student){
        System.out.println(student.getName());
        System.out.println(student.getQualification());
        System.out.println(student.getAddress());
        studentDao.save(student);
        return "redirect:/viewStudent";
    }

//    get all student data
   @RequestMapping(value = "/viewStudent")
    public String viewstd(Model model){
        List<Student> studentList=studentDao.getAllStudent();
        model.addAttribute("list",studentList);
        return "viewStudent";
   }
   
//   show edit student data
   @RequestMapping(value="/editstd/{id}", method=RequestMethod.GET)
   public String editStudent(@PathVariable("id") int id, Model model) {
	   Student student=studentDao.getById(id);
	   model.addAttribute("command",student);
	   return "stdeditform";
   }
   
//   update and save the student data into database
   @RequestMapping(value = "/editsave", method = RequestMethod.POST)
   public String editSave(@ModelAttribute Student student) {
	   studentDao.updateData(student);
	   return "redirect:/viewStudent";
   }
  
   @RequestMapping(value = "/deletestd/{id}", method=RequestMethod.GET)
   public String deleteData(@PathVariable("id")int id) {
	   studentDao.deleteData(id);
	   return"redirect:/viewStudent";
   }
   

}
