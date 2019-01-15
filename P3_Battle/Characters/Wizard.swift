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
    super.init(type: "Wizard", life: 30, weapon: Scepter.init(), name: name)    
  } // life: 70
  
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
        print("Your \(character.type), \"\(character.name)\" is already dead and cannot be resurrected !")
      }
    } else {
      print("Sorry your \(type) \"\(name)\" is already dead and you cannot heal !")
    }
  }
  
  
  override func attack(character: Character) {
    print("The \(type) \"\(name)\" can't attack but only to heal !")
  }
}



//     print(" TO BE CONTINUED ")
