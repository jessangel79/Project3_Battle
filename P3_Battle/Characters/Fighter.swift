//
//  Fighter.swift
//  P3_Battle
//
//  Created by Angelique Babin on 18/12/2018.
//  Copyright © 2018 Angelique Babin. All rights reserved.
//

import Foundation

class Fighter: Character {
  
  init(name: String) {
    super.init(type: "Fighter", life: 100, weapon: Sword.init(), name: name)
  }
  
//  // Name of character
//  override func nameCharacter() {
//    print("Name of Fighter :")
//    if let nameOfCharacter = readLine() {
//      print("================================================")
//      print("Name of Fighter : \(nameOfCharacter)")
//    }
//    display()
//  }
//
//  // Display the description of our character on the screen
//  override func display() {
//    super.display()
//  }
//  
  //  func nameFighter() {
  //    print("Name of fighter :")
  //    if let nameOfFighter = readLine() {
  //      print("================================================")
  //      print("Name of fighter : \(nameOfFighter) !")
  //    }
  //    display()
  //  }
  }

