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
        VStack {
            VStack(alignment: .center) {
                Text("Hello, this is GitHubGopher")
                    .font(.title)
                Text("I talk to GitHub API and show you stuff.")
                    .font(.subheadline)
                
                TextField("Type in Repository", text: $text)
                    .padding(10)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 0.5)
            }
            .padding()
            
            
            Button(action: {
                print(text) // adding $
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
