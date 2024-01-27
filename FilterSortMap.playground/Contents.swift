import UIKit

struct BanksInTurkey {
    let bankName: String
    let isStateBank: Bool
    let customerCount: Int
    
}

var someBanksInTurkey: [BanksInTurkey] = [
    
    BanksInTurkey(bankName: "YapıKredi", isStateBank: false, customerCount: 20000000),
    BanksInTurkey(bankName: "VakıfBank",isStateBank: true, customerCount: 12000000),
    BanksInTurkey(bankName: "Akbank",isStateBank: false, customerCount: 12500000),
    BanksInTurkey(bankName: "DenizBank", isStateBank: false, customerCount: 14000000),
]
//filtration
var stateOwnedBanks: [BanksInTurkey] = []

for banks in someBanksInTurkey {
    if banks.isStateBank {
        stateOwnedBanks.append(banks)
    }
}

print(stateOwnedBanks)


//shorter way
var privateBanks: [BanksInTurkey] = someBanksInTurkey.filter { banks in
    if !(banks.isStateBank) {
        return true
    }
    return false
}
print(privateBanks)

//shortest way
var privateBanks2: [BanksInTurkey] = someBanksInTurkey.filter {!($0.isStateBank)}

print(privateBanks2)

//sorting
var orderByCustomerCount: [BanksInTurkey] = someBanksInTurkey.sorted { firstBank, secondBank in
    return firstBank.customerCount > secondBank.customerCount
}

print(orderByCustomerCount)

// shorter way
var orderByCustomerCount2: [BanksInTurkey] = someBanksInTurkey.sorted { $0.customerCount < $1.customerCount
}

print(orderByCustomerCount2)

//map
var bankNames: [String] = someBanksInTurkey.map { banks in
    return banks.bankName
    
}

print(bankNames)

//shorter way
var bankNames2: [String] = someBanksInTurkey.map { $0.bankName }

print(bankNames2)

