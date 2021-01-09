
import Foundation

class NetworkManager: ObservableObject {
    @Published var posts = [Post]()
    func fetchData(){
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url){
                (data,response,error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data{
                        do {
                            let results=try decoder.decode(Results.self, from: safeData)
                            self.posts=results.hits
                        } catch  {
                            print(error)
                        }
                    }
                }
            }
            .resume()
        }
    }
}

struct Results: Decodable{
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String
}
