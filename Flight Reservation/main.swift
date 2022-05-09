//
//  main.swift
//  Flight Reservation
//
// Name: Anas Zakariyah Bemat (azbemat)
// Date: 2/1/2022
// ******************************

print("\n- - - -\n")

// *** Creating Flight Objects ***

var flight1 = Flight(flightNum:"AA281", departureAir:"DFW", arrivalAir:"ICN", dist:6835.70)
var flight2 = Flight(flightNum:"KL1000", departureAir:"LHR", arrivalAir:"CDG", dist:212.38)

// *** Creating Travellers ***

var traveller1 = Traveller(passportNo:80153, nme:"Anas Bemat", emailAdd:"azbemat@myseneca.ca")
var traveller2 = Traveller(passportNo:500, nme:"Sally Smith", emailAdd:"sally@gmail.com")



// *** Creating a reservation for TRAVELLER #1 on AA281 and KL100 ***

var attemptToReserve:Bool = traveller1.makeReservation(reservationDate:"2022-04-01", flight:flight1)
print("Reservation for traveller 1 created successfully? \(attemptToReserve)")  // -- Display success/fail

attemptToReserve = traveller1.makeReservation(reservationDate:"2022-04-01", flight:flight2)
print("Reservation for traveller 1 created successfully? \(attemptToReserve)\n")  // -- Display success/fail

// Calling a display func on Traveller #1
traveller1.display()

// Total cost for Traveller #1
traveller1.getTotalBalance()


print("\n- - - -\n")


// *** Creating a reservation for TRAVELLER #2 on AA281 ***

attemptToReserve = traveller2.makeReservation(reservationDate:"2022-04-01", flight:flight1)
print("Reservation for traveller 2 created successfully? \(attemptToReserve)\n")  // -- Display success/fail

// Calling a display func on Traveller #2
traveller2.display()

// Total cost for Traveller #2
traveller2.getTotalBalance()




