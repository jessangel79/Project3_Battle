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
  // display of list of the teams
  func displayTeam() {
    for i in 0..<characters.count {
      let character = characters[i]
      if character.life <= 0 {
        print("\(i+1) - The \(character.type) " + "\"\(character.name)\"" + " is dead !")
        print(" ")
      } else {
        character.display(index: i+1)
      }
    }
  }
  
  // display of last action report in array "characters"
  func displayLastAction() {
    for i in 0..<characters.count {
      let character = characters[i]
      if character.life >= 1 {
        if character is Wizard {
          print("\(i+1) - The \(character.type) \"\(character.name)\" has \(character.life) of life and can heal \(character.weapon.heal) life's points.")
          print(" ")
        } else if character is Fighter || character is Dwarf || character is Giant {
          print("\(i+1) - The \(character.type) \"\(character.name)\" has \(character.life) of life and \(character.weapon.damage) attack's points.")
          print(" ")
        }
      } else {
        print("\(i+1) - The \(character.type) \"\(character.name)\" is dead !")
        print(" ")
      }
    }
  }

  
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
