class ParkingSystem {
    var big: Int
    var medium: Int
    var small: Int

    init(_ big: Int, _ medium: Int, _ small: Int) {
        self.big = big
        self.medium = medium
        self.small = small
    }
    
    func addCar(_ carType: Int) -> Bool {
        if carType == 1 {
            if big == 0 {
                return false
            }
            big -= 1
            return true
        } else if carType == 2 {
            if medium == 0 {
                return false
            }
            medium -= 1
            return true
        } else {
            if small == 0 {
                return false
            }
            small -= 1
            return true
        }
    }
}

/**
 * Your ParkingSystem object will be instantiated and called as such:
 * let obj = ParkingSystem(big, medium, small)
 * let ret_1: Bool = obj.addCar(carType)
 */