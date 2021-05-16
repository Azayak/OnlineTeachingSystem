//
//  TestClass.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/5/16.
//

import Foundation

class TestClass: ObservableObject {
    var videos: [VideoCellModel] = []
    
    init() {
        for db_video in db_videos {
            var oneVideo: VideoCellModel = VideoCellModel(video_id: 0, course_id: 0, video_name: "", video_length: 0, video_image_index: 0, video_desc: "")
            if(db_video.course_id == 20001) {
                oneVideo = VideoCellModel(video_id: db_video.course_id, course_id: db_video.course_id, video_name: db_video.video_name, video_length: db_video.video_length, video_image_index: db_video.video_image_index, video_desc: db_video.video_desc)
                videos.append(oneVideo)
            }
        }
        for video in videos {
            NSLog("%@", video.video_name)
        }
    }
    
}
