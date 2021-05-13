//
//  TabBarView.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/3/9.
//

import SwiftUI

struct TabBarView: View {
    
    @EnvironmentObject var userMineViewModel: UserMineViewModel

    @State var searchText:String = ""

    @State var isMianMenuViewAppear: Bool = true
    @State var isMianMenuAppear: Bool = true
    @State var isPersonalDetailsViewAppear: Bool = true
    
    var body: some View {
        TabView {
            MainMnueView(searchText: $searchText)
                .tabItem {
                    Image(systemName: "house").imageScale(.large)
                    Text("首页")
                }
            CoursesListView(titleName: "课程列表")
                .environmentObject(CoursesViewModel.init())
                .tabItem {
                    Image(systemName: "book").imageScale(.large)
                    Text("课程")
                }
            CoursesListView(titleName: "讨论区列表")
                .environmentObject(CoursesViewModel.init())
                .tabItem {
                    Image(systemName: "message").imageScale(.large)
                    Text("讨论区")
                }
            MinePageView().environmentObject(userMineViewModel)
                .tabItem {
                    Image(systemName: "person").imageScale(.large)
                    Text("我的")
                }
        }
    }
        
}

//struct TabBarView_Previews: PreviewProvider {
//    static var previews: some View {
//        TabBarView()
//    }
//}
