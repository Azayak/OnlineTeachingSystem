//
//  _course.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/5/12.
//

import Foundation

struct _course {
    //课程在系统中唯一标识
    var course_id: Int
    //课程所属老师id，其类型为_user中的user_id
    var teacher_id: Int
    //课程名称
    var course_name: String
    //课程简介
    var course_desc: String
    //课程封面图片id
    var course_image_index: Int
    //课程所属年级
    var course_grade: Int
    //课程类型，1、语文 2、数学 3、英语 4、其他
    var course_category: Int
}

var db_single_course1: _course = _course(course_id: 20001, teacher_id: 10005, course_name: "七年级语文上册", course_desc: "本课程是以教育部规定教材为基础的七年级上册语文课程", course_image_index: 20001, course_grade: 7, course_category: 1)

var db_single_course2: _course = _course(course_id: 20002, teacher_id: 10005, course_name: "八年级数学上册", course_desc: "本课程是以教育部规定教材为基础的八年级上册数学课程", course_image_index: 20002, course_grade: 8, course_category: 2)

var db_single_course3: _course = _course(course_id: 20003, teacher_id: 10005, course_name: "九年级英语上册", course_desc: "本课程是以教育部规定教材为基础的九年级上册英语课程", course_image_index: 20003, course_grade: 9, course_category: 3)

var db_single_course4: _course = _course(course_id: 20004, teacher_id: 10005, course_name: "八年级物理上册", course_desc: "本课程是以教育部规定教材为基础的八年级上册物理课程", course_image_index: 20004, course_grade: 8, course_category: 4)

var db_single_course5: _course = _course(course_id: 20005, teacher_id: 10005, course_name: "九年级计算机技术上册", course_desc: "本课程是以教育部规定教材为基础的九年级上册计算机技术课程", course_image_index: 20001, course_grade: 9, course_category: 4)
