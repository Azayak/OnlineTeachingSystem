//
//  CourseDetailView.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/5/10.
//

import SwiftUI

struct CourseDetailView: View {
    @EnvironmentObject var courseDetailViewModel: CourseDetailViewModel
    
    @State var showCourseDetail: Bool = false
    @State var showUserDetail: Bool = false
    @State var showVideosDetail: Bool = false
    @State var showCommunicationArea: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            ZStack {
                RoundedRectangle(cornerRadius: 15.0)
                    .frame(width: nil, height: 140, alignment: .center)
                    .foregroundColor(.secondary.opacity(0.25))
                HStack {
                    courseDetailViewModel.courseDetail.courseCell.course_image!
                        .resizable()
                        .frame(width: 100, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .cornerRadius(10.0)
                        .shadow(color: Color.black.opacity(0.5),radius: 5.0, x: 0, y: 0)
                    Spacer()
                    VStack(alignment: .leading) {
                        Text(courseDetailViewModel.courseDetail.courseCell.course_name)
                            .font(Font.system(size: 30, weight: .black, design: .monospaced))
                        Text(courseDetailViewModel.courseDetail.courseCell.course_desc).lineLimit(2).font(Font.system(size: 18))
                        HStack {
                            Text("教师")
                            Text(courseDetailViewModel.courseDetail.teacherDetail.common_name)
                        }.font(.title2)
                    }
                }
                .frame(width: nil, height: 120, alignment: .center)
            }

            Group {
                HStack {
                    Text("课程简介").font(.title).foregroundColor(.primary).offset(x: 20, y: 0)
                    Spacer()
                    Image(systemName: "control").foregroundColor(.primary).rotationEffect(Angle.degrees(showCourseDetail ? 0 : 180)).offset(x: -20, y: 0)
                }.onTapGesture {
                    showCourseDetail = !showCourseDetail
                }
                if(showCourseDetail) {
                    Group {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3).frame(width: nil, height: 140, alignment: .center).foregroundColor(.secondary).shadow(radius: 20).padding(5)
                            VStack {
                                HStack {
                                    Text("课程名称：")
                                    Spacer()
                                    Text(courseDetailViewModel.courseDetail.courseCell.course_name)
                                    Spacer()
                                }.font(Font.system(size: 20))
                                HStack {
                                    Text("课程ID：")
                                    Spacer()
                                    Text(NSNumber(value: courseDetailViewModel.courseDetail.courseCell.course_id).stringValue)
                                    Spacer()
                                }.font(Font.system(size: 20))
                                HStack {
                                    Text("课程教师：")
                                    Spacer()
                                    Text(courseDetailViewModel.courseDetail.teacherDetail.common_name)
                                    Spacer()
                                }.font(Font.system(size: 20))
                                HStack {
                                    Text("面向年级：")
                                    Spacer()
                                    Text("\(courseDetailViewModel.courseDetail.courseCell.course_grade)")
                                    Text("年级")
                                    Spacer()
                                }.font(Font.system(size: 20))
                                HStack {
                                    Text("课程类别：")
                                    Spacer()
                                    Text(courseDetailViewModel.courseDetail.courseCell.course_common_category_name)
                                    Spacer()
                                }.font(Font.system(size: 20))
                            }.padding().frame(width: nil, height: 140, alignment: .center)
                        }
                    }
                }
            }
            
            Group {
                HStack {
                    Text("我的信息").font(.title).foregroundColor(.primary).offset(x: 20, y: 0)
                    Spacer()
                    Image(systemName: "control").foregroundColor(.primary).rotationEffect(Angle.degrees(showUserDetail ? 0 : 180)).offset(x: -20, y: 0)
                }.onTapGesture {
                    showUserDetail = !showUserDetail
                }
                if(showUserDetail) {
                    Group {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3).frame(width: nil, height: 140, alignment: .center).foregroundColor(.secondary).shadow(radius: 20).padding(5)
                            VStack {
                                HStack {
                                    Text("我的姓名：")
                                    Spacer()
                                    Text(courseDetailViewModel.courseDetail.studentDetail.common_name)
                                    Spacer()
                                }.font(Font.system(size: 20))
                                HStack {
                                    Text("我的ID：")
                                    Spacer()
                                    Text(NSNumber(value: courseDetailViewModel.courseDetail.studentDetail.user_id).stringValue)
                                    Spacer()
                                }.font(Font.system(size: 20))
                                HStack {
                                    Text("我的年级：")
                                    Spacer()
                                    Text("\(courseDetailViewModel.courseDetail.studentDetail.user_grade)")
                                    Text("年级")
                                    Spacer()
                                }.font(Font.system(size: 20))
                                HStack {
                                    Text("是否加入课程：")
                                    Spacer()
                                    if(courseDetailViewModel.courseDetail.courseStudent.student_id == 0 || courseDetailViewModel.courseDetail.courseStudent.course_id == 0) {
                                        Text("未加入课程")
                                    } else if(courseDetailViewModel.courseDetail.courseStudent.apply_premission == 0) {
                                        Text("已申请，待教师审核")
                                    } else {
                                        Text("已加入课程")
                                    }
                                    Spacer()
                                }.font(Font.system(size: 20))
                            }.padding().frame(width: nil, height: 140, alignment: .center)
                        }
                    }
                }
            }
            
            Group {
                HStack {
                    Text("课程视频信息").font(.title).foregroundColor(.primary).offset(x: 20, y: 0)
                    Spacer()
                    Image(systemName: "control").foregroundColor(.primary).rotationEffect(Angle.degrees(showVideosDetail ? 0 : 180)).offset(x: -20, y: 0)
                }.onTapGesture {
                    showVideosDetail = !showVideosDetail
                }.fullScreenCover(isPresented: $showVideosDetail) {
                    HStack {
                        Button("返回") {
                            self.showVideosDetail = false
                        }.offset(x: 30)
                        Spacer()
                        Text("课程视频").font(.title).offset(x: -140)
                    }
                    ScrollView {
                        VStack {
                            ForEach(courseDetailViewModel.courseDetail.videosList) { video in
                                ForEach(courseDetailViewModel.courseDetail.studentVideo) { sv in
                                    if(video.video_id == sv.video_id) {
                                        VideoCellView(videoCellModel: video, studentVideo: sv)
                                    }
                                }
                            }
                        }
                    }
                }
            }

            Group {
                HStack {
                    Text("前往讨论区").font(.title).foregroundColor(.primary).offset(x: 20, y: 0)
                    Spacer()
                    Image(systemName: "control").foregroundColor(.primary).rotationEffect(Angle.degrees(showCommunicationArea ? 0 : 180)).offset(x: -20, y: 0)
                }
                .onTapGesture {
                    showCommunicationArea = !showCommunicationArea
                }
                .fullScreenCover(isPresented: $showCommunicationArea) {
                    HStack {
                        Button("返回") {
                            self.showCommunicationArea = false
                        }.offset(x: 30)
                        Spacer()
                        Text("讨论区").font(.title).offset(x: -150)
                    }
                    CommunicationAreaView().environmentObject(CommunicationAreaViewModel.init(user_id: courseDetailViewModel.courseDetail.studentDetail.user_id, course_id: courseDetailViewModel.courseDetail.courseCell.course_id))
                    Spacer()
                }
            }
            
            

            
            
