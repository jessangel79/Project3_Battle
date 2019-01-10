////
////  GameSave.swift
////  P3_Battle
////
////  Created by Angelique Babin on 09/01/2019.
////  Copyright © 2019 Angelique Babin. All rights reserved.
////
//
//import Foundation
//
//class GameSave {
//  
//  //MARK: - Vars
//  //private var arrayTeams = [TeamFactory](Array<TeamFactory>()) // with mentor // array gathering the teams
//  private var endlessLoop = true // let si false
//  //var arrayOfTeams: [Team]
//  // var arrayOfTeams = TeamFactory()
//  //  var arrayOfTeams: [TeamFactory]
//  
//  
//  //MARK: - Init
//  //  init(arrayOfTeams: TeamFactory) {
//  //    self.arrayOfTeams = [arrayOfTeams]
//  //  }
//  //MARK: - Methodes
//  
//  // function for start game
//  func start() {
//    var userChoice = 0
//    repeat {
//      welcome()
//      repeat {
//        if let data = readLine() {
//          if let dataToInt = Int(data) {
//            userChoice = dataToInt
//          }
//        }
//      } while userChoice != 1 && userChoice != 2 && userChoice != 3
//      
//      switch userChoice {
//      case 1:
//        print("New Game !!! - Creation of the teams !")
//        let createTheTeams = TeamFactory() //(nameTeam: "", namePlayer: "")
//        createTheTeams.createTeams()
//      case 2:
//        print("Battle")
//        battle() // fight ...
//      case 3:
//        print("End of Game")
//        endlessLoop = false
//      //          endOfGame()
//      default:
//        print("Erreur - Choose a number between 1 and 3.")
//        //break
//      }
//      userChoice = 0
//    } while endlessLoop
//  }
//  
//  // Interface to welcome
//  private func welcome() {
//    print("")
//    print("=========================================="
//      + "\n Battle of warriors "
//      + "\n------------------------------------------"
//      + "\n1 - Start Game: Creation of the 2 teams ! "
//      + "\n2 - Battle "
//      + "\n3 - End of Game "
//      + "\n==========================================")
//  }
//  
//  //  // loop to create two teams
//  //  private func createTwoTeams() {
//  //    for i in 0..<2 {
//  //      print("")
//  //      print("==================================")
//  //      print("Enter the name of player \(i+1) : ")
//  //      print("==================================")
//  //      let team = createTeam()
//  //      arrayTeams.append(team)
//  //    }
//  //  }
//  //
//  //  // function to create a team and complete the array "arrayTeams"
//  //  private func createTeam() -> TeamFactory {
//  //    var nameTeam = ""
//  //    repeat {
//  //      if let data = readLine() {
//  //            nameTeam = data
//  //      }
//  //    } while nameTeam == ""
//  //
//  //    let team = TeamFactory(nameTeam: nameTeam)
//  //    team.createTeamCharacter()
//  //    //team.displayTeamCharacter()
//  //    return team
//  //  }
//  
//  // Interface to display the choices to the battle
//  private func listChoiceBattle() {
//    print("======================================================")
//    print("What action to do ?")
//    print("------------------------------------------------------")
//    print("1. Display of teams and life points of the characters.")
//    print("2. Report last action.")
//    print("3. Choice of the character to play.")
//    print("4. Choice of the character’s target.")
//    print("5. Action of the character.")
//    //      print("6. Random arrival of a treasure chest.")
//    print("======================================================")
//  }
//  
//  // Battle ??? --- EN COURS ----
//  private func battle() {
//    var userChoice = 0
//    // On affiche d'abord les caractéristiques du personnage qui doit jouer
//    //self.display()
//    
//    // On boucle tant qu'il n'a pas choisi une des options
//    repeat {
//      listChoiceBattle()
//      if let data = readLine() {
//        if let dataToInt = Int(data) {
//          userChoice = dataToInt
//        }
//      }
//    } while userChoice != 1 && userChoice != 2 && userChoice != 3 && userChoice != 4 && userChoice != 5
//    
//    // On réalise l'action demandée
//    switch userChoice {
//    case 1: // Display of teams and life points of the characters
//      print("Choice 1")
//      //        let arrayOfTeams = [Team]()
//      //        for character in arrayTeams {
//      //          character.displayTeamCharacter()
//      //        }
//      print("Test list array 'arrayTeam'")
//      let teamDisplay = Team()//= TeamFactory(nameTeam: "", namePlayer: "")
//      teamDisplay.displayTeamCharacter()
//      //        let team = TeamFactory(nameTeam: "", namePlayer: "")
//      //        team.displayTeamCharacter()
//      //        let team = Team()
//    //        team.displayTeamCharacter()
//    case 2: // Report last action
//      print("Choice 2")
//      //        for character in arrayTeams {
//      //          character.displayTeamCharacterOther()
//    //        }
//    case 3: // Choice of the character to play
//      print("choice 3")
//    case 4: // Choice of the character’s target
//      print("choice 4")
//    case 5: // Action of the character
//      print("choice 5")
//      //    case 6: // Ramdom arrival of a treasure chest containing a random weapon
//    //      print("choice 6")
//    default:
//      print("Erreur - Choose a number between 1 and 5.")
//      //break
//    }
//    
//    //    if userChoice == 1 {
//    //      self.attack(character: character)
//    //    } //else {
//    ////      self.upgradeWeapon() // for test ====
//    ////    }
//  } // Battle ??? --- EN COURS ----
//  
//  
//} // END Class Game
