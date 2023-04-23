class Solution {
    func findDelayedArrivalTime(_ arrivalTime: Int, _ delayedTime: Int) -> Int {
        return (arrivalTime + delayedTime) % 24
    }
}