import Foundation

struct Jobs {
    let salary: Int
    let isRemote: Bool?
    let providesService: Bool?
    let mealCard: Int?
    
    init(salary: Int, isRemote: Bool? = nil, providesService: Bool? = nil, mealCard: Int? = nil) {
        self.salary = salary
        self.isRemote = isRemote
        self.providesService = providesService
        self.mealCard = mealCard
    }
    
    func filterJobs(){
        
        // Force Unwrapping (It should almost never be used!)
        if !isRemote! {
            print("Do you have a service support?")
        }
        
        // Optional Binding
        if let service = providesService {
            if service {
                print("There is a service support, you should think about it.")
            }else{
                print("Not having service can not be acceptable!")
            }
        }
        
        // Optional Binding
        guard let mealCardAmount = mealCard else {
            return
        }
        
        if mealCardAmount < 10000 {
            print("\(mealCardAmount) tl is not enough for me to eat for a month.")
        }
        
    }
}

var mobileAppDeveloper = Jobs(salary: 50000, isRemote: false, providesService: true, mealCard: 9000)

mobileAppDeveloper.filterJobs()
