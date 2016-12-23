//
//  GeneratePassword.swift
//  RandomPassword
//
//  Created by Baker, Jeremiah (NIH/NIMH) [C] on 12/23/16.
//  Copyright © 2016 National Institutes of Health. All rights reserved.
//

import Foundation

private let characters = Array(("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ").characters)

func generateRandomString(length: Int) -> String {
    //Start with an empty string
    var string = ""
    
    // Append 'length' number of random characters
    for _ in 0..<length {
        string.append(generateRandomCharacters())
    }
    
    return string
}

func generateRandomCharacters() -> Character {
    //Create a random index into the characters array
    let index = Int(arc4random_uniform(UInt32(characters.count)))
    
    //Get and return a random character
    let character = characters[index]
    return character
}
