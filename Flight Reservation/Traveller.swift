class Traveller:CanBeDisplayed {

    // Properties
    // -- Stored properties
    let name:String
    var passportNumber:Int?
    var email:String
    var reservationList:[Reservation]

    // -- Computed properties
    var balance:Double {
        get{
            var totalCost:Double = 0
            for item in reservationList {
                totalCost += item.cost
            }
            return totalCost
        }
    }

    // Initializer
    init(passportNo:Int, nme:String, emailAdd:String) {
        
        self.passportNumber = (passportNo >= 10000 && passportNo <= 99999) ? passportNo : nil
        self.name = nme
        self.email = emailAdd
        self.reservationList = []  // -- Zero reservation

    }

    // Protocol method
    func display(){
    
        if(self.passportNumber != nil){
            print("Name: \(self.name)\nEmail: \(self.email)\nPassport Number: Yes")
          
        }else{
            print("Name: \(self.name)\nEmail: \(self.email)\nPassport Number: No")
        }

        print()  // -- new line

        if(reservationList.count != 0){

            print("Total Reservations: \(reservationList.count)\n")

            // -- display details of each reservation
            for item in reservationList {
                item.display()
                print()    // -- new line
            }

        }else{
            print("\(self.name) does not have any reservations.\n")
        }  

    }

    // Method: To create reservation
    func makeReservation(reservationDate:String, flight:Flight) -> Bool {

        var result:Bool = false

        // -- For valid passport numbers
        if(self.passportNumber != nil){
            
            // -- Add reservation to list
            reservationList.append(Reservation(fghtNo:flight.flightNo, dprtAir:flight.departureAirport, arrAir:flight.arrivalAirport, dis:flight.distance, reservatnDate:reservationDate))
            result = true
        }

        return result
    }

    // Method: To display total balance
    func getTotalBalance() {
        print("\(self.name) owes: $\(self.balance)")
    }
    
}
