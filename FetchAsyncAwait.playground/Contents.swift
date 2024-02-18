import UIKit

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


func FetchPhotoInfo() async throws -> PhotoInfo {
    var urlComponent = URLComponents(string: "https://api.nasa.gov/planetary/apod")!
    urlComponent.queryItems = [
        URLQueryItem(name: "api_key" , value: "DEMO_KEY")
    ]
    let (data, response)  = try await URLSession.shared.data(from: urlComponent.url!)
    guard let httpResponse = response as? HTTPURLResponse,
          httpResponse.statusCode == 200 else
    {
        throw PhotoInfoError.itemNotFound
    }
      
    let myJsonDecoder = JSONDecoder()
    let photoInfo = try myJsonDecoder.decode(PhotoInfo.self, from: data)
    return photoInfo
       
}

enum PhotoInfoError: Error, LocalizedError{
    case itemNotFound
}

Task{
    do{
      let photoInfo = try await FetchPhotoInfo()
        print("photo succesfully fetched. \(photoInfo)")
    }catch{
       print("Fetch photoInfo failed with error: \(error) ")
    }
}



extension Data {
    func prettyPrintedJsonString(){
        guard let jsonObject = try? JSONSerialization.jsonObject(with: self, options: []),
              let jsonData = try? JSONSerialization.data(withJSONObject: jsonObject, options: [.prettyPrinted]),
              let prettyJsonString = String(data: jsonData, encoding: .utf8)else{
                  print("Failed to read json object.")
                    return
              }
            print(prettyJsonString)
        
    }
}



// MARK: Pretty Printed Json String
var urlComponent = URLComponents(string: "https://api.nasa.gov/planetary/apod")!
urlComponent.queryItems = [
    URLQueryItem(name: "api_key" , value: "DEMO_KEY")
]


Task{
    let (data, response)  = try await URLSession.shared.data(from: urlComponent.url!)
    if let httpResponse = response as? HTTPURLResponse,
          httpResponse.statusCode == 200{
        data.prettyPrintedJsonString()
          }
}
