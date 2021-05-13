//
//  ProblemCellView.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/5/12.
//

import SwiftUI

struct ProblemCellView: View {
    var problemCell: ProblemCellModel
    
    
    @State var problemSelectChosen: Int = 0
    @Binding var problemFillFulled: String
    
    var body: some View {
        if problemCell.problem_category == 1 {
            VStack(alignment: .center) {
                
                List {
                    Text(problemCell.problem_stem).italic().font(.title2)
                    HStack {
                        Text("A.")
                        Text(problemCell.problem_select_choice_A)
                    }.onTapGesture {
                        problemSelectChosen = 1
                    }.foregroundColor(
                        problemSelectChosen == 1 ? .blue : .primary
                    )
                    HStack {
                        Text("B.")
                        Text(problemCell.problem_select_choice_B)
                    }.onTapGesture {
                        problemSelectChosen = 2
                    }.foregroundColor(
                        problemSelectChosen == 2 ? .blue : .primary
                    )
                    HStack {
                        Text("C.")
                        Text(problemCell.problem_select_choice_C)                    }.onTapGesture {
                        problemSelectChosen = 3
                    }.foregroundColor(
                        problemSelectChosen == 3 ? .blue : .primary
                    )
                    HStack {
                        Text("D.")
                        Text(problemCell.problem_select_choice_D)
                    }
                    .onTapGesture {
                        problemSelectChosen = 4
                    }
                    .foregroundColor(
                        problemSelectChosen == 4 ? .blue : .primary
                    )
                }.listStyle(InsetGroupedListStyle())
//                .frame(width: nil, height: 500, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                Spacer()
                
//                Button("提交") {
//
//                }.buttonStyle(DefaultButtonStyle())
//                Spacer()
            }
        } else {
            VStack(alignment: .leading) {
                List {
                    Text(problemCell.problem_stem).italic().font(.title2)
                    TextField("输入答案", text: $problemFillFulled)
                        .padding(7)
                        .padding(.horizontal, 25)
                        .background(Color(.systemGray6))
                        .cornerRadius(8.0)
                        .padding(.horizontal, 10)
                }.listStyle(InsetGroupedListStyle())
                
            }
        }
    }
}

struct ProblemCellView_Previews: PreviewProvider {
    static var previews: some View {
        ProblemCellView(problemCell: myProblemCell1, problemFillFulled: .constant(""))
        ProblemCellView(problemCell: myProblemCell2, problemFillFulled: .constant(""))
    }
}
