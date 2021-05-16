//
//  Course.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/5/8.
//

import Foundation
import SwiftUI

struct CourseCellModel {
    var course_id: Int
    var teacher_id: Int
    var course_name: String
    var course_desc: String
    
    var course_image_index: Int
    
    var course_image: Image? {
        return Image("\(course_id)")
//        return Image("0701001")
        
    }
    
    var course_grade: Int
    var course_category: Int
    
    var course_common_category_name: String {
        if(course_category == 1) {
            return "语文"
        } else if(course_category == 2) {
            return "数学"
        } else if(course_category == 3) {
            return "英语"
        } else {
            return "其他"
        }
    }
}
