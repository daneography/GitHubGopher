//
//  ContentView.swift
//  Gopher
//
//  Created by Dane Acena on 8/12/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var text: String = ""
    @State var commits = [Repo]()

    
    var body: some View {
        NavigationView{
            List(commits) { commit in
//                NavigationLink(destination: CommitDetails(commits: commit)){
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
//                }
            }.onAppear(){
            apiCall().getGitHubCommits{ (commits) in
                self.commits = commits
            }
        }.navigationTitle("Commits")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
