//
//  GameSave.swift
//  P3_Battle
//
//  Created by Angelique Babin on 16/01/2019.
//  Copyright © 2019 Angelique Babin. All rights reserved.
//

import Foundation

class GameSaveOk {
  
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
      case 2: // Play to the game : Choice of character, fight, report  ...
        // check if the arrayTeam is empty
        if arrayTeams.count == 0 {
          print("Sorry no team was created !")
          start()
        } else {
          playGame()
        }
      case 3: // Exit of game
        exitGame()
      default:
        print("Erreur - Choose a number between 1 and 3.")
        //break
      }
      userChoice = 0
    } while endlessLoop
  }
  
  // Interface to display the starting menu
  private func welcome() {
    print("")
    print("========================================================"
      + "\n Battle of warriors - Choose a number between 1 and 3 : "
      + "\n--------------------------------------------------------"
      + "\n1 - Creation of the teams "
      + "\n2 - Start of game ! "
      + "\n3 - Exit of Game "
      + "\n========================================================")
  }
  
  
  // Interface to display the choices to the game
  private func listChoiceGame() {
    print("==================================================================")
    print("What action to do ? - Choose a number between 1 and 3 : ")
    print("------------------------------------------------------------------")
    print("1. Display of teams : statistics and equipment for each character.")
    print("2. Start the battle ! ")
    print("3. End of Game : Show the winner ! ")
    //    print("3. Choice of the character to play.")
    //    print("4. Choice of the character’s target.")
    //    print("5. Action of the character.")
    //      print("6. Random arrival of a treasure chest.")
    print("========================================================")
  }
  
  // Play to the game : Start of game --- EN COURS ----
  private func playGame() {
    var userChoice = 0
    
    // loop until one of the options is chosen
    repeat {
      listChoiceGame()
      repeat {
        if let data = readLine() {
          if let dataToInt = Int(data) {
            userChoice = dataToInt
          }
        }
      } while userChoice != 1 && userChoice != 2 && userChoice != 3
      
      switch userChoice {
      case 1: // Display of teams with the statistics and equipment for each character
        listTeams()
      case 2: // Start the battle
        battle()
      case 3: // Display the teams at the end of the game and the winner
        displayEndGame()
      default:
        print("Erreur - Choose a number between 1 and 3.")
        //break
      }
      userChoice = 0
    } while endlessLoop
  } // END of playGame
  
  // display the teams and life points of the characters
  private func listTeams() {
    for i in 0..<arrayTeams.count {
      print("====================")
      print("List of the team \(i+1) :")
      print("--------------------")
      let team = arrayTeams[i]
      team.displayTeam()
    }
  }
  
  // Play to the game - Players perform the following action loop:
  // 1. Choose a character from your team
  // 2. Choose a character of the opposing team to attack or a character of its own team to care for in the case of the Wizard.
  // The program will then carry out the attack (or heal) and tell the players what just happened.
  func battle() {
    print("=============================")
    print("@@@  The battle starts !  @@@")
    
    var myCharacter: Character
    let aTeam = Team()
    
    while endlessLoop {
      for nbTeam in 0..<arrayTeams.count {
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
      }
    } // end of while
  }
  
  // Choose the character of a team to attack the enemy of the other team
  private func fightAttack(myCharacter: Character, myTeamEnemy: Team, nbTeam: Int) {
    //    arrayTeams[nbTeam].displayTeam()
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
    //    let myEnemy = myTeamEnemy.characters[userChoice() - 1]
    //    myCharacter.attack(character: myEnemy)
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
  
  // // check and display the winner
  private func displayWinner() {
    for i in 0..<arrayTeams.count {
      let team = arrayTeams[i]
      if team.isDead() == false {
        print("-----------------------------------------------------")
        print("@@@   Player \(i+1) - Team \(i+1) : You win !!!   @@@")
        print("-----------------------------------------------------")
        endlessLoop = false
      }
    }
  }
  
  // display the teams and the winner at the end of the game
  private func displayEndGame() {
    print("===========================")
    print("@@@     END OF GAME     @@@")
    print("---------------------------")
    listTeams() // display teams at the end of the game
    displayWinner() // check and display the winner
    //    endlessLoop = false
  }
  
  // // check if a team is dead
  private func teamIsDead() {
    for i in 0..<arrayTeams.count {
      let team = arrayTeams[i]
      if team.isDead() == true {
        displayEndGame()
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
    } else {
      print("Exit of game")
      endlessLoop = false
    }
  }
  
  
  //  private func checkTeamCreated() {
  //    // check if the array is empty
  //    if arrayTeams.count == 0 {
  //      print("Sorry no team was created !")
  //      start()
  //    }
  //  }
  
  //  // Play to the game - Players perform the following action loop:
  //  // 1. Choose a character from your team
  //  // 2. Choose a character of the opposing team to attack or a character of its own team to care for in the case of the Mage.
  //  // The program will then carry out the attack (or heal) and tell the players what just happened.
  //  func battle() {
  //    print("=============================")
  //    print("@@@  The battle starts !  @@@")
  //
  //    //    reportLastAction()
  //    var myCharacter: Character
  //    repeat {
  //      for i in 0..<arrayTeams.count {
  //        print("===============================")
  //        print("Turn of player \(i+1) - Team \(i+1) :")
  //        print("===============================")
  //        let team = arrayTeams[i]
  //        team.displayTeam()
  //        print("==================================================")
  //        print("Player \(i+1) : What characters you choose to fight ?")
  //        print("--------------------------------------------------")
  //        myCharacter = arrayTeams[i].characters[userChoice() - 1]
  //
  //        if let wizard = myCharacter as? Wizard {
  //          arrayTeams[i].displayTeam()
  //          print("=============================================")
  //          print("Choose a character of your team to heal him :")
  //          print("---------------------------------------------")
  //          myCharacter = arrayTeams[i].characters[userChoice() - 1]
  //          wizard.heal(character: myCharacter)
  //        } else {
  //
  //          if i == 0 {
  //            let myTeamEnemy = arrayTeams[i+1]
  //            fightAction(myCharacter: myCharacter, myTeamEnemy: myTeamEnemy, index: i)
  //            //            let myEnemy = myTeamEnemy.characters[userChoice() - 1]
  //            //            arrayTeams[i].displayTeam()
  //            //            print("Choose a character from the opposing team to attack.")
  //            //            myCharacter.attack(character: myEnemy)
  //            //            if myTeamEnemy.isDead() {
  //            //            return
  //            //            }
  //          } else {
  //            // attack enemy
  //            let myTeamEnemy = arrayTeams[i-1]
  //            fightAction(myCharacter: myCharacter, myTeamEnemy: myTeamEnemy, index: i)
  //            //            let myEnemy = myTeamEnemy.characters[userChoice() - 1]
  //            //            arrayTeams[i].displayTeam()
  //            //            print("Choose a character from the opposing team to attack.")
  //            //            myCharacter.attack(character: myEnemy)
  //            //            if myTeamEnemy.isDead() {
  //            //              return
  //            //            }
  //          }
  //        }
  //      }
  //    } while endlessLoop == true
  //  }
  
  //  private func fightAction(myCharacter: Character, myTeamEnemy: Team, index: Int) {
  ////    arrayTeams[index].displayTeam()
  //    print("=====================================================")
  //    print("Choose a character from the opposing team to attack :")
  //    print("-----------------------------------------------------")
  //    if index == 0 {
  //      arrayTeams[index+1].displayLastAction()
  //      let myEnemy = myTeamEnemy.characters[userChoice() - 1]
  //      myCharacter.attack(character: myEnemy)
  //    } else {
  //      arrayTeams[index-1].displayLastAction()
  //      let myEnemy = myTeamEnemy.characters[userChoice() - 1]
  //      myCharacter.attack(character: myEnemy)
  //    }
  ////    let myEnemy = myTeamEnemy.characters[userChoice() - 1]
  ////    myCharacter.attack(character: myEnemy)
  //    if myTeamEnemy.isDead() {
  //      return
  //    }
  //  }
  
  
  //  // display of last action report
  //  private func reportLastAction() {
  //    for i in 0..<arrayTeams.count {
  //      print("==========================================")
  //      print("Report of last action to the team \(i+1) :")
  //      print("------------------------------------------")
  //      let team = arrayTeams[i]
  //      team.displayLastAction()
  //    }
  //  }
  
  //        // check if one of my characters is dead and allows the player to play again
  //        if myCharacter.life > 0 {
  //        repeat {
  // ..... // in the function Battle() //
  //        } else {
  //          print("--------------------------------------------------")
  //          print("Sorry you're dead and you cannot attack or heal !")
  //          print("--------------------------------------------------")
  //
  //        }
  //      } while myCharacter.life == 0
  
  //    if userChoice == 1 {
  //      self.attack(character: character)
  //    } //else {
  ////      self.upgradeWeapon() // for test ====
  ////    }
  
  
} // END class Game
