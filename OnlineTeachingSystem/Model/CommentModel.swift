//
//  CommentModel.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/5/17.
//

import Foundation

struct CommentModel {
    var comment_id: Int
    var topic_id: Int
    var user_id: Int
    var comment_date: Date
    var comment_content: String
    var reply_or_not: Int
    var origin_comment_id: Int
    var comment_like_count: Int
}
