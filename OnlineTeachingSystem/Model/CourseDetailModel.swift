//
//  CourseDetailModel.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/5/10.
//

import Foundation

struct CourseDetailModel {
    var studentDetail: UserMineDetailModel
    var courseCell: CourseCellModel
    var videosList: [VideoCellModel]
    var teacherDetail: UserMineDetailModel
    var studentVideo: [StudentVideoModel]
    var courseStudent: CourseStudentModel
    
//    var StudentCourse
}


//struct CourseCellModel {
//    var course_id: Int
//    var teacher_id: Int
//    var course_name: String
//    var course_desc: String
//
//    var course_image_index: Int
//
//    var course_image: Image? {
//        return Image("\(course_id)")
////        return Image("0701001")
//
//    }
//
//    var course_grade: Int
//    var course_category: Int
//}
