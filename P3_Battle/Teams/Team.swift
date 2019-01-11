//
//  Team.swift
//  P3_Battle
//
//  Created by Angelique Babin on 21/12/2018.
//  Copyright © 2018 Angelique Babin. All rights reserved.
//

import Foundation

class Team {

  //MARK: - Vars
  var characters = [Character]() // with mentor

  //MARK: - Init

  // MARK: - Methodes
  // List of the team
  func displayTeam() {
    for i in 0..<characters.count {
      let character = characters[i]
      if character.life <= 0 {
        print("\(i+1) - The character " + character.name + " is dead !")
        print(" ")
      } else {
        character.display(index: i+1)
      }
    }
  }
  
  // Display other for Mace != Fighter OR Dwarf OR Giant
//  func displayOther(index: Int) {
//    for i in 0..<characters.count {
//      let character = characters[i]
//      if character.life <= 0 {
//        print("\(i+1) " + character.name + " is dead !")
//          if (character is Mace) {
//          print("\(index+1) - \(character.name), the \(character.type) has \(character.life) of life and can heal \(character.weapon.heal) life's points.")
//            } else if (character is Fighter || character is Dwarf || character is Giant) {
//          print("\(index+1) - \(character.name), the \(character.type) has \(character.life) of life and \(character.weapon.damage) attack's points.")
//          } else {
//          print("List of characters of team !!!")
//          character.display(index: i+1)
//        }
//      }
//    }
//  }

  
  // function returns true if the character is dead
  func isDead() -> Bool {
    var dead = false
    for character in characters {
      if character.life <= 0 {
        dead = true
      } else {
        return dead == false
      }
    }
    return dead
  }
  
} // END class Team
