//
//  CoursesVIewModel.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/5/13.
//

import Foundation

class CoursesViewModel: ObservableObject {
    
    @Published var coursesList: [CourseCellModel] = []
    @Published var user_id: Int = 0
    
    init() {
        for db_course in db_courses {
            let oneCourse: CourseCellModel = CourseCellModel(course_id: db_course.course_id, teacher_id: db_course.teacher_id, course_name: db_course.course_name, course_desc: db_course.course_desc, course_image_index: db_course.course_image_index, course_grade: db_course.course_grade, course_category: db_course.course_category)
            coursesList.append(oneCourse)
        }
    }
    
    init(user_id: Int, isFliter: Int) {
        self.user_id = user_id
        if(isFliter == 0) {
            for db_course in db_courses {
                let oneCourse: CourseCellModel = CourseCellModel(course_id: db_course.course_id, teacher_id: db_course.teacher_id, course_name: db_course.course_name, course_desc: db_course.course_desc, course_image_index: db_course.course_image_index, course_grade: db_course.course_grade, course_category: db_course.course_category)
                coursesList.append(oneCourse)
            }
        } else {
            var myCoursesIDList: [Int] = []
            for db_course_student in db_course_students {
                if(db_course_student.student_id == user_id) {
                    myCoursesIDList.append(db_course_student.course_id)
                }
            }
            for db_course in db_courses {
                if(myCoursesIDList.contains(db_course.course_id)) {
                    let oneCourse: CourseCellModel = CourseCellModel(course_id: db_course.course_id, teacher_id: db_course.teacher_id, course_name: db_course.course_name, course_desc: db_course.course_desc, course_image_index: db_course.course_image_index, course_grade: db_course.course_grade, course_category: db_course.course_category)
                    coursesList.append(oneCourse)
                }
            }
        }
        
    }
    
//    init(user_id: Int) {
//        for db_user in db_users {
//            if user_id == db_user.user_id {
//                self.userMineDetail = UserMineDetailModel(user_id: db_user.user_id, user_name: db_user.user_name, role_category: db_user.role_category, common_name: db_user.common_name, user_desc: db_user.user_desc, user_gender: db_user.user_gender, user_grade: db_user.user_grade, user_class: db_user.user_class)
//                break
//            }
//        }
//    }
    
//    init() {
//        self.userMineDetail = UserMineDetailModel(user_id: db_users[1].user_id, user_name: db_users[1].user_name, role_category: db_users[1].role_category, common_name: db_users[1].common_name, user_desc: db_users[1].user_desc, user_gender: db_users[1].user_gender, user_grade: db_users[1].user_grade, user_class: db_users[1].user_class)
//    }
}
