//
//  CheckName.swift
//  P3_Battle
//
//  Created by Angelique Babin on 28/12/2018.
//  Copyright © 2018 Angelique Babin. All rights reserved.
//

import Foundation

class CheckName {
  private var nameCharacters = [String]()
  static let ext = CheckName()
  
  // check if the name has already been taken
  func checkCharacterName() -> String {
    var characterName = ""
    repeat {
      print("Choose the name of your character: ")
      if let data = readLine() {
        characterName = data
        if nameCharacters.contains(characterName) { // check if the name already exists
          print("The name: '\(characterName)' already exists !")
          print("Please enter a new name.")
          characterName = ""
        } else {
          print("The name: '\(characterName)' is available.")
          nameCharacters.append(characterName)
        }
      }
    } while characterName == ""
    return characterName
  }
  
} // END class CheckName


//repeat {
//  print("Name of character :")
//  if let data = readLine() {
//    characterName = data
//  }
//} while characterName == ""
//
//// verification if the character’s name already exists
//var filled = false
//characters
//  .compactMap{$0}
//  .forEach { (characters:Character) in
//    if characters.name == characterName {
//      print("The name already exists !")
//      return filled = true
//    }
//    else {
//      return print("The name is available")
//    }
//}
