class OrderedStream {
    
    var orderedStream: [String]?
    var id = 1
    var ptr = 0

    init(_ n: Int) {
        self.orderedStream = [String](repeating: String(), count: n)
    }
    
    func insert(_ idKey: Int, _ value: String) -> [String] {
        var resArray = [String]()
        
        orderedStream![idKey-1] = value
        var tmpPtr = ptr
        for i in tmpPtr..<orderedStream!.count {
            if orderedStream![i].isEmpty {
                break
            }
            resArray.append(orderedStream![i])
            ptr += 1
        }
        
        return resArray
    }
}
