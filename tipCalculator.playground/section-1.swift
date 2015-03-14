// 1
class TipCalculator{    
    
    // 2
    let total: Double
    let taxPct: Double
    let subtotal: Double


    // 3
    init( total: Double, taxPct: Double ) {
        self.total = total
        self.taxPct = taxPct
        subtotal = total / ( taxPct + 1 )
    }

    // 4
    func calcTipWithTopPct( tipPct: Double ) -> Double {
        return subtotal * tipPct
    }

    // 5
    func printPossibleTips() {
        println("15%: \(calcTipWithTopPct(0.15))")
        println("18%: \(calcTipWithTopPct(0.18))")
        println("20%: \(calcTipWithTopPct(0.20))")
    }
}

// 6
let tipCalc = TipCalculator(total: 33.25, taxPct: 0.06)
tipCalc.printPossibleTips()

