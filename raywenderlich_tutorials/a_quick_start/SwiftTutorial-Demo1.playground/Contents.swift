//constants
//These cannot be edited values
//compiler can set types automatically to be a int
let swiftTeam = 13
let iOSTeam = 54
let otherTeams = 48

//variable can be edited
var totalTeam = swiftTeam + iOSTeam + otherTeams
totalTeam += 1

//Floats and Doubles
let priceInferred = 19.99
let priceExplicit: Double = 19.99

//Bools
let onSaleInferred = true
let onSaleExplicit: Bool = false

//strings
let nameInferred = "Whoopie Cushion"
let nameExplicit: String = "Whoopie Cushion"


//If statements and string interpolation
if onSaleInferred {
  print("\(nameInferred) on sale for \(priceInferred)!")
} else {
  print("\(nameInferred) at regular price: \(priceInferred)!")
}

