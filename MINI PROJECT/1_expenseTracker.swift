print("welcome to expense tracker")

func Menu(){
    print("\n1. Add Expense" )
    print("2. Add Income" )
    print("3. Show Log" )
    print("4. Exit")
}

print("Choose an option: ")
var Balance = 0.0
var log: [(Double, String, Int)] = []
//we can name the loop damnn
mainLoop: while true{
    Menu()
    if let input = readLine(),let option = Int(input){
    switch option {
        case 1:
            addExpense()
        case 2:
            addIncome()
        case 3:
            showLog()
        case 4:
            print("Exiting...")
            break mainLoop

        default:
            print("Invalid Option")
        }
    }
    else{
        print("Invalid Input, must be a number!")
    }
}

// func inputAmountandDesc() -> (Double, String){//(Double, String) -> return type yang mandatory
//     print("Enter amount: ")
//     //guard is like if but must have return
//     guard let amountInput = readLine(), let amount = Double(amountInput)  else {
//         print("Invalid amount. Please enter a valid number.")
//         return inputAmountandDesc() // Recursive call for valid input
//     }
//     print("Enter description: ")
//     guard let desc = readLine(), !desc.isEmpty else {
//         print("Description cannot be empty.")
//         return inputAmountandDesc() // Recursive call for valid input
//     }

//     return (amount, desc)
// }

func showLog(){
    if log.isEmpty{
        print("No log history yet.\n")
        return
    }
    print("ALL LOG HISTORY")
    print("Current Balance: $\(Balance)\n")
    var logo: String
    for item in log{
        if item.2 == 1{
            logo = " + "
        }
        else{
            logo = " - "
        }
        print("\(logo) $\(item.0), \(item.1)")
    }
}

func inputAmountandDesc() -> (Double, String) {
    var amount: Double = 0
    var desc: String = ""

    // Loop untuk Amount
    while true {
        print("Enter amount: ")
        if let input = readLine(), let value = Double(input) {
            amount = value
            break 
        }
        print("Invalid amount. Please enter a valid number.")
    }

    while true {
        print("Enter description: ")
        if let input = readLine(), !input.isEmpty {
            desc = input
            break 
        }
        print("Description cannot be empty.")
    }

    return (amount, desc)
}

func addExpense(){
    let (amount, desc) = inputAmountandDesc()
    Balance -= amount
    inputLog(x: amount,y: desc, z: 0)//there must be an identifier x: ,y: etc
    print("Expense of \(amount) for \(desc) added.\n Remaining Balance: $\(Balance)")
}

func addIncome(){
    let (amount, desc) = inputAmountandDesc()
    Balance += amount
    inputLog(x: amount,y: desc, z: 1)
    print("Income of \(amount) for \(desc) added. New Balance: $\(Balance)")
}


func inputLog(x: Double,  y: String, z: Int){
    log.append((x,y,z))

}
