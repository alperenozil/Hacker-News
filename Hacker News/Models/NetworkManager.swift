
import Foundation

class NetworkManager: ObservableObject {
    @Published var posts = [Post]()
    func fetchData(){
        if let url = URL(string: "https://dev-shop.cermepos.com/api/product/50"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url){
                (data,response,error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data{
                        do {
                            let results=try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async{
                                self.posts=results.data.content
                                
                            }
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


