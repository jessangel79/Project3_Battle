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
        print("\(i+1) - The \(character.type) \"\(character.name)\" is dead !")
        print(" ")
      } else {
        character.display(index: i+1)
      }
    }
  }
  
  // function returns true if the character is dead
  func isDead() -> Bool {
    var isDead = false
    for character in characters {
      if character.life <= 0 {
        isDead = true
      } else { //false
        isDead = false
        return isDead
      }
    }
    return isDead
  }  
} // END class Team
