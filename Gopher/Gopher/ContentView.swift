//
//  ContentView.swift
//  Gopher
//
//  Created by Dane Acena on 8/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Hello, this is GitHubGopher")
                    .font(.title)
                Text("I talk to GitHub API and show you stuff.")
                    .font(.subheadline)
            }
            .padding()
            
            Button(action: {
                print("Search Button Tapped")
            }) {
                Text("Search")
                    .padding(10)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
