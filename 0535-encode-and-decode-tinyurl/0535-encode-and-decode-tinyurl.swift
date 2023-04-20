class Codec {
    private let prefix = "http://tinyurl.com/"
    private var urls = [String: String]()
    
    func encode(_ longUrl: String) -> String {
        let u = UUID().uuidString
        let url = "\(prefix)\(u)"
        urls[u] = longUrl
        return url
    }
    
    func decode(_ shortUrl: String) -> String {
        urls[String(shortUrl.dropFirst(prefix.count))]!
    }
}

/**
 * Your Codec object will be instantiated and called as such:
 * let obj = Codec()
 * val s = obj.encode(longUrl)
 * let ans = obj.decode(s)
*/