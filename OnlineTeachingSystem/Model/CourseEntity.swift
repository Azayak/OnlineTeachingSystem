//
//  Course.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/3/14.
//

import Foundation

class CourseEntity: ObservableObject {
    var courseName: String
    var courseId: String
    var courseCategory: CourseCategory
    
    
    init?(courseName: String, courseId: String, courseCategory: CourseCategory) {
        self.courseName = courseName
        self.courseId = courseId
        self.courseCategory = courseCategory
    }
    
}
