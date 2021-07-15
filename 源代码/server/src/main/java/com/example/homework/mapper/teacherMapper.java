package com.example.homework.mapper;


import com.example.homework.bean.Teacher;
import org.springframework.stereotype.Repository;

/**
 * @author zhu
 * @version 1.0.0 2021-6-1
 * 对老师请求操作的功能
 */
@Repository
public interface teacherMapper {

    int insertTeacher(Teacher teacher);

    Teacher select(int tid);
}
