
class Reservation:Flight {

    // Properties
    let reservationId:String
    var reservationDate:String

    // Initializer
    init(fghtNo:String, dprtAir:String, arrAir:String, dis:Double, reservatnDate:String){

        // generating random number, converting to string, and adding end character
        let randomNo = Int.random(in: 1000...9999)
        var tempId:String = String(randomNo)
        tempId += (dis > 500) ? "L":"S"       

        self.reservationId = tempId
        self.reservationDate = reservatnDate
        super.init(flightNum:fghtNo, departureAir:dprtAir, arrivalAir:arrAir, dist:dis)
    }

    // override parent's display
    override func display(){
        print("Reservation ID: \(self.reservationId)")
        print("Date of Departure: \(self.reservationDate)")
        // -- Use parent class display
        super.display()
    }

}

