//
//  CourseCategory.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/3/9.
//

import Foundation

class CourseCategory: Identifiable {
    
    init?(categoryName: String) {
        self.categoryName = categoryName
    }
    
    var categoryName: String
    let id: UUID = UUID()
}
