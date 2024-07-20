import UIKit

func merge(sea: [String], fresh: [String] ) -> [String] {
    var wholeFishList: [String] = []
   
    wholeFishList = sea + fresh
    
    var iteratedFishList: [String] = []
    
    while (!wholeFishList.isEmpty) {
        var minIndex: Int = 0
        var minValue = wholeFishList[0]
        
        for (index, value) in wholeFishList.enumerated(){
            if minValue > value {
                minValue = value
                minIndex = index
            }
        }
        iteratedFishList.append(minValue)
        iteratedFishList.remove(at: minIndex)
        
    }
    
    

    
   
}


var sea: [String] = ["arita", "baraka", "tasire", "azake"]
var fresh: [String] = ["dekaa","abbop","certa"]

merge(sea: sea, fresh: fresh)





