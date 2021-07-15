package com.example.homework.service;

import com.example.homework.bean.Teacher;
import com.example.homework.mapper.teacherMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class teacherService {
    @Resource
    teacherMapper teacherMapper;

    public int insertTeacher(Teacher teacher){
        return teacherMapper.insertTeacher(teacher);
    }

    public Teacher select(int tid){
        return teacherMapper.select(tid);
    }

}
