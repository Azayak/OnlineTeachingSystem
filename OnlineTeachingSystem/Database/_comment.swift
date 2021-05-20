//
//  _comment.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/5/12.
//

import Foundation

struct _comment {
    var comment_id: Int
    var topic_id: Int
    var user_id: Int
    var comment_date: Date
    var comment_content: String
    var reply_or_not: Int
    var origin_comment_id: Int
    var comment_like_count: Int
}

var db_single_comment1: _comment = _comment(comment_id: 80001, topic_id: 70001, user_id: 10001, comment_date: Date(), comment_content: "牛的牛的牛的", reply_or_not: 0, origin_comment_id: 0, comment_like_count: 2)

var db_single_comment2: _comment = _comment(comment_id: 80002, topic_id: 70001, user_id: 10002, comment_date: Date(), comment_content: "牛牛牛牛牛牛牛牛牛牛牛牛牛", reply_or_not: 0, origin_comment_id: 0, comment_like_count: 5)

var db_single_comment3: _comment = _comment(comment_id: 80003, topic_id: 70001, user_id: 10002, comment_date: Date(), comment_content: "不牛不牛不牛不牛", reply_or_not: 1, origin_comment_id: 80001, comment_like_count: 6)
