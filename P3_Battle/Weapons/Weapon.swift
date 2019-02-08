//
//  Weapon.swift
//  P3_Battle
//
//  Created by Angelique Babin on 19/12/2018.
//  Copyright © 2018 Angelique Babin. All rights reserved.
//

import Foundation

class Weapon {
  //MARK: - Vars
  var damage: Int
  var heal: Int
  let nameWeapon: String
  
  //MARK: - Init
  init(damage: Int, heal: Int, nameWeapon: String) {
    self.damage = damage
    self.heal = heal
    self.nameWeapon = nameWeapon
  }
}
