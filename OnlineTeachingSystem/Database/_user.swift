//
//  _user.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/5/12.
//

import Foundation

struct _user {
    //用户在系统中的唯一确认id
    var user_id: Int
    //用户登陆中使用的用户名
    var user_name: String
    //用户登陆中使用的密码
    var password: String
    //用户类型：1、学生 2、教师 3、管理员
    var role_category: Int
    //用户常用名，如：姓名
    var common_name: String
    //用户个人简介
    var user_desc: String
    //用户性别，0、男性 1、女性
    var user_gender: Int
    //用户类型为学生时的所属年级
    var user_grade: Int
    //用户类型为学生时的所属班级
    var user_class: Int
    //用户类型为教师时的注册审核标识位，0为待审核，1为审核通过，-1为审核被拒绝
    var teacher_signup_permission: Int
    
    //用户头像图片id
    var user_image_index: Int
}

var db_single_user0: _user = _user(user_id: 10000, user_name: "admin", password: "123456", role_category: 3, common_name: "管理员", user_desc: "没有感情的管理员", user_gender: 0, user_grade: 0, user_class: 0, teacher_signup_permission: 0, user_image_index: 10000)

var db_single_user1: _user = _user(user_id: 10001, user_name: "zhangjianhao", password: "123456", role_category: 1, common_name: "张健浩", user_desc: "一个来自72班喜欢学习计算机知识的学生", user_gender: 0, user_grade: 7, user_class: 2, teacher_signup_permission: 0, user_image_index: 10001)

var db_single_user2: _user = _user(user_id: 10002, user_name: "liuyuanhao", password: "123456", role_category: 1, common_name: "刘元昊", user_desc: "软件工程73班的计算机技术爱好者", user_gender: 0, user_grade: 7, user_class: 3, teacher_signup_permission: 0, user_image_index: 10002)

var db_single_user3: _user = _user(user_id: 10003, user_name: "lichen", password: "123456", role_category: 2, common_name: "李晨", user_desc: "西安交通大学软件学院教师", user_gender: 1, user_grade: 0, user_class: 0, teacher_signup_permission: 1, user_image_index: 10003)

var db_single_user4: _user = _user(user_id: 10004, user_name: "jay", password: "123456", role_category: 2, common_name: "周杰伦", user_desc: "中国台湾流行音乐男歌手，制作人", user_gender: 1, user_grade: 0, user_class: 0, teacher_signup_permission: 0, user_image_index: 10004)

var db_single_user5: _user = _user(user_id: 10005, user_name: "zhuziqing", password: "123456", role_category: 2, common_name: "朱自清", user_desc: "朱自清（1898年11月22日—1948年8月12日），原名自华，号实秋，后改名自清，字佩弦。原籍浙江绍兴，出生于江苏省东海县（今连云港市东海县平明镇），后随父定居扬州。中国现代散文家、诗人、学者、民主战士。", user_gender: 0, user_grade: 0, user_class: 0, teacher_signup_permission: 1, user_image_index: 10005)

var db_users: [_user] = [db_single_user0, db_single_user1, db_single_user2, db_single_user3, db_single_user4, db_single_user5]
