//
//  _video.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/5/12.
//

import Foundation

struct _video {
    var video_id: Int
    var course_id: Int
    var video_name: String
    var video_length: Int
    var video_image_index: Int
    
    var video_desc: String
}

//var myVideoCell: VideoCellModel = VideoCellModel(video_id: 30001, course_id: 20001, video_name: "背影", video_length: 1000*60*40, video_image_index: 30001, video_desc: "《背影》是现代作家朱自清（1898-1948）于1925年所写的一篇回忆性散文。这篇散文叙述的是作者离开南京到北京大学，父亲送他到浦口火车站，照料他上车，并替他买橘子的情形。在作者脑海里印象最深刻的，是他父亲替他买橘子时在月台爬上攀下时的背影。作者用朴素的文字，把父亲对儿女的爱，表达得深刻细腻，真挚感动，从平凡的事件中，呈现出父亲的关怀和爱护。")

var db_single_video1: _video = _video(video_id: 30001, course_id: 20001, video_name: "《背**影》", video_length: 1000*60*40, video_image_index: 30001, video_desc: "《背影》是现代作家朱自清（1898-1948）于1925年所写的一篇回忆性散文。这篇散文叙述的是作者离开南京到北京大学，父亲送他到浦口火车站，照料他上车，并替他买橘子的情形。在作者脑海里印象最深刻的，是他父亲替他买橘子时在月台爬上攀下时的背影。作者用朴素的文字，把父亲对儿女的爱，表达得深刻细腻，真挚感动，从平凡的事件中，呈现出父亲的关怀和爱护。")

var db_single_video2: _video = _video(video_id: 30002, course_id: 20001, video_name: "《从百草园到三味书屋》", video_length: 1000*60*45, video_image_index: 30002, video_desc: "《从百草园到三味书屋》是鲁迅于1926年写的一篇童年妙趣生活的回忆性散文，此文被收入《朝花夕拾》。全文描述了色调不同，情韵各异的两大景片：百草园和三味书屋。作者写百草园，以“乐”为中心，以简约生动的文字，描绘了一个奇趣无穷的儿童乐园，其间穿插“美女蛇”的传说和冬天雪地捕鸟的故事，动静结合，详略得当，趣味无穷。三味书屋则是一个完全不同的世界，作者逼真地写出了三味书屋的陈腐味，说它是“全城中称为最严厉的书塾”，儿童在那里受到规矩的束缚。")

var db_single_video3: _video = _video(video_id: 30003, course_id: 20001, video_name: "《春》", video_length: 1000*60*50, video_image_index: 30003, video_desc: "《春》是现代散文家朱自清的作品。《春》是朱自清的散文名篇，最初发表于1933年7月，此后长期被中国中学语文教材选用。在该篇“贮满诗意”的“春的赞歌”中，事实上饱含了作家特定时期的思想情绪、对人生及至人格的追求，表现了作家骨子里的传统文化积淀和他对自由境界的向往")

var db_videos: [_video] = [db_single_video1, db_single_video2, db_single_video3]
