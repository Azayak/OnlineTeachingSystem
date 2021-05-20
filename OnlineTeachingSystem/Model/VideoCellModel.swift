//
//  VideoCell.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/5/11.
//

import Foundation
import SwiftUI

struct VideoCellModel: Identifiable {
    var id: Int {
        video_id
    }
    
    var video_id: Int
    var course_id: Int
    var video_name: String
    var video_length: Int
    var video_image_index: Int
    
    var video_desc: String
    
    var video_image: Image {
        return Image("\(self.video_image_index)")
    }
}
