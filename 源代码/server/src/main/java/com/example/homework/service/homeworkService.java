package com.example.homework.service;

import com.example.homework.bean.Homework;
import com.example.homework.mapper.homeworkMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class homeworkService {
    @Resource
    homeworkMapper homeworkMapper;

    public List<Homework> homeworkList(){
        return homeworkMapper.homeworkList();
    }

    public List<Homework> ThomeworkList(int tid){
        return homeworkMapper.ThomeworkList(tid);
    }

    public int updateHome(Homework homework){
        return homeworkMapper.updateHome(homework);
    }

    public int insertHomework(Homework homework){
        return homeworkMapper.insertHomework(homework);
    }

    public int deleteHomework(int hid){
        return homeworkMapper.deleteHomework(hid);
    }
}
