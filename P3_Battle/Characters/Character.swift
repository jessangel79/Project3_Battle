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

  //MARK: - Init
  init(type: String, life: Int, weapon: Weapon, name: String) {
    self.type = type
    self.life = life
    self.weapon = weapon
    self.name = name
    self.lifeMaxLimit = life
  }
  
  //MARK: - Methodes
  func receive(damage: Int) {
    self.life -= damage
    // If life is negative, we simply put it to 0 to say that the character is dead
    if self.life <= 0 {
      self.life = 0
    }
  }
  
  func attack(character: Character) {
    if life > 0 {
      if character.life > 0 {
        character.receive(damage: weapon.damage)
        print("----------------------------------------------------------------------------------------")
        print("The \(character.type) \"\(character.name)\" received \(weapon.damage) points of damage by the \(weapon.nameWeapon) of your \(type) \"\(name)\" !")
        print("--------------------------------------------------------------------")
        if character.life <= 0 {
           print("The \(character.type) \"\(character.name)\" is dead !!! ")
        }
      } else {
        print("--------------------------------------------------------")
        print("The \(character.type) \"\(character.name)\" is already dead !")
        print("--------------------------------------------------------")
      }
    } else {
      print("----------------------------------------------------------------------------")
      print("Sorry the \(type) \"\(name)\" is already dead and cannot attack the \(character.type) \"\(character.name)\" !")
      print("----------------------------------------------------------------------------")
    }
    
  }
  
  // Display the description of our character on the screen
  func display(index: Int) {
    print("\(index) - The \(type) \"\(name)\" -- Points of life : \(life) -- The weapon : \(weapon.nameWeapon) -- Points of damage : \(weapon.damage) -- Points for healing : \(weapon.heal).")
    print(" ")
  }

  
//  // Display the description of our character on the screen
//  func display(index: Int) {
//    print("\(index) - Name : \(name) - " + "Type : \(type) - " + "Life : \(life) points - " + "Weapon : \(weapon.nameWeapon) - " + "Damages of his weapon : \(weapon.damage) points - " + "Heal of his weapon : \(weapon.heal) points")
//    print(" ")
//  }
  

} // END Class Character


// ##### ##### TEST ##### ##### //

//  // for test ====
//  func upgradeWeapon() {
//    self.weapon.damage += 5
//  }
//  // for test ====



