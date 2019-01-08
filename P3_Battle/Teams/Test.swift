//
//  Test.swift
//  P3_Battle
//
//  Created by Angelique Babin on 28/12/2018.
//  Copyright © 2018 Angelique Babin. All rights reserved.
//
//
//import Foundation
//
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


// // In class Game :
//
//  private func newGame() {
//    var userChoice = 0
//    repeat {
//      if let data = readLine() {
//        if let dataToInt = Int(data) {
//          userChoice = dataToInt
//        }
//      }
//    } while userChoice != 1 && userChoice != 2

//
//        repeat {
//          print("Name of player :")
//          if let data = readLine() {
//            choiceNamePlayer = data
//          }
//        } while choiceNamePlayer == ""

//        switch userChoice {
//        case 1:
////          let team1 = Team(teamPlayer: 1, namePlayer: namePlayer)
////          print("Player \(team1.teamPlayer): \(team1.namePlayer)")
////          team1.createTeam()
////          team1.displayTeam()
//            print("choice 1")
//        case 2:
////          let team2 = Team(teamPlayer: 2, namePlayer: namePlayer)
////          print("Player \(team2.teamPlayer): \(team2.namePlayer)")
////          team2.createTeam()
////          team2.displayTeam()
////            start()
//          print("choice 2")
//        default:
//          break
//        }
//  }


// ###### ##### ##### ##### //

//class TeamTest {
//
//  //MARK: - Vars
//  var characters = [Character]() // with mentor
//  let nameTeam: String
//
//  //MARK: - Init
//  init(nameTeam: String) {
//    self.nameTeam = nameTeam
//  }
//
//  // MARK: - Methodes
//  private func listCharactersMenu() {
//
//    print("")
//    print("=========================================================")
//    print("Create your team - Choice 3 characters between 1 and 4: ")
//    print("---------------------------------------------------------")
//    print("1 - Fighter - Life: 100 - Damage: 10"
//      + "\n2 - Wizard  - Life: 50  - Heal: 20 "
//      + "\n3 - Giant   - Life: 200 - Damage: 5"
//      + "\n4 - Dwarf   - Life: 80  - Damage: 20"
//      + "\n=========================================================")
//  }
//
//  // with mentor
//  func createCharacter(listName: [String]) {
//    for _ in 0..<3 {
//    var userChoice = 0
//    listCharactersMenu()
//
//    repeat {
//      if let data = readLine() {
//        if let dataToInt = Int(data) {
//          userChoice = dataToInt
//        }
//      }
//    } while userChoice != 1 && userChoice != 2 && userChoice != 3 && userChoice != 4
//
//    // create variable with the class "CheckName" to check if the name of the perso already exists
//  //  let characterCheckName = CheckName.sharedInstance.checkCharacterName()
//    print("Name your fighter:")
//    let nameChoice = readLine()
//
//    switch userChoice {
//    case 1: // fighter
//      let fighter = Fighter(name: (nameChoice!))
//      print("Added a fighter to the team.")
//      characters.append(fighter)
//      fighter.display()
//    case 2: // wizard
//      let wizard = Wizard(name: (nameChoice!))
//      print("Added a wizard to the team.")
//      characters.append(wizard)
//      wizard.display()
//    case 3: // giant
//      let giant = Giant(name: (nameChoice!))
//      print("Added a giant to the team.")
//      characters.append(giant)
//      giant.display()
//    case 4: // dwarf
//      let dwarf = Dwarf(name: (nameChoice!))
//      print("Added a dwarf to the team.")
//      characters.append(dwarf)
//      dwarf.display()
//    default:
//      print("Erreur - Choose a number between 1 and 4.")
//      break
//    }
//     }
//  }
//
////  // with mentor
////  func createTeamCharacter() {
////    for _ in 0..<3 {
////      createCharacter()
////    }
////  }
////
//  // List of the team
//  func displayTeamCharacter() {
//    print("==========================")
//    print("List of the team: ")
//    print("--------------------")
//    for character in characters {
//      print("\(character)")
//      character.display()
//    }
//  }
//
//} // END class Team

// ###### ##### END ##### ##### //



// ###### ###### // In class Game // ###### ##### //

//  // Fonction permettant de demander à l'utilisateur d'entrer un nombre entier
//  func input() -> Int {
//    let strData = readLine();
//
//    return Int(strData!)!
//  }

//  // autre fonction comme input
//  func insert() {
//    var userChoice = 0
//    repeat {
//      if let data = readLine() {
//        if let dataToInt = Int(data) {
//          userChoice = dataToInt
//        }
//      }
//    } while userChoice != 1 && userChoice != 2
//  }

// ###### ###### // END In class Game // ###### ##### //
