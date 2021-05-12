//
//  VideoDetailView.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/5/11.
//

import SwiftUI

struct VideoDetailView: View {
    var student: UserMineDetailModel
    var courseCell: CourseCellModel
    var videoCell: VideoCellModel
    var studentVideo: StudentVideoModel
    
    var video_length: Float {
        Float(videoCell.video_length) / 1000 / 60
    }
    
    func lengthToMin(length: Int) -> Float {
        return Float(videoCell.video_length) / 1000 / 60
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Rectangle()
                .frame(width: nil, height: 200, alignment: .top)
            Divider()
            HStack(alignment: .bottom) {
                Text(courseCell.course_name).font(.title2)
                    .foregroundColor(.primary).offset(x: 20)
                Spacer()
                Text(videoCell.video_name).offset(x: -20)
            }
            Divider()
            Text(videoCell.video_desc).lineLimit(5).font(.body).foregroundColor(.secondary)
            Divider()
            
            Group {
                Text("视频学习信息").font(.title2)
                HStack {
                    Text("视频总时长：")
                    Text(NSNumber(value: lengthToMin(length: videoCell.video_length)).stringValue)
                    Text("分钟")
                    Spacer()
                    Text("已观看时长：")
                    Text(NSNumber(value: lengthToMin(length: studentVideo.studyLength)).stringValue)
                    Text("分钟")
                }
                HStack {
                    Text("上次观看点：")
                    Text(NSNumber(value: lengthToMin(length: studentVideo.lastTimePoint)).stringValue)
                    Text("分钟")
                    Spacer()
    //                Text("已观看时长：")
    //                Text(NSNumber(value: lengthToMin(length: studentVideo.studyLength)).stringValue)
    //                Text("分钟")
                }
            }.foregroundColor(.blue)
            Divider()
            NavigationLink(
                destination: Text("讨论区"),
                label: {
                    Text("前往讨论区").font(.subheadline)
                })
//            NavigationView {
//                NavigationLink(
//                    destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
//                    label: {
//                        /*@START_MENU_TOKEN@*/Text("Navigate")/*@END_MENU_TOKEN@*/
//                    })
//            }
            
            Spacer()
        }
    }
}

struct VideoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VideoDetailView(student: myUserMineDetail,courseCell: myCourseCell, videoCell: myVideoCell, studentVideo: myStudentVideo)
    }
}
