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

  //MARK: - Init
  init(type: String, life: Int, weapon: Weapon, name: String) {
    self.type = type
    self.life = life
    self.weapon = weapon
    self.name = name
  }
  
  //MARK: - Methodes
  func receive(damage: Int) {
    //self.life = self.life - damage
    self.life -= damage
    
    // Si la vie est négative, on la met tout simplement à 0 pour dire que le personnage est mort
    if self.life < 0 {
      self.life = 0
    }
  }
  
  func attack(character: Character) {
    character.receive(damage: weapon.damage)
  }
  
  // Display the description of our character on the screen
  func display(index: Int) {
    print("\(index) - Name : \(name) - " + "Type : \(type) - " + "Life : \(life) - " + "Weapon : \(weapon.nameWeapon) - " + "Damages of his weapon : \(weapon.damage)")
    print(" ")
  }
  

//  // Battle ??? --- EN COURS ----
//  func play(against character: Character) {
//    var userChoice: Int
//    
//    // On affiche d'abord les caractéristiques du personnage qui doit jouer
//    //self.display()
//    
//    // On boucle tant qu'il n'a pas choisi un de ces deux solutions
//    repeat {
//      print("What action to do ?")
//      print("1. Display of teams and life points of the characters.")
//      print("2. Report last action.")
//      print("3. Choice of the character to play.")
//      print("4. Random arrival of a treasure chest.")
//      print("5. Choice of the character’s target.")
//      print("6. Action of the character.")
//      let gameStart = Game()
//      userChoice = gameStart.input()
//      print()
//    } while userChoice != 1 && userChoice != 2 && userChoice != 3 && userChoice != 4 && userChoice != 5 && userChoice != 6
//    
//      // On réalise l'action demandée
//      switch userChoice {
//      case 1: // Display of teams and life points of the characters
//        self.display()
//  //      let fighter = Fighter(name: characterName)
//  //      characters.append(fighter)
//      case 2: // Report last action
//        print("choice 2")
//  //      let wizard = Wizard(name: characterName)
//  //      characters.append(wizard)
//      case 3: // Choice of the character to play
//        print("choice 3")
//  //      let giant = Giant(name: characterName)
//  //      characters.append(giant)
//      case 4: // Ramdom arrival of a treasure chest containing a random weapon
//        print("choice 4")
//  //      let dwarf = Dwarf(name: characterName)
//  //      characters.append(dwarf)
//      case 5: // Choice of the character’s target
//        print("choice 5")
//      case 6: // Action of the character
//        print("choice 6")
//      default:
//        break
//      }
//    
//    if userChoice == 1 {
//      self.attack(character: character)
//    } //else {
////      self.upgradeWeapon() // for test ====
////    }
//  } // Battle ??? --- EN COURS ----

} // END Class Character



// ##### ##### TEST ##### ##### //

//  // for test ====
//  func upgradeWeapon() {
//    self.weapon.damage += 5
//  }
//  // for test ====



