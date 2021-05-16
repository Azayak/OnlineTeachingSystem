//
//  UserVideoModel.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/5/11.
//

import Foundation

struct StudentVideoModel: Identifiable {
    var id: [Int] {
        [student_id, video_id]
    }
    var student_id: Int
    var video_id: Int
    var studyLength: Int
    var lastTimePoint: Int
}


