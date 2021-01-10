
import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager=NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts) { item in
                Text(item.title)
                    .padding()
            }.navigationTitle("Hacker News")
        }.onAppear{
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 300, height: 600))
    }
}


