////
////  CheckName.swift
////  P3_Battle
////
////  Created by Angelique Babin on 28/12/2018.
////  Copyright © 2018 Angelique Babin. All rights reserved.
////
//
//import Foundation
//
//// class with Singleton to check the characters' names in order to have a unique name for each
//class CheckName {
//  private var nameCharacters = [String]()
//  static let sharedInstance = CheckName() // instantiate the singleton
//
//  // check if the name has already been taken
//  func checkCharacterName() -> String {
//    var characterName = ""
//    repeat {
//      print("Choose the name of your character: ")
//      if let data = readLine() {
//        characterName = data
//        if nameCharacters.contains(characterName) { // check if the name already exists
//          print("The name: '\(characterName)' already exists !")
//          print("Please enter a new name.")
//          characterName = ""
//        } else {
//          print("The name: '\(characterName)' is available.")
//          nameCharacters.append(characterName)
//        }
//      }
//    } while characterName == ""
//    return characterName
//  }
//
//} // END class CheckName
//
//// create variable with the class "CheckName" to check if the name of the perso already exists
//// ### in the class Team ### //
//// let characterCheckName = CheckName.sharedInstance.checkCharacterName()
//
//
