class Solution {
    func complexNumberMultiply(_ num1: String, _ num2: String) -> String {
        let c1 = num1.toComplexNumber()
        let c2 = num2.toComplexNumber()
        
        return ComplexNumber.multiplication(c1,c2)
    }
}

final class ComplexNumber {
    var real: Int
    var imaginary: Int
    
    init(real: Int, imaginary: Int) {
        self.real = real
        self.imaginary = imaginary
    }
    
    static func multiplication(_ numberOne: ComplexNumber, _ numberTwo: ComplexNumber) -> String {
        var res = ""
        
        let one = numberOne.real * numberTwo.real           
        let two = numberOne.real * numberTwo.imaginary
        let three = numberOne.imaginary * numberTwo.real
        let four = numberOne.imaginary * numberTwo.imaginary
        
        // Real
        if one != 0 { 
            if four != 0 {
                let val = one + (-1 * four)
                res += "\(val)+"
            } 
            else {
                res += "\(one)+"
            }
        } 
        else {
            if four != 0 { 
                res += "\(-1 * four)+" 
            }
            else {
                res += "0+"
            }
        }
        
        // Imaginary
        res += "\(two + three)i"
        return res
    }
}

extension String {
    func toComplexNumber() -> ComplexNumber {
        let complex = ComplexNumber(real: 0,imaginary: 0)
        var arr = Array(self)
        var idx = arr.count-1
        
        while idx >= 0 {
            // Imaginary
            if arr[idx] == "i" {
                if idx == 0 { complex.imaginary = 1 }
                else {
                    var strVal = ""
                    var sign: Character = "."
                    
                    idx -= 1
                    while idx >= 0 {
                        if arr[idx] == "+" || arr[idx] == "-" { 
                            sign = arr[idx]
                            break 
                        }
                        strVal += String(arr[idx])
                        idx -= 1
                    }
                    strVal = String(strVal.reversed())
                    let val = Int(strVal)!
                    
                    if sign == "+" { complex.imaginary = val }
                    else if sign == "-" { complex.imaginary = -1 * val }
                }
            }
            // Real
            else if arr[idx] != "+" && arr[idx] != "-" {
                var strVal = ""
                var sign: Character = "."
                
                while idx >= 0 {
                    if arr[idx] == "-" { 
                        sign = arr[idx]
                        break 
                    }
                    strVal += String(arr[idx])
                    idx -= 1
                }
                strVal = String(strVal.reversed())
                let val = Int(strVal)!
                
                if sign == "-" { complex.real = -1 * val }
                else { complex.real = val }
            }
            idx -= 1
        }
        
        return complex
    }
}