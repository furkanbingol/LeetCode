class Solution {
    func convertTemperature(_ celsius: Double) -> [Double] {
        return [273.15 + celsius, (1.8 * celsius) + 32]
    }
}