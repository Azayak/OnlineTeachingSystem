//
//  _homework.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/5/12.
//

import Foundation

struct _homework {
    var homework_id: Int
    var course_id: Int
    var homework_title: String
}

var db_single_homework1: _homework = _homework(homework_id: 40001, course_id: 20001, homework_title: "七年级语文上册第一单元测试")

var db_single_homework2: _homework = _homework(homework_id: 40002, course_id: 20001, homework_title: "七年级语文上册第二单元测试")

var db_single_homework3: _homework = _homework(homework_id: 40003, course_id: 20001, homework_title: "七年级语文上册第三单元测试")

var db_homeworks: [_homework] = [db_single_homework1, db_single_homework2, db_single_homework3]
