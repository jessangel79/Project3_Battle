//
//  Wizard.swift
//  P3_Battle
//
//  Created by Angelique Babin on 18/12/2018.
//  Copyright © 2018 Angelique Babin. All rights reserved.
//

import Foundation

class Wizard: Character {
  
  //MARK: - Inits
  init(name: String) {
    super.init(type: "Wizard", life: 50, weapon: Scepter.init(), name: name)    
  }
  
  //MARK: - Methodes
  func heal(character: Character) {
    if life > 0 {
      if character.life > 0 {
        character.life += weapon.heal // heal with 20 points
        print("Your \(character.type) \"\(character.name)\" has recovered \(weapon.heal) points of life by the \(weapon.nameWeapon) of your \(type) \"\(name)\" !")
        if character.life >= character.lifeMaxLimit {
          print("He has recovered the totality of his life points.")
        }
      } else {
        print("Your \(character.type), \"\(character.name)\" is dead and cannot be resurrected !")
      }
    } else {
      print("Sorry you're dead and you cannot heal !")
    }
  }
  
  
  override func attack(character: Character) {
    print("The mage can't attack but only to heal !")
  }
}



//     print(" TO BE CONTINUED ")
