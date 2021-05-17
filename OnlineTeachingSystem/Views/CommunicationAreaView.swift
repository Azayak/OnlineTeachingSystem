//
//  CommunicationAreaView.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/5/17.
//

import SwiftUI

struct CommunicationAreaView: View {
    @EnvironmentObject var communicationAreaViewModel: CommunicationAreaViewModel
    
    @State var searchText: String = ""
    @State var isEditing: Bool = false
    
    @State var showPostView: Bool = false
    @State var postTitle: String = ""
    @State var postContent: String = ""
    @State var emptyAlert: Bool = false
    
    var body: some View {
        ZStack {
            Rectangle().frame(width: nil, height: nil, alignment: .center).foregroundColor(.gray.opacity(0.3)).ignoresSafeArea(.all, edges: .vertical)
            VStack {
                HStack {
                    SearchBar(text: $searchText, isEditing: $isEditing)
                    Button(action: {
                        showPostView = true
                    }, label: {
                        Image(systemName: "plus").imageScale(.large)
                    }).sheet(isPresented: $showPostView) {
                        VStack {
                            HStack(alignment: .bottom) {
                                Button(action: {
                                    showPostView = false
                                }, label: {
                                    Text("取消").font(Font.system(size: 20, weight: .heavy, design: .rounded))
                                }).offset(x: 10)
                                Spacer()
                                Text("编辑帖子内容").font(Font.system(size: 25, weight: .heavy, design: .rounded))
                                Spacer()
                                Button(action: {
                                    if(postTitle != "" && postContent != "") {
                                        communicationAreaViewModel.postTopic(topic_title: postTitle, topic_content: postContent)
                                        postTitle = ""
                                        postContent = ""
                                        showPostView = false
                                    } else {
                                        emptyAlert = true
                                    }
                                    
                                }, label: {
                                    Text("发布").font(Font.system(size: 20, weight: .heavy, design: .rounded))
                                })
                                .offset(x: -10)
//                                .popover(isPresented: $emptyAlert) {
//                                    Text("标题和内容不能为空")
//                                }
                                .alert(isPresented: $emptyAlert, content: {
                                    Alert(title: Text("警告"), message: Text("标题和内容不能为空"), dismissButton: .default(Text("我知道了")))
                                })
                                
                            }.padding(6)
                            Divider()
                            TextField("请输入标题", text: $postTitle).multilineTextAlignment(.leading).font(Font.system(size: 20, weight: .heavy, design: .rounded)).padding()
                            Divider()
                            TextField("从这里开始分享", text: $postContent).multilineTextAlignment(.leading).font(Font.system(size: 20, weight: .heavy, design: .rounded)).padding()
                            Spacer()
                        }
                    }
                    Spacer(minLength: 10)
                }.padding(1).offset(y: 10)
                ScrollView {
                    ZStack {
                        Rectangle().frame(width: nil, height: nil, alignment: .center).foregroundColor(.white)
                        VStack(spacing: 5) {
                            HStack(alignment: .bottom) {
                                Text(communicationAreaViewModel.communicationAreaModel.area_name).font(Font.system(size: 30, weight: .heavy, design: .rounded))
                                Spacer()
                                if(communicationAreaViewModel.areaStudentModel.student_id == 0) {
                                    Text("未加入讨论区，请先加入课程")
                                } else {
                                    Text("已加入讨论区")
                                }
                            }
                            Divider()
                            HStack {
                                Text("讨论区id：")
                                Text(NSNumber(value: communicationAreaViewModel.communicationAreaModel.area_id).stringValue)
                                Spacer()
                                Text("所属课程id：")
                                Text(NSNumber(value: communicationAreaViewModel.communicationAreaModel.course_id).stringValue)
                            }
                            Divider()
                            Text(communicationAreaViewModel.communicationAreaModel.area_desc).lineLimit(3)
                        }
                        .frame(width: nil, height: nil, alignment: .center)
                        .padding()
                    }
                    
                    ForEach(communicationAreaViewModel.topicCellModels, id: \.self.topicModel.topic_id) { topicCell in
                        TopicCellView(topicCellModel: topicCell)
                        TopicCellView(topicCellModel: topicCell)
                        TopicCellView(topicCellModel: topicCell)
                    }
                    
                    Spacer()
                }.offset(y: 10)
            }
            
        }
    }
}

struct TopicCellView: View {
    var topicCellModel: TopicCellModel
    var body: some View {
        ZStack {
            Rectangle().frame(width: nil, height: 225, alignment: .center).foregroundColor(.white)
            VStack {
                HStack {
                    topicCellModel.ownerModel.user_image
                        .resizable()
                        .frame(width: 30, height: 30, alignment: .center)
                        .imageScale(.small)
                        .clipShape(Circle())
                        .padding(.leading, 0)
                        .overlay(
                            Circle().stroke(lineWidth: 2.0)
                        )
                        .shadow(radius: 3)
                    Text(topicCellModel.ownerModel.common_name)
                }.offset(x: -130, y: 8)
                Divider()
                VStack(alignment: .leading) {
                    Text(topicCellModel.topicModel.topic_title).font(Font.system(size: 25, weight: .semibold, design: .rounded)).lineLimit(1)
                    Text(topicCellModel.topicModel.topic_content).font(Font.system(size: 18, weight: .thin, design: .monospaced)).lineLimit(3).padding(10)
                }.frame(width: nil, height: 123, alignment: .center)
                Divider()
                HStack {
                    Spacer(minLength: 5)
                    HStack {
                        Image(systemName: "bubble.left").font(Font.system(size: 20))
                        Text("\(topicCellModel.topicModel.topic_comment_count)").font(Font.system(size: 25, design: .rounded))
                    }
                    Spacer(minLength: 130)
                    HStack {
                        Image(systemName: "hand.thumbsup").font(Font.system(size: 20))
                        Text("\(topicCellModel.topicModel.topic_like_count)").font(Font.system(size: 25, design: .rounded))
                    }
                    Spacer(minLength: 5)
                }.frame(width: nil, height: nil, alignment: .center).offset(y: -4)
//                Spacer()
            }
        }.frame(width: nil, height: 225, alignment: .center)
    }
}

struct CommunicationAreaView_Previews: PreviewProvider {
    static var previews: some View {
        CommunicationAreaView().environmentObject(CommunicationAreaViewModel.init(user_id: 10001, area_id: 60001))
//        TopicCellView(topicCellModel: CommunicationAreaViewModel.init(user_id: 10001, area_id: 60001).topicCellModels[0])
    }
}
