//
//  _area_student.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/5/12.
//

import Foundation

struct _area_student {
    var student_id: Int
    var area_id: Int
}


var db_single_area_student1: _area_student = _area_student(student_id: 10001, area_id: 60001)

var db_single_area_student2: _area_student = _area_student(student_id: 10001, area_id: 60002)

var db_area_students: [_area_student] = [db_single_area_student1, db_single_area_student2]
