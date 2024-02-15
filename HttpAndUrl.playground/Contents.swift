import UIKit
import SwiftData

let url = URL(string: "https://www.samsung.com")!

Task{
    let (data, response) = try await URLSession.shared.data(from: url)
    
    if let httpResponse = response as? HTTPURLResponse,
       httpResponse.statusCode == 200,
       let string = String(data: data, encoding: .utf8)
    {
        print(string)
    }
}


let nasaURl = URL(string: "https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY")!

Task{
    let (data, response) = try await URLSession.shared.data(from: nasaURl)
    if let httpResponse = response as? HTTPURLResponse,
       httpResponse.statusCode == 200,
       let string = String(data: data, encoding: .utf8)
    {
        print(string)
    }
    else{
        print("hata var")
    }
}

// MARK: - URLComponents

var urlComponentss = URLComponents(string: "https://api.nasa.gov/planetary/apod")!

urlComponentss.queryItems = [
    URLQueryItem(name: "api_key", value: "DEMO_KEY"),
    URLQueryItem(name: "date", value: "2013-07-16")
]

Task {
    do {
        let (data, response) = try await URLSession.shared.data(from: urlComponentss.url!)
        
        if let httpResponse = response as? HTTPURLResponse,
           httpResponse.statusCode == 200,
           let string = String(data: data, encoding: .utf8) {
            print(string)
        } else {
            print("Error happened")
        }
    } catch {
        print("Error: \(error)")
    }
}



// MARK: JSON Decoding- Converting JSON to Swift

struct PhotoInfo: Codable {
    var title: String
    var description: String
    var url: URL
    var copyright: String?
    
    enum CodingKeys: String, CodingKey {
        case title
        case description = "explanation"
        case url
        case copyright
    }
}


var urlComponents2 = URLComponents(string: "https://api.nasa.gov/planetary/apod")!

urlComponents2.queryItems = [
    URLQueryItem(name: "api_key", value: "DEMO_KEY"),
    
]

Task {
    do {
        let (data, response) = try await URLSession.shared.data(from: urlComponents2.url!)
        
        let jsonDecoder = JSONDecoder()
        
        if let httpResponse = response as? HTTPURLResponse,
           httpResponse.statusCode == 200 {
            let photoInfo = try? jsonDecoder.decode(PhotoInfo.self, from: data)
            print(photoInfo ?? "Veri Gelmedi")
        }
    } catch {
        print("Error: \(error)")
    }
}






















