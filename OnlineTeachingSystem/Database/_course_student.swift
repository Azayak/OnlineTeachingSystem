//
//  _course_student.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/5/12.
//

import Foundation

//本表为学生加入课程的统计表
struct _course_student {
    
    //学生id
    var student_id: Int
    //课程id
    var course_id: Int
    //加入课程申请
    var apply_premission: Int
}

var db_single_course_student1: _course_student = _course_student(student_id: 10001, course_id: 20001, apply_premission: 1)

var db_single_course_student2: _course_student = _course_student(student_id: 10001, course_id: 20002, apply_premission: 1)

var db_single_course_student3: _course_student = _course_student(student_id: 10001, course_id: 20003, apply_premission: 0)

var db_single_course_student4: _course_student = _course_student(student_id: 10001, course_id: 20007, apply_premission: 1)

var db_course_students: [_course_student] = [db_single_course_student1, db_single_course_student2, db_single_course_student3, db_single_course_student4]
