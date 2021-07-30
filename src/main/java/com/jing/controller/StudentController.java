package com.jing.controller;

import com.jing.domain.Student;
import com.jing.service.StudentService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/student")
public class StudentController {

    @Resource
    private StudentService service;

    @RequestMapping("/addStudent")
    public ModelAndView addStudent(Student student){

        ModelAndView mv = new ModelAndView();
        String tips = "注册失败";

        int nums = service.addStudent(student);
        if( nums > 0){
            tips = "学生【"+student.getName()+"】注册成功";
        }

        mv.addObject("tips",tips);
        mv.setViewName("result");

        return mv;


    }

    @RequestMapping( "/findStudent")
    @ResponseBody
    public List<Student> findStudent(){

        List<Student> list = service.findStudents();

        return list;

    }




}
