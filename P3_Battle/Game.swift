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
  var teams = [Team]() // with mentor
  // var teamPlayer: Int
  //var namePlayer: String
  
  private var endlessLoop = true // let si false
  
  //MARK: - Init
//  init(teamPlayer: Int) {
//    self.teamPlayer = teamPlayer
//  }
  
  //MARK: - Methodes
  // Fonction permettant de demander à l'utilisateur d'entrer un nombre entier
  func input() -> Int {
    let strData = readLine();
    
    return Int(strData!)!
  }
  // autre fonction
  func insert() {
    var userChoice = 0
    repeat {
      if let data = readLine() {
        if let dataToInt = Int(data) {
          userChoice = dataToInt
        }
      }
    } while userChoice != 1 && userChoice != 2
  }
  
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
        print("New Game !!!")
        newGame()
      case 2:
        print("Battle")
        play()
        //          battle()
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
    print("=================================="
      + "\n Battle of warriors "
      + "\n1 - New Game "
      + "\n2 - Battle "
      + "\n3 - End of Game "
      + "\n==================================")
  }
  
  private func listCreateTeam() {
    print("")
    print("=================================="
      + "\n Creation of the teams "
      + "\n1 - Create Team 1 "
      + "\n2 - Create Team 2"
      + "\n==================================")
  }
  
  private func newGame() {
    var userChoice = 0
    var namePlayer = ""
    listCreateTeam()
          repeat {
            if let data = readLine() {
              if let dataToInt = Int(data) {
                userChoice = dataToInt
              }
            }
        } while userChoice != 1 && userChoice != 2
    
        
        repeat {
          print("Name of player :")
          if let data = readLine() {
            namePlayer = data
          }
        } while namePlayer == ""
    
        switch userChoice {
        case 1:
          let team1 = Team(teamPlayer: 1, namePlayer: namePlayer)
          print("Player \(team1.teamPlayer): \(team1.namePlayer)")
          team1.createTeam()
          // team1.displayTeam()
        case 2:
          let team2 = Team(teamPlayer: 2, namePlayer: namePlayer)
          print("Player \(team2.teamPlayer): \(team2.namePlayer)")
          team2.createTeam()
          // team2.displayTeam()
          start()
        default:
          break
        }
  }
  
  // Battle ??? --- EN COURS ----
  func play() {
    var userChoice: Int
    
    // On affiche d'abord les caractéristiques du personnage qui doit jouer
    //self.display()
    
    // On boucle tant qu'il n'a pas choisi un de ces deux solutions
    repeat {
      print("==================================")
      print("What action to do ?")
      print("1. Display of teams and life points of the characters.")
      print("2. Report last action.")
      print("3. Choice of the character to play.")
      print("4. Random arrival of a treasure chest.")
      print("5. Choice of the character’s target.")
      print("6. Action of the character.")
      print("==================================")
      //let gameStart = Game()
      //userChoice = gameStart.input()
      userChoice = input()
      print()
    } while userChoice != 1 && userChoice != 2 && userChoice != 3 && userChoice != 4 && userChoice != 5 && userChoice != 6
    
    // On réalise l'action demandée
    switch userChoice {
    case 1: // Display of teams and life points of the characters
      print("Choice 1")
      
      //self.display()
      //      let fighter = Fighter(name: characterName)
    //      characters.append(fighter)
    case 2: // Report last action
      print("choice 2")
      //      let wizard = Wizard(name: characterName)
    //      characters.append(wizard)
    case 3: // Choice of the character to play
      print("choice 3")
      //      let giant = Giant(name: characterName)
    //      characters.append(giant)
    case 4: // Ramdom arrival of a treasure chest containing a random weapon
      print("choice 4")
      //      let dwarf = Dwarf(name: characterName)
    //      characters.append(dwarf)
    case 5: // Choice of the character’s target
      print("choice 5")
    case 6: // Action of the character
      print("choice 6")
    default:
      break
    }

//    if userChoice == 1 {
//      self.attack(character: character)
//    } //else {
////      self.upgradeWeapon() // for test ====
////    }
 } // Battle ??? --- EN COURS ----
  
  
  
//  // Name of player 1
//  private func namePlayer1() {
//    print("Name of the player 1 :")
//    if let namePlayerOne = readLine() {
//      print("================================================")
//      print("Hello \(namePlayerOne) !")
//    }
//  }
//  // Name of player 2
//  private func namePlayer2() {
//    print("Name of the player 2 :")
//    if let namePlayerTwo = readLine() {
//      print("================================================")
//      print("Hello \(namePlayerTwo) !")
//    }

  
  
} // END Class Game
