//
//  TheDetails.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/3/8.
//
import Foundation
import SwiftUI

struct MyDetailsView: View {
    @State var isEditing: Bool = false
    
    let titleName: String = "个人信息"
    
//    var user: UserEntity
    var userMineDetail: UserMineDetailModel
    
    var gender: String {
        if userMineDetail.user_gender == 0 {
            return "男"
        } else {
            return "女"
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                HStack {
                    Text("我的用户名")
                    Spacer()
                    Text(userMineDetail.user_name)
                }
                HStack {
                    Text("我的头像")
                    Spacer()
                    userMineDetail.user_image!
                        .resizable()
                        .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .imageScale(.small)
                        .clipShape(Circle())
                        .padding(.leading, 0)
                        .overlay(
                            Circle().stroke(lineWidth: 2.0)
                        )
                        .shadow(radius: 3)
                }
                HStack {
                    Text("我的姓名")
                    Spacer()
                    Text(userMineDetail.common_name)
                }
                HStack {
                    Text("我的ID")
                    Spacer()
//                    Text("\(userMineDetail.user_id)")
                    Text(NSNumber(value: userMineDetail.user_id).stringValue)
                }
                HStack {
                    Text("我的简介")
                    Spacer()
                    Text(userMineDetail.user_desc!)
                }
                HStack {
                    Text("我的性别")
                    Spacer()
                    Text(gender)
                }
            }
            .ignoresSafeArea(edges: .top)
            .listStyle(SidebarListStyle())
            .navigationTitle(self.titleName)
            
            
        }
        
        .navigationBarItems(trailing: Button(action: {
            self.isEditing = true
        }, label: {
            Text("编辑")
        }))
    }
}

struct TheDetails_Previews: PreviewProvider {
    static var previews: some View {
        MyDetailsView(userMineDetail: myUserMineDetail)
    }
}
