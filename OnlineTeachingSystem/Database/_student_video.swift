//
//  _student_video.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/5/12.
//

import Foundation

struct _student_video {
    var student_id: Int
    var video_id: Int
    var study_length: Int
    var last_time_point: Int
}

var db_single_student_video1: _student_video = _student_video(student_id: 10001, video_id: 30001, study_length: 1000*60*20, last_time_point: 1000*60*10)

var db_single_student_video2: _student_video = _student_video(student_id: 10001, video_id: 30002, study_length: 1000*60*30, last_time_point: 1000*60*25)

var db_single_student_video3: _student_video = _student_video(student_id: 10001, video_id: 30003, study_length: 1000*60*0, last_time_point: 1000*60*0)

var db_student_videos: [_student_video] = [db_single_student_video1, db_single_student_video2, db_single_student_video3]
