//
//  main.swift
//  RotatingLetters
//
//  Created by Gordon, Russell on 2018-04-06.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation
// INPUT
// loop forever until we get input

var validInput = "" // so it can take  the value of givenInput, when we declare that validInput = givenInput

prompt: while 1==1 {
    
    // prompt the user
    print("Input word is?")
    
    
    // make sure that there is no nil
    // Wait for input
    guard let givenInput = readLine () else {
        
        // If we got here, input is nil
        // prompt again
        continue // continue with the next iteration with while loop
        

}
    
    
    
    //test: is there input that exceeds the range
    if  givenInput.count < 1 || givenInput.count > 30 {
        
        // if we got here the length of input is too long or short
        continue // prompt again
    
    }

    checking: for individualCharacter in givenInput {
        
        // DEBUG: Print the character we are looking at
        print(individualCharacter)
        
        // Check the character
        switch individualCharacter {
        case "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z":
            continue checking   // OK, go to iteration of loop that lets us
        // inspect next character of the input string
        default:
            continue prompt     // Stop looking, we've found bad input, so go
            // to next iteration of loop that lets prompt again
            // for user input
        }
    }
    validInput = givenInput
    break
}
    // test 3
    var goodCharactersChecking = 0
    
     for individualCharacter in validInput {
        
        //DEBUG - print the character
        print(individualCharacter)
        // check characters
        switch individualCharacter {
        case "I", "O", "H", "S", "Z", "X", "N":
            goodCharactersChecking += 1
            
            continue // ok go for next character in String
        default:
            break    // stop looking we found bad input
            
        }
    }
    // if we got to this point we know that input is good
    
    if validInput.count == goodCharactersChecking {
        print("yes")
        
    } else {
        print("no")
    }
    
  // quit the while loop , and begin process section



 print(validInput)
