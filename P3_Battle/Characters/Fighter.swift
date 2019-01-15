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
    super.init(type: "Fighter", life: 30, weapon: Sword.init(), name: name)
  } // life: 100
}

