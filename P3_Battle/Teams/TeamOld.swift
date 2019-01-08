////
////  TeamOld.swift
////  P3_Battle
////
////  Created by Angelique Babin on 28/12/2018.
////  Copyright © 2018 Angelique Babin. All rights reserved.
////
//
//import Foundation
//
//class TeamOld {
//  
//  //MARK: - Vars
//  var teamPlayer: Int
//  var characters = [Character]() // with mentor
//  let namePlayer: String
//  private var endlessLoop = true // let si false
//  
//  
//  //MARK: - Init
//  init(teamPlayer: Int, namePlayer: String) {
//    self.teamPlayer = teamPlayer
//    self.namePlayer = namePlayer
//  }
//  
//  //MARK: - Methodes
//  // verification if the name already exists
//  //  func alreadyExist() {
//  //    if characters.contains(where: { (name) -> Bool in
//  //      return true
//  //    }) {
//  //      print("The name already exists !")
//  //    }
//  //  }
//  private func listCharacters() {
//    print("")
//    print("================================================"
//      + "\n Create your team - Choice 3 characters : "
//      + "\n1 - Fighter  "
//      + "\n2 - Wizard "
//      + "\n3 - Giant "
//      + "\n4 - Dwarf "
//      + "\n================================================")
//  }
//  
//  // with mentor
//  private func createCharacter() {
//    var userChoice = 0
//    var characterName = ""
//    //          var filled = false
//    
//    
//    while characters.count < 3 {
//      listCharacters()
//      repeat {
//        if let data = readLine() {
//          if let dataToInt = Int(data) {
//            userChoice = dataToInt
//          }
//        }
//      } while userChoice != 1 && userChoice != 2 && userChoice != 3 && userChoice != 4
//      
//      
//      repeat {
//        print("Name of character :")
//        if let data = readLine() {
//          characterName = data
//        }
//      } while characterName == ""
//      
//      // verification if the character’s name already exists
//      var filled = false
//      characters
//        .compactMap{$0}
//        .forEach { (characters:Character) in
//          if characters.name == characterName {
//            print("The name already exists !")
//            return filled = true
//          }
//          else {
//            return print("The name is available")
//          }
//      }
//      
//      if filled != true {
//        switch userChoice {
//        case 1: // fighter
//          let fighter = Fighter(name: characterName)
//          characters.append(fighter)
//          fighter.display()
//        case 2: // wizard
//          let wizard = Wizard(name: characterName)
//          characters.append(wizard)
//          wizard.display()
//        case 3: // giant
//          let giant = Giant(name: characterName)
//          characters.append(giant)
//          giant.display()
//        case 4: // dwarf
//          let dwarf = Dwarf(name: characterName)
//          characters.append(dwarf)
//          dwarf.display()
//        default:
//          break
//        }
//      }
//    }
//  }
//  
//  // with mentor
//  func createTeam() {
//    for _ in 0..<3 {
//      createCharacter()
//    }
//  }
//  
//  // List of the team
//  func displayTeam() {
//    print("==========================")
//    print("List of the team \(teamPlayer) :")
//    print("--------------------")
//    for character in characters {
//      print("\(character)")
//      character.display()
//    }
//  }
//  
//} // END class Team
