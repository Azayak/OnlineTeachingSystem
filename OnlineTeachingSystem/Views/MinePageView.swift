//
//  PersonalDetailsPageView.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/3/8.
//

import SwiftUI

struct MinePageView: View {
//    @EnvironmentObject var details: MyDetails
    
    @EnvironmentObject var userMineViewModel: UserMineViewModel
    
    var body: some View {
        NavigationView {
            List {
                HStack {
//                    userMineDetail.user_image
                    userMineViewModel.userMineDetail.user_image
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
                        Text(userMineViewModel.userMineDetail.common_name)
                            .font(.title)
                        HStack {
                            Text("id:")
                            //                                Spacer()
                            Text(NSNumber(value: userMineViewModel.userMineDetail.user_id).stringValue)
                        }
                        if(userMineViewModel.userMineDetail.role_category == 1) {
                            HStack {
                                Text("\(userMineViewModel.userMineDetail.user_grade)")
                                Text("年级")
                                //                                Spacer()
                                Text("\(userMineViewModel.userMineDetail.user_class)")
                                Text("班")
                            }
                        } else if(userMineViewModel.userMineDetail.role_category == 2) {
                            Text("教师用户")
                        } else if(userMineViewModel.userMineDetail.role_category == 3) {
                            Text("管理员用户")
                        }
                        //                            Text(uuser.user_desc!)
                        //                                .font(.body)
                    }
                }
                
                NavigationLink(destination: MyDetailsView().environmentObject(userMineViewModel), label: {
                        Text("个人信息")
                    })                
                NavigationLink(
                    destination: CoursesListView(titleName: "我的课程")
                        .environmentObject(CoursesViewModel.init(userMineViewModel.userMineDetail.user_id))
                    ,
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
        MinePageView().environmentObject(UserMineViewModel(user_id: 10001))
    }
}
