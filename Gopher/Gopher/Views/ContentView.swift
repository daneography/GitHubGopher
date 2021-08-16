//
//  ContentView.swift
//  Gopher
//
//  Created by Dane Acena on 8/12/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var text: String = ""

    
    var body: some View {
        Text("Hello World")
//        List(commits) { commit in
//            VStack(alignment: .leading) {
//                Text(commit.commit.author.name)
//                Text(commit.sha)
//                Text(commit.commit.message)
//            }
//        }.onAppear(){
//            apiCall().getGitHubCommits{ (commits) in
//                self.commits = commits
//            }
//        }.navigationTitle("Commits")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


