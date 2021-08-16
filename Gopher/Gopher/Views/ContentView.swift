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
        CommitList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
