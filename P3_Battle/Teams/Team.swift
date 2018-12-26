//
//  Team.swift
//  P3_Battle
//
//  Created by Angelique Babin on 21/12/2018.
//  Copyright © 2018 Angelique Babin. All rights reserved.
//

import Foundation

class Team {

  //MARK: - Vars
  var teamPlayer: Int
  var characters = [Character]() // with mentor
  let namePlayer: String
  

    //MARK: - Init
  init(teamPlayer: Int, namePlayer: String) {
    self.teamPlayer = teamPlayer
    self.namePlayer = namePlayer
  }

    //MARK: - Methodes
  // with mentor
  func createCharacter() {
          var userChoice = 0
          var characterName = ""
    
            print("================================================"
              + "\n Create your team - Choice 3 characters : "
              + "\n1 - Fighter  "
              + "\n2 - Wizard "
              + "\n3 - Giant "
              + "\n4 - Dwarf "
              + "\n================================================")
    
            repeat {
              if let data = readLine() {
                if let dataToInt = Int(data) {
                  userChoice = dataToInt
                }
              }
            } while userChoice != 1 && userChoice != 2 && userChoice != 3 && userChoice != 4
    
            repeat {
              print("Name of character :")
              if let data = readLine() {
                characterName = data
              }
            } while characterName == ""
    
            switch userChoice {
            case 1: // fighter
              let fighter = Fighter(name: characterName)
              characters.append(fighter)
              fighter.display()
            case 2: // wizard
              let wizard = Wizard(name: characterName)
              characters.append(wizard)
              wizard.display()
            case 3: // giant
              let giant = Giant(name: characterName)
              characters.append(giant)
              giant.display()
            case 4: // dwarf
              let dwarf = Dwarf(name: characterName)
              characters.append(dwarf)
              dwarf.display()
            default:
              break
            }
             
        }
  // with mentor
  func createTeam() {
    for _ in 0..<3 {
      createCharacter()
    }
  }
  
  
    // List of the team
    func displayTeam() {
      print("==========================")
      print("List of the team \(teamPlayer) :")
      print("--------------------")
      for character in characters {
        print("\(character)")
        character.display()
      }
    }
  
  
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
  
} // END class Team
