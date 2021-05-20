//
//  TopicModel.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/5/17.
//

import Foundation

struct TopicModel {
    var topic_id: Int
    var area_id: Int
    var user_id: Int
    var topic_title: String
    var topic_content: String
    var topic_date: Date
    var topic_like_count: Int
    var topic_comment_count: Int
}
