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

var urlComponents = URLComponents(string: "https://api.nasa.gov/planetary/apod")!

urlComponents.queryItems = [
    URLQueryItem(name: "api_key", value: "DEMO_KEY"),
    URLQueryItem(name: "date", value: "2013-07-16")
]


Task {
    do {
        let (data, response) = try await URLSession.shared.data(from: urlComponents.url!)
        
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



























