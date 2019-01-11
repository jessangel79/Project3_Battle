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
      case 1: // New Game !!! - Creation of the teams
        let teamFactory = TeamFactory()
        teamFactory.createTeams()
        arrayTeams = teamFactory.arrayTeams // import arrayTeams of class TeamFactory
      case 2: // fight ...
        battle()
      case 3:
        print("End of Game")
        endlessLoop = false
        //          endOfGame()
      default:
        print("Erreur - Choose a number between 1 and 3.")
        //break
      }
      userChoice = 0
    } while endlessLoop
  }
  
  // Interface to welcome
  private func welcome() {
    print("")
    print("========================================================"
      + "\n Battle of warriors - Choose a number between 1 and 3 : "
      + "\n--------------------------------------------------------"
      + "\n1 - Start Game: Creation of the teams ! "
      + "\n2 - Battle "
      + "\n3 - End of Game "
      + "\n========================================================")
  }
  
  
  // Interface to display the choices to the battle
  private func listChoiceBattle() {
    print("========================================================")
    print("What action to do ? - Choose a number between 1 and 5 : ")
    print("--------------------------------------------------------")
    print("1. Display of teams and life points of the characters.")
    print("2. Report last action.")
    print("3. Choice of the character to play.")
    print("4. Choice of the character’s target.")
    print("5. Action of the character.")
    //      print("6. Random arrival of a treasure chest.")
    print("========================================================")
  }

  // Battle ??? --- EN COURS ----
  private func battle() {
    var userChoice = 0
    
    // loop until one of the options is chosen
    repeat {
      listChoiceBattle()
        if let data = readLine() {
          if let dataToInt = Int(data) {
            userChoice = dataToInt
          }
        }
    } while userChoice != 1 && userChoice != 2 && userChoice != 3 && userChoice != 4 && userChoice != 5
    
    switch userChoice {
      case 1: // Display of teams and life points of the characters
        listTeams()
      case 2: // Report last action
        print("Choice 2")
      case 3: // Choice of the character to play
        print("choice 3")
      case 4: // Choice of the character’s target
        print("choice 4")
      case 5: // Action of the character
        print("choice 5")
  //    case 6: // Ramdom arrival of a treasure chest containing a random weapon
  //      print("choice 6")
      default:
        print("Erreur - Choose a number between 1 and 5.")
        //break
    }
    
//    if userChoice == 1 {
//      self.attack(character: character)
//    } //else {
////      self.upgradeWeapon() // for test ====
////    }
    
 } // Battle ??? --- EN COURS ----

  // display the teams and life points of the characters
  private func listTeams() {
    for i in 0..<arrayTeams.count {
      print("=======================")
      print("List of the team \(i+1)")
      print("-----------------------")
      let team = arrayTeams[i]
      team.displayTeam()
    }
  }
  

  
} // END Class Game
