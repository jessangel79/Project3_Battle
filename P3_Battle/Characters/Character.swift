//
//  Character.swift
//  P3_Battle
//
//  Created by Angelique Babin on 18/12/2018.
//  Copyright © 2018 Angelique Babin. All rights reserved.
//

import Foundation

class Character {
  
  //MARK: - Vars
  let type: String
  var life: Int
  var weapon: Weapon
  let name: String
  let lifeMaxLimit: Int
  var isBlocked: Bool

  //MARK: - Init
  init(type: String, life: Int, weapon: Weapon, name: String, isBlocked: Bool) {
    self.type = type
    self.life = life
    self.weapon = weapon
    self.name = name
    self.lifeMaxLimit = life
    self.isBlocked = isBlocked
  }
  
  //MARK: - Methodes
  private func receive(damage: Int) {
    self.life -= damage
    // If life is negative, the life of the character is set to 0
    if self.life <= 0 {
      self.life = 0
    }
  }
  
  // attack enemy
  func attack(character: Character) {
    if life > 0 {
      if character.life > 0 {
        character.receive(damage: weapon.damage)
        print("-----------------------------------------------------------------------------------------------------")
        print("🛡 The \(character.type) \"\(character.name)\" received \(weapon.damage) points of damage by the \(weapon.nameWeapon) of your \(type) \"\(name)\" ! 🛡")
        print("-----------------------------------------------------------------------------------------------------")
        if character.life <= 0 {
          print("❌ The \(character.type) \"\(character.name)\" is dead !!! ❌")
        }
      } else {
        print("--------------------------------------------------------")
        print("The \(character.type) \"\(character.name)\" is already dead ! ❌")
        print("--------------------------------------------------------")
      }
    } else {
      print("---------------------------------------------------------------------------------------")
      print("Sorry the \(type) \"\(name)\" is already dead and cannot attack the \(character.type) \"\(character.name)\" ! ❌")
      print("---------------------------------------------------------------------------------------")
    }
  }
  
  // Display the description of our character on the screen
  func display(index: Int) {
    print(" ")
    print("\(index) - \(type) \"\(name)\" - Points of life : \(life) - Weapon : \(weapon.nameWeapon) - Points of damage : \(weapon.damage) - Points for healing : \(weapon.heal)")
  }
} // END Class Character


