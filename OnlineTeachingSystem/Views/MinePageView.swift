//
//  PersonalDetailsPageView.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/3/8.
//

import SwiftUI

struct MinePageView: View {
    @EnvironmentObject var details: MyDetails
        
    var userMineDetail: UserMineDetailModel
    
    var name:String = "张健浩"
    var major:String = "软件工程"
    var mcalss:String = "软件72班"
    
    var body: some View {
        NavigationView {
            List {
                HStack {
                    userMineDetail.user_image!
                        .resizable()
                        .frame(width: 80, height: 80, alignment: .center)
                        .imageScale(.small)
                        .clipShape(Circle())
                        .padding(.leading, 0)
                        .overlay(
                            Circle().stroke(lineWidth: 2.0)
                        )
                        .shadow(radius: 3)
                    Spacer(minLength: 100)
                    VStack(alignment: .leading) {
                        Text(userMineDetail.common_name)
                            .font(.title)
                        HStack {
                            Text("学号")
                            //                                Spacer()
                            Text(NSNumber(value: userMineDetail.user_id).stringValue)
                        }
                        HStack {
                            Text("\(userMineDetail.user_grade!)")
                            Text("年级")
                            //                                Spacer()
                            Text("\(userMineDetail.user_class!)")
                            Text("班")
                        }
                        //                            Text(uuser.user_desc!)
                        //                                .font(.body)
                    }
                }
                
                NavigationLink(destination: MyDetailsView(userMineDetail: userMineDetail), label: {
                        Text("个人信息")
                    })                
                NavigationLink(
                    destination: CoursesList(coursesList: myCoursesList, titleName: "我的课程"),
                    label: {
                        Text("我的课程")
                    })
                NavigationLink(
                    destination: Text("Destination"),
                    label: {
                        Text("我的学习记录")
                    })
                NavigationLink(
                    destination: Text("Destination"),
                    label: {
                        Text("我的成绩分析")
                    })
                NavigationLink(
                    destination: Text("Destination"),
                    label: {
                        Text("设置")
                    })
            }
            .navigationBarTitle(Text("我的主页").font(.title), displayMode: NavigationBarItem.TitleDisplayMode.inline)
        }
        
//            .navigationBarTitle("我的")
//            .navigationBarItems(
//                leading:Button(action: {}, label: {
//                    Text("Button")
//                })
//            )
            //.navigationBarItems()
    }
}

struct MyDetailsPageView_Previews: PreviewProvider {
    static var previews: some View {
        MinePageView(userMineDetail: myUserMineDetail)
    }
}