//            NavigationLink(
//                destination: CommunicationAreaView().environmentObject(CommunicationAreaViewModel.init(user_id: courseDetailViewModel.courseDetail.studentDetail.user_id, course_id: courseDetailViewModel.courseDetail.courseCell.course_id))
//                ,
//                label: {
//                    Button(action: {}, label: {
//                        Text("前往讨论区")
//                    })
//
//                })
            
            
            Spacer()
        }
    }
}

struct VideoCellView: View {
    
    var videoCellModel: VideoCellModel
    var studentVideo: StudentVideoModel
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: nil, height: 160, alignment: .center)
                .foregroundColor(
                    studentVideo.studyLength == 0 && studentVideo.lastTimePoint == 0 ? Color.secondary : Color.secondary.opacity(0.2)
                )
            HStack {
                Spacer(minLength: 20)
                videoCellModel.video_image
                    .resizable()
                    .frame(width: 120, height: 140, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .cornerRadius(10.0)
                    .shadow(color: Color.black.opacity(0.5),radius: 5.0, x: 0, y: 0)
                Spacer(minLength: 20)
                VStack(alignment: .leading, spacing: 5) {
                    Text(videoCellModel.video_name)
                    HStack {
                        Text("总时长：")
                        Spacer()
                        Text(lengthToStringMinSecond(length: videoCellModel.video_length))
                    }
                    HStack {
                        Text("已学习：")
                        Spacer()
                        Text(lengthToStringMinSecond(length: studentVideo.studyLength))
                    }
                    HStack {
                        Text("上次观看到：")
                        Spacer()
                        Text(lengthToStringMinSecond(length: studentVideo.lastTimePoint))
                    }
                }
                .padding(10)
                .font(Font.system(size: 18))
            }
        }
        
    }
}

struct CourseDetailView_Previews: PreviewProvider {
    static var previews: some View {
          CourseDetailView().environmentObject(CourseDetailViewModel(user_id: 10001, course_id: 20001))
        VideoCellView(
            videoCellModel: VideoCellModel(video_id: db_single_video1.video_id, course_id: db_single_video1.course_id, video_name: db_single_video1.video_name, video_length: db_single_video1.video_length, video_image_index: db_single_video1.video_image_index, video_desc: db_single_video1.video_desc),
            studentVideo: StudentVideoModel(student_id: db_single_student_video1.student_id, video_id: db_single_student_video1.video_id, studyLength: db_single_student_video1.study_length, lastTimePoint: db_single_student_video1.last_time_point)
        )
    }
}
