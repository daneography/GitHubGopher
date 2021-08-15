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
        VStack {
            VStack(alignment: .center) {
                Text("Hello, this is GitHubGopher")
                    .font(.title)
                Text("I talk to GitHub API and show you stuff.")
                    .font(.subheadline)
                
                TextField("Type in Repository", text: $text)
                    .padding(10)
                    .border(Color.black, width: 0.5)
            }
            .padding()
            
            
            Button(action: {
                print(text)
            }) {
                Text("Search")
                    .padding(10)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
        }
        NavigationView{
            List(commits) { commit in
                VStack() {
                    Text(commit.commit.author.name)
                    Text(commit.sha)
                    Text(commit.commit.message)
                }
            }
        }
        .onAppear(){
            apiCall().getGitHubCommits{ (commits) in
                self.commits = commits
            }
        }.navigationTitle("")
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


