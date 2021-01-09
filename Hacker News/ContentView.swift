//
//  ContentView.swift
//  Hacker News
//
//  Created by Necdet Alperen Özil on 7.01.2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager=NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts) { item in
                Text(item.id)
                    .padding()
            }.navigationTitle("Hacker News")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 300, height: 600))
    }
}


