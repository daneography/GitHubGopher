//
//  CommitDetails.swift
//  Gopher
//
//  Created by Dane Acena on 8/15/21.
//

import SwiftUI

struct CommitDetails: View {
    var commit: Repo
    
    var body: some View{
        VStack(alignment: .leading){
            Text(commit.sha)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Text(commit.commit.author.name)
                .font(.subheadline)
            Text(commit.commit.message)
                .font(.body)
            
        }
    }
}

struct CommitDetails_Previews: PreviewProvider {
    static var previews: some View {
        CommitDetails(commit: repository[0])
    }
}
