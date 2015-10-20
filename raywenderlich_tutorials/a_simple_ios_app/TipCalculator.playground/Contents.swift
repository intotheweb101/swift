import Foundation

class TipCalculatorModel {
    
    var total: Double
    var taxPct: Double
    var subtotal: Double {
        get {
            return total / (taxPct + 1)
        }
    }
    init(total: Double, taxPct: Double) {
        self.total = total
        self.taxPct = taxPct
    }
    func calcTipWithTipPct(tipPct: Double) -> Double {
        return subtotal * tipPct
    }
    func returnPossibleTips() -> [Int: Double] {
        
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        
        var retval = [Int: Double]()
        for possibleTip in possibleTipsInferred {
            let intPct = Int(possibleTip*100)
            retval[intPct] = calcTipWithTipPct(possibleTip)
        }
        return retval
        
    }
}
let tipCalc = TipCalculatorModel(total: 33.25, taxPct: 0.06)
tipCalc.returnPossibleTips()