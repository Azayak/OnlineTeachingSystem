//
//  TheDetails.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/3/8.
//
import Foundation
import SwiftUI

struct MyDetailsView: View {
    @EnvironmentObject var userMineViewModel: UserMineViewModel
    @State private var editMode: EditMode = .inactive
    
    let titleName: String = "个人信息"
    
//    var user: UserEntity
    
    var gender: String {
        if userMineViewModel.userMineDetail.user_gender == 0 {
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
//                    Text(userMineDetail.user_name)
                    Text(userMineViewModel.userMineDetail.user_name)
                }
                HStack {
                    Text("我的ID")
                    Spacer()
//                    Text("\(userMineDetail.user_id)")
                    Text(NSNumber(value: userMineViewModel.userMineDetail.user_id).stringValue)
                }
                HStack {
                    Text("我的头像")
                    Spacer()
                    userMineViewModel.userMineDetail.user_image
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
                    Text("我的性别")
                    Spacer()
                    Text(gender)
                }
                HStack {
                    Text("我的常用名")
                    Spacer()
//                    Text(userMineDetail.common_name)
                    EditableText(userMineViewModel.userMineDetail.common_name, isEditing: editMode.isEditing) { commonName in
                        userMineViewModel.setCommonName(commonName)
                    }
                }
                HStack {
                    Text("我的简介")
                    Spacer()
                    EditableText(userMineViewModel.userMineDetail.user_desc, isEditing: editMode.isEditing) { userDesc in
                        userMineViewModel.setDesc(userDesc)
                    }
                }
            }
            .ignoresSafeArea(edges: .top)
            .listStyle(SidebarListStyle())
            .navigationTitle(self.titleName)
            .navigationBarItems(trailing: EditButton())
            .environment(\.editMode, $editMode)
            
        }
    }
}

struct TheDetails_Previews: PreviewProvider {
    static var previews: some View {
        MyDetailsView().environmentObject(UserMineViewModel(user_id: 10001))
    }
}
