//
//  Wizard.swift
//  P3_Battle
//
//  Created by Angelique Babin on 18/12/2018.
//  Copyright © 2018 Angelique Babin. All rights reserved.
//

import Foundation

class Wizard: Character {
  init(name: String) {
      super.init(type: "Wizard", life: 50, weapon: Scepter.init(), name: name)
    }
}
