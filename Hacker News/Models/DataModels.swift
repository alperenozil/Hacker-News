
import Foundation
struct Results: Decodable{
    var data: data
}

struct data: Decodable{
    var content: [Post]
}

struct Post: Decodable, Identifiable {

    var id: Int
    let shopId: Int
    let barcodeNumber: String
    let name: String
}
