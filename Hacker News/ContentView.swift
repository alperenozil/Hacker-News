//
//  ContentView.swift
//  Hacker News
//
//  Created by Necdet Alperen Özil on 7.01.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List(posts) { item in
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

struct Post : Identifiable {
    let id: String
    let title: String
}

let posts=[
    Post(id:"1",title:"first"),
    Post(id:"2",title:"second"),
    Post(id:"3",title:"third"),
    Post(id:"4",title:"fourth"),
    Post(id:"5",title:"fifth"),
    Post(id:"6",title:"sixth"),
    Post(id:"7",title:"seventh"),
    Post(id:"8",title:"eighth")
]
