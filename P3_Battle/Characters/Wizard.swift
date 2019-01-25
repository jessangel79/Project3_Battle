//
//  Wizard.swift
//  P3_Battle
//
//  Created by Angelique Babin on 18/12/2018.
//  Copyright © 2018 Angelique Babin. All rights reserved.
//

import Foundation

class Wizard: Character { // type heal
  
  //MARK: - Inits
  init(name: String) {
    super.init(type: "Wizard", life: 70, weapon: Scepter.init(), name: name, isBlocked: false)    
  }
  
  //MARK: - Methodes
  func heal(character: Character) {
    if life > 0 {
      if character.life > 0 {
        
        dispel(character: character) // unlocked a character
        
        character.life += weapon.heal
        
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
  
  // unlocked a character who has been blocked by the "Power Of Ice"
  private func dispel(character: Character) {
    if character.isBlocked == true {
      character.isBlocked = false
      print("Your \(character.type) \"\(character.name)\" as been unfrozen by your \(type) \"\(name)\" !")
    }
  }
  
  override func attack(character: Character) {
    print("The \(type) \"\(name)\" can't attack but only to heal !")
  }
}

