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
  private var arrayTeams = [Team]() // array of the teams with the arrays of 3 the characters
  private var endlessLoop = true // let si false
  private var endBattle = false

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
      } while userChoice != 1 && userChoice != 2 && userChoice != 3 && userChoice != 4 && userChoice != 5
      
      switch userChoice {
      case 1: // New game with reset of varible and creation of the teams
        endlessLoop = true
        endBattle = false
        let teamFactory = TeamFactory()
        teamFactory.createTeams()
        arrayTeams = teamFactory.arrayTeams // import arrayTeams of class TeamFactory
      case 2: // Show the teams: statistics and equipment for each character.
        listTeams()
      case 3: // Start the battle
        battle()
      case 4: // Show the teams and the winner to the end of game
        resumeGame()
      case 5: // Exit of game
        exitGame()
      default:
        break
      }
      userChoice = 0
    } while endlessLoop
  }
  
  // Interface to display the starting menu
  private func welcome() {
    print("")
    print("========================================================================")
    print("@@@@@@@@@@@@          Battle of warriors            @@@@@@@@@@@@")
    print("========================================================================")
    print("What action to do ? - Choose a number between 1 and 5 :")
    print("------------------------------------------------------------------------")
    print("1. New Game : Creation of the teams.")
    print("2. Show the teams created : statistics and equipment for each character.")
    print("3. Start the battle ! ")
    print("4. Show the teams and the winner to the end of game.")
    print("5. Exit of Game ")
    print("========================================================================")
  }

  // display the teams and life points of the characters
  private func listTeams() {
    if arrayTeams.count == 0 {
      print("Sorry no team was created !")
    } else {
      for i in 0..<arrayTeams.count {
          print("====================")
          print("List of the team \(i+1) :")
          print("--------------------")
          let team = arrayTeams[i]
          team.displayTeam()
      }
    }
  }

  // Play to the game - Players perform the following action loop:
  // 1. Choose a character from your team
  // 2. Choose a character of the opposing team to attack or a character of its own team to care for in the case of the Wizard.
  // The program will then carry out the attack (or heal) and tell the players what just happened.
  func battle() {
    if arrayTeams.count == 0 {
      print("Sorry no team was created !")
    } else if endBattle == true {
      resumeGame()
    } else {
      print("=============================")
      print("@@@  The battle starts !  @@@")
      
      var myCharacter: Character
      let aTeam = Team()
      
      repeat {
//      while endBattle == false {
        for nbTeam in 0..<arrayTeams.count {
          if endBattle == false {
            print("=============================")
            print("Turn of player \(nbTeam+1) - Team \(nbTeam+1) :")
            print("=============================")
            let team = arrayTeams[nbTeam]
            team.displayTeam()
            print("==================================================")
            print("Player \(nbTeam+1) : What characters you choose to fight ?")
            print("--------------------------------------------------")
            myCharacter = arrayTeams[nbTeam].characters[userChoice() - 1]
            
            if let wizard = myCharacter as? Wizard {
              arrayTeams[nbTeam].displayTeam()
              print("=============================================")
              print("Choose a character of your team to heal him :")
              print("---------------------------------------------")
              myCharacter = arrayTeams[nbTeam].characters[userChoice() - 1]
              wizard.heal(character: myCharacter)
            } else {
              
              // attack enemy
              switch nbTeam {
              case 0:
                let myTeamEnemy = arrayTeams[nbTeam+1]
                fightAttack(myCharacter: myCharacter, myTeamEnemy: myTeamEnemy, nbTeam: nbTeam)
                if aTeam.isDead() {
                  return
                }
                teamIsDead()
              case 1:
                let myTeamEnemy = arrayTeams[nbTeam-1]
                fightAttack(myCharacter: myCharacter, myTeamEnemy: myTeamEnemy, nbTeam: nbTeam)
                if aTeam.isDead() {
                  return
                }
                teamIsDead()
              default:
                break
              }
            }
          } // END if endBattle
        } // END of loop for in
      } while endBattle == false // END of while
    }
  }
  
  // Choose the character of a team to attack the enemy of the other team
  private func fightAttack(myCharacter: Character, myTeamEnemy: Team, nbTeam: Int) {
    print("=====================================================")
    print("Choose a character from the opposing team to attack :")
    print("-----------------------------------------------------")
    
    switch nbTeam {
    case 0:
      arrayTeams[nbTeam+1].displayTeam()
      let myEnemy = myTeamEnemy.characters[userChoice() - 1]
      myCharacter.attack(character: myEnemy)
    case 1:
      arrayTeams[nbTeam-1].displayTeam()
      let myEnemy = myTeamEnemy.characters[userChoice() - 1]
      myCharacter.attack(character: myEnemy)
    default:
      break
    }
  }
  
  // Allows the user to choose a character of the team between 1 and 3
  private func userChoice() -> Int {
    var characterChoice = 0
    repeat {
      if let data = readLine() {
        if let dataToInt = Int(data) {
          characterChoice = dataToInt
        }
      }
    } while characterChoice != 1 && characterChoice != 2 && characterChoice != 3
    return characterChoice
  }
  
  // check and display the winner
  private func displayWinner() {
    for i in 0..<arrayTeams.count {
      let team = arrayTeams[i]
      if team.isDead() == false {
        print("-----------------------------------------------------")
        print("@@@   Player \(i+1) - Team \(i+1) : You win !!!   @@@")
        print("-----------------------------------------------------")
//        endBattle = true // A revoir ####
      }
    } // en test ######
  }
  
  // display the teams and the winner at the end of the game
  private func resumeGame() {
    print("===========================")
    print("@@@     END OF GAME     @@@")
    print("---------------------------")
    listTeams() // display teams at the end of the game
    displayWinner() // check and display the winner
  }
  
  // // check if a team is dead
  private func teamIsDead() {
    for i in 0..<arrayTeams.count {
      let team = arrayTeams[i]
      if team.isDead() == true {
        endBattle = true // A revoir #### player 2 can play even if isDead
        resumeGame()
      }
    }
  }
  
  // check if the team have been created and the user can choose to continue or no
  private func exitGame() {
    var userExit = 0
    if arrayTeams.count != 0 {
      print("Alert your teams have been created !")
      print("Do you really want to quit the game ?")
      print("1 - Yes")
      print("2 - No")
      repeat {
        if let data = readLine() {
          if let dataToInt = Int(data) {
            userExit = dataToInt
          }
        }
      } while userExit != 1 && userExit != 2
      
      switch userExit {
      case 1:
        print("Exit of game")
        endlessLoop = false
      case 2:
        print("Continue the game")
        endlessLoop = true
      default:
        break
      }
      userExit = 0
    } else {
      print("Exit of game")
      endlessLoop = false
    }
  }
} // END class Game
