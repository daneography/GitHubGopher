//
//  CommitDetails.swift
//  Gopher
//
//  Created by Dane Acena on 8/15/21.
//

import SwiftUI

struct CommitDetails: View {
    var body: some View{
        VStack(alignment: .leading){
            Text("Hash: ABC123")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Text("By: Jon Dow")
                .font(.subheadline)
            Text("Lorem Ipsum")
                .font(.body)
            
        }
    }
}

struct CommitDetails_Previews: PreviewProvider {
    static var previews: some View {
        CommitDetails()
    }
}
