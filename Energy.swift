/*
This program gets mass of object from the user's input,
calculates and display energy of object in Joules and
tells input is not a number, if inout is not a number
author  Donggeun Lim
version 1.0
since   2021-11-21
*/

func boardFoot(mass: Double) -> Double {
 // Calculate energy
 let energy = mass * 2.998e8 * 2.998e8

 // Return values
 return energy
}

enum InvalidInputError: Error {
  case invalidInput
}
// Input
print("Enter the mass of an object in kilograms: ", terminator: "")
let massString = readLine()

do {
 guard let mass = Double(massString!)
 else {
   throw InvalidInputError.invalidInput
 }
    let energy = boardFoot(mass: mass)

    // Output
    print("\(mass) kg of mass would produce \(energy)J of energy.")
} catch {
  print("Sorry, that was not an number")
}
print("\nDone.")
