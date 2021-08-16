//
//  commitRow.swift
//  Gopher
//
//  Created by Dane Acena on 8/15/21.
//

import SwiftUI

struct CommitRow: View{
    var commit: Repo
//    @State var repository = [Repo]()
    
    var body: some View {
            VStack(alignment: .leading){
                Text(commit.sha)
                    .fontWeight(.heavy)
                    .font(.title2)
                    .lineLimit(1)
                Text("By \(commit.commit.author.name)")
                    .font(.subheadline)
                Text(commit.commit.message)
                    .font(.body)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
            }
        }
    }

//struct CommitRow_Previews: PreviewProvider{
//    static var previews: some View {
//        Group{
//            CommitRow(commit: repository[0])
//        }
//    }
//}



