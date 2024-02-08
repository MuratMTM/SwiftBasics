import Foundation

struct Applicant: Equatable, Comparable, Codable {
    static func < (lhs: Applicant, rhs: Applicant) -> Bool {
        lhs.name < rhs.name
    }
    
    let name: String
    let title: String
    let usedProgram: String
    let experience: Int
    
    enum CodingKeys: String, CodingKey {
        case name
        case title
        case usedProgram
        case experience
    }
}

struct AnyCodingKey: CodingKey {
    var stringValue: String
    init(stringValue: String) {
        self.stringValue = stringValue
    }
    var intValue: Int? { nil }
    init?(intValue: Int) { nil }
}

let applicants: [Applicant] = [
    Applicant(name: "Jack Stream", title: "Mobile Developer", usedProgram: "Swift-Dart", experience: 1),
    Applicant(name: "Annie Walker", title: "Test Engineer", usedProgram: "Java", experience: 2),
    Applicant(name: "Stephen Cold", title: "Data Scientist", usedProgram: "Python-R", experience: 2),
    Applicant(name: "Jason Mark", title: "Jr.Business Analyst", usedProgram: "Power BI", experience: 0)
]

let jsonEncoder = JSONEncoder()
jsonEncoder.keyEncodingStrategy = .custom { codingKeys in
    let key: String
    if let anyCodingKey = codingKeys.last as? AnyCodingKey {
        key = anyCodingKey.stringValue
    } else {
        key = codingKeys.last!.stringValue
    }
    return AnyCodingKey(stringValue: key)
}

var encodedData: [Data] = []
for applicantData in applicants {
    if let jsonData = try? jsonEncoder.encode(applicantData) {
        encodedData.append(jsonData)
    }
}

let jsonDecoder = JSONDecoder()
var decodedApplicants: [Applicant] = []
for jsonData in encodedData {
    if let decodedApplicant = try? jsonDecoder.decode(Applicant.self, from: jsonData) {
        decodedApplicants.append(decodedApplicant)
    }
}

print(decodedApplicants)

