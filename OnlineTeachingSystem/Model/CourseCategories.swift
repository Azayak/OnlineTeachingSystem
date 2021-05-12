//
//  File.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/3/9.
//

import Foundation

class CourseCategories: ObservableObject {
    
    init?(courseCategories: [CourseCategory]) {
        self.courseCategories = courseCategories
    }
    
    var courseCategories: [CourseCategory]
    
}
