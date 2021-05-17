//
//  _communication_area.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/5/12.
//

import Foundation

struct _communication_area {
    var area_id: Int
    var course_id: Int
    var area_name: String
    var area_desc: String
}

var db_single_communication_area1: _communication_area = _communication_area(area_id: 60001, course_id: 20001, area_name: "语文的百花园", area_desc: "这是七年级语文上册课程所属的讨论区，欢迎同学们在这里积极发言，互相交流学习心得，共同进步！")

var db_single_communication_area2: _communication_area = _communication_area(area_id: 60002, course_id: 20002, area_name: "数学的百花园", area_desc: "这是本数学课程所属的讨论区，欢迎同学们在这里积极发言，互相交流学习心得，共同进步！")

var db_communication_areas: [_communication_area] = [db_single_communication_area1, db_single_communication_area2]
