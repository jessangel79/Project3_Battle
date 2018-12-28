//
//  Game.swift
//  P3_Battle
//
//  Created by Angelique Babin on 20/12/2018.
//  Copyright © 2018 Angelique Babin. All rights reserved.
//

import Foundation

class Game {
  
  //MARK: - Vars
  private var arrayTeams = [Team]() // with mentor // array gathering the teams
  private var endlessLoop = true // let si false
  
  //MARK: - Init

  //MARK: - Methodes
//  // Fonction permettant de demander à l'utilisateur d'entrer un nombre entier
  func input() -> Int {
    let strData = readLine();

    return Int(strData!)!
  }
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
  
  // function for start game
  func start() {
    var userChoice = 0
    repeat {
      
      welcome()
      repeat {
        if let data = readLine() {
          if let dataToInt = Int(data) {
            userChoice = dataToInt
          }
        }
      } while userChoice != 1 && userChoice != 2 && userChoice != 3
      
      switch userChoice {
      case 1:
        print("New Game !!! - Creation of the 2 teams !")
        createTwoTeams()
      case 2:
        print("Battle")
        battle() // fight ...
      case 3:
        print("End of Game")
        endlessLoop = false
        //          endOfGame()
      default:
        break
      }
      userChoice = 0
    } while endlessLoop
  }
  
  // Interface d'accueil
  private func welcome() {
    print("")
    print("=========================================="
      + "\n Battle of warriors "
      + "\n------------------------------------------"
      + "\n1 - Start Game: Creation of the 2 teams ! "
      + "\n2 - Battle "
      + "\n3 - End of Game "
      + "\n==========================================")
  }
  
  // loop to create two teams
  private func createTwoTeams() {
    for i in 0..<2 {
      print("")
      print("==================================")
      print("Enter the name of player \(i+1) : ")
      print("==================================")
      let team = createTeam()
      arrayTeams.append(team)
    }
  }
  
  // function to create a team and complete the array "arrayTeams"
  private func createTeam() -> Team {
    var nameTeam = ""
    repeat {
      if let data = readLine() {
            nameTeam = data
      }
    } while nameTeam == ""
    
    let team = Team(nameTeam: nameTeam)
    team.createTeamCharacter()
    team.displayTeamCharacter()
    return team
  }
  
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
  
  // Battle ??? --- EN COURS ----
  private func battle() {
    var userChoice: Int
    
    // On affiche d'abord les caractéristiques du personnage qui doit jouer
    //self.display()
    
    // On boucle tant qu'il n'a pas choisi une des options
    repeat {
      print("======================================================")
      print("What action to do ?")
      print("1. Display of teams and life points of the characters.")
      print("2. Report last action.")
      print("3. Choice of the character to play.")
      print("4. Choice of the character’s target.")
      print("5. Action of the character.")
//      print("6. Random arrival of a treasure chest.")
      print("==================================")
      //let gameStart = Game()
      //userChoice = gameStart.input()
      userChoice = input()
      print()
    } while userChoice != 1 && userChoice != 2 && userChoice != 3 && userChoice != 4 && userChoice != 5
    
    // On réalise l'action demandée
    switch userChoice {
      case 1: // Display of teams and life points of the characters
        print("Choice 2")
      case 2: // Report last action
        print("Choice 2")
        //      let fighter = Fighter(name: characterName)
      //      characters.append(fighter)
      case 3: // Choice of the character to play
        print("choice 3")
        //      let wizard = Wizard(name: characterName)
      //      characters.append(wizard)
      case 4: // Choice of the character’s target
        print("choice 4")
        //      let giant = Giant(name: characterName)
      //      characters.append(giant)
      case 5: // Action of the character
        print("choice 5")
        //      let dwarf = Dwarf(name: characterName)
      //      characters.append(dwarf)
      
  //    case 6: // Ramdom arrival of a treasure chest containing a random weapon
  //      print("choice 6")
      default:
        break
    }

//    if userChoice == 1 {
//      self.attack(character: character)
//    } //else {
////      self.upgradeWeapon() // for test ====
////    }
 } // Battle ??? --- EN COURS ----
  
  
} // END Class Game
