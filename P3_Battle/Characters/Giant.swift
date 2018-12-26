//
//  Giant.swift
//  P3_Battle
//
//  Created by Angelique Babin on 18/12/2018.
//  Copyright © 2018 Angelique Babin. All rights reserved.
//

import Foundation

class Giant: Character {
  init(name: String) {
    super.init(type: "Giant", life: 200, weapon: Mace.init(), name: name)
    }
}