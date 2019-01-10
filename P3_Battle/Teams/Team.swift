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
  func displayTeamCharacter() {
    print("==========================")
    print("List of the team :")
    print("--------------------")
    for i in 0..<characters.count {
      let character = characters[i]
      if character.life <= 0 {
        print("\(i+1) " + character.name + " is dead !")
      } else {
        character.display(index: i+1)
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
