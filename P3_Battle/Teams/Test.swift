//
//  Test.swift
//  P3_Battle
//
//  Created by Angelique Babin on 28/12/2018.
//  Copyright © 2018 Angelique Babin. All rights reserved.
//

import Foundation

// verification if the name already exists
//        for _ in characters {
//            if characters.contains(where: { (name) -> Bool in
//              return true
//            }) {
//              print("The name already exists !")
//            }
//        }
//          forEach({characters in
//            if characters.contains(where: { (name) -> Bool in
//              return true
//            }) {
//              print("The name already exists !")
//            }
//          })

// Test nom perso déjà existant ###### DEBUT
//          for _ in characters {
//            if characters.contains(where: { (name) -> Bool in
//              return true
//            }) {
//              print("The name already exists !")
//            }
//          }
// alreadyExist() {
// Test nom perso déjà existant ###### FIN


//  // ################### //
//  // Old function ====== //
//  // ################### //
//    // function adding the fighter
//    private func addFighter() {
//      var characterName = ""
//      let fighter = Fighter(name: characterName)
//      print("Name of Fighter :")
//      if let nameOfCharacter = readLine() {
//        //      if nameOfCharacter.count > 0 { // vérifier si le nom existe déjà...
//        //        print("Already existing name, please enter a new name.")
//        //      } else {
//        print("================================================")
//        print("Name of Fighter : \(nameOfCharacter)")
//        characters["Name of Fighter : \(nameOfCharacter)"] = fighter
//        fighter.display()
//        //}
//      }
//      print("Add fighter in the Team 1")
//    }
//
//    // function adding the wizard
//    private func addWizard() {
//      var characterName = ""
//      let wizard = Wizard(name: characterName)
//      print("Name of Wizard :")
//      if let nameOfCharacter = readLine() {
//        //      if nameOfCharacter.count > 0 { // vérifier si le nom existe déjà...
//        //        print("Already existing name, please enter a new name.")
//        //      } else {
//        print("================================================")
//        print("Name of Wizard : \(nameOfCharacter)")
//        characters["Name of Wizard : \(nameOfCharacter)"] = wizard
//        wizard.display()
//        //}
//      }
//      print("Add wizard in the Team 1")
//    }
//
//    // function adding the giant
//    private func addGiant() {
//      var characterName = ""
//      let giant = Giant(name: characterName)
//      print("Name of Giant :")
//      if let nameOfCharacter = readLine() {
//        //      if nameOfCharacter.count > 0 { // vérifier si le nom existe déjà...
//        //        print("Already existing name, please enter a new name.")
//        //      } else {
//        print("================================================")
//        print("Name of Giant : \(nameOfCharacter)")
//        team1["Name of Giant : \(nameOfCharacter)"] = giant
//        giant.display()
//        //}
//      }
//      print("Add giant in the Team 1")
//    }
//
//    // function adding the dwarf
//    private func addDwarf() {
//      var characterName = ""
//      let dwarf = Dwarf(name: characterName)
//      print("Name of Dwarf :")
//      if let nameOfCharacter = readLine() {
//        //      if nameOfCharacter.count > 0 { // vérifier si le nom existe déjà...
//        //        print("Already existing name, please enter a new name.")
//        //      } else {
//        print("================================================")
//        print("Name of Dwarf : \(nameOfCharacter)")
//        team1["Name of Dwarf : \(nameOfCharacter)"] = dwarf
//        dwarf.display()
//        //}
//      }
//      print("Add dwarf in the Team 1")
//    }
//
//    private func choiceFighter() {
//      var userChoiceCharacter = 0
//      var characterName = ""
//      let fighter = Fighter(name: characterName)
//      fighter.display()
//
//
//      print("================================================")
//      print("Choice this character ?")
//      print("1 - Yes ")
//      print("2 - No ")
//
//      repeat {
//
//        if let data = readLine() {
//          if let dataToInt = Int(data) {
//            userChoiceCharacter = dataToInt
//          }
//        }
//        switch userChoiceCharacter {
//        case 1:
//          addFighter()
//        case 2:
//          let team1 = Team1()
//          team1.createTeam1()
//        default:
//          break
//        }
//      } while userChoiceCharacter != 1 && userChoiceCharacter != 2
//
//    }
//  // ################### //
//  // Old function ====== //
//  // ################### //
