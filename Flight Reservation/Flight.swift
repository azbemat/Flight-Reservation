
class Flight:CanBeDisplayed {

    // Properties
    // -- Stored properties
    var flightNo:String
    var departureAirport:String
    var arrivalAirport:String
    var distance:Double
    
    // -- Computed properties
    var cost:Double {
        get{
            var totalCost:Double
            if(distance > 500){
                totalCost = 1000 + distance * 0.25 
            }else {
                totalCost = 200 + distance * 0.5 
            }
            return totalCost
        }
    }

    // Initializer
    init(flightNum:String, departureAir:String, arrivalAir:String, dist:Double) {
        self.flightNo = flightNum
        self.departureAirport = departureAir
        self.arrivalAirport = arrivalAir
        self.distance = dist
    }

    // Protocol method
    func display(){
        print("Departing \(self.departureAirport), Arriving \(self.arrivalAirport) on Flight #\(self.flightNo)")
    }
    
}
