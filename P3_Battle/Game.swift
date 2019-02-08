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
  private var endlessLoop = true
  private var battleIsEnded = false

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
      case 1: // New game with reset of variables and creation of the teams
        endlessLoop = true
        battleIsEnded = false
        let teamFactory = TeamFactory()
        teamFactory.createTeams()
        arrayTeams = teamFactory.arrayTeams // import arrayTeams of class TeamFactory
      case 2: // Show the teams: statistics and equipment for each character.
        listTeams()
      case 3: // Start the battle
        battle()
        endOfBattle()
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
    print("===========================================================================")
    print("@@@@@@@@@@@@  🛡 🛡 🛡  ⚔️  Battle of warriors  ⚔️  🛡 🛡 🛡  @@@@@@@@@@@@")
    print("===========================================================================")
    print("What action to do ? - Choose a number between 1 and 5 :")
    print("---------------------------------------------------------------------------")
    print("1. 🆕 New Game : Creation of the teams. ")
    print("2. 🛡 Show the teams created : statistics and equipment for each character.")
    print("3. ⚔️ Start the battle ! ")
    print("4. 🚩 Show the teams and the winner to the end of game.")
    print("5. ➡︎ Exit of Game ")
    print("===========================================================================")
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
  private func battle() {
    if arrayTeams.count == 0 {
      print("⛔️ Sorry no team was created !")
    } else if battleIsEnded == true {
      print(" ")
      print("🚩The game is ended ! Please to select a new game.")
    } else {
      displayStartBattle() // display the start menu of the battle
      
      var myCharacter: Character
      repeat {
        for nbTeam in 0..<arrayTeams.count {
          choiceMyCharacter(nbTeam: nbTeam) // Choose a character of the team to attack the enemy of the other team
          myCharacter = arrayTeams[nbTeam].characters[userChoice() - 1]
          
          if myCharacter.life > 0 {
            // a chest appears randomly in front of the character and a new weapon appears
            let randomChest = Chest()
            randomChest.randomChest(character: myCharacter)
            
            if myCharacter.isBlocked == false {
              if let wizard = myCharacter as? Wizard { // check if the character is a wizard
                wizardHeal(wizard: wizard, nbTeam: nbTeam)
              } else {
                // attack enemy
                if nbTeam == 0 {
                  let myTeamEnemy = arrayTeams[nbTeam+1]
                  fightAttack(myCharacter: myCharacter, myTeamEnemy: myTeamEnemy, nbTeam: nbTeam)
                  if myTeamEnemy.isDead() { // check if the enemy is dead
                    return
                  }
                } else {
                  let myTeamEnemy = arrayTeams[nbTeam-1]
                  fightAttack(myCharacter: myCharacter, myTeamEnemy: myTeamEnemy, nbTeam: nbTeam)
                  if myTeamEnemy.isDead() {
                    return
                  }
                }
              }
            } else {
              characterIsBLocked(myCharacter: myCharacter) // display that a character is bLocked and unlocked him
            }
          } else {
            displayCharacterIsDead(myCharacter: myCharacter) // display that the chosen character is already dead
          }
        } // END of loop for in
      } while battleIsEnded == false
    }
  }
  
  // display the start menu of the battle
  private func displayStartBattle() {
    print("==================================")
    print("@@@ ⚔️ The battle starts ! ⚔️ @@@")
  }
  
  // Choose a character of the team to heal him
  private func wizardHeal(wizard: Wizard, nbTeam: Int) {
    arrayTeams[nbTeam].displayTeam()
    print("===============================================")
    print("🔮 Choose a character of your team to heal him :")
    print("-----------------------------------------------")
    let myCharacter = arrayTeams[nbTeam].characters[userChoice() - 1]
    wizard.heal(character: myCharacter)
  }
  
  // Choose a character enemy of the other team to attack
  private func fightAttack(myCharacter: Character, myTeamEnemy: Team, nbTeam: Int) {
    print("========================================================")
    print("🗡 Choose a character from the opposing team to attack :")
    print("--------------------------------------------------------")
    
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
  
  // Choose a character of the team to attack the enemy of the other team
  private func choiceMyCharacter(nbTeam: Int) {
    print("==================================")
    print("Turn of player \(nbTeam+1) - Team \(nbTeam+1) :")
    print("==================================")
    let team = arrayTeams[nbTeam]
    team.displayTeam()
    print("====================================================")
    print("Player \(nbTeam+1) : What characters you choose to fight ? ⚔️")
    print("----------------------------------------------------")
  }
  
  // allows the user to choose a character of the team between 1 and 3
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
  
  // display that a character is bLocked and unlocked him
  private func characterIsBLocked(myCharacter: Character) {
    print("The \(myCharacter.type) \"\(myCharacter.name)\" is freezed 🥶 and blocked for this turn ↪️")
    myCharacter.isBlocked = false
  }
  
  // display that the chosen character is already dead and can no longer attack
  private func displayCharacterIsDead(myCharacter: Character) {
    print("-------------------------------------------------------------------------------------")
    print("Sorry the \(myCharacter.type) \"\(myCharacter.name)\" is already dead and cannot attack !!! ❌")
    print("-------------------------------------------------------------------------------------")
  }
  
  // check and display the winner
  private func displayWinner() {
    for i in 0..<arrayTeams.count {
      let team = arrayTeams[i]
      if team.isDead() == false {
        print("-------------------------------------------------------")
        print("@@@  🏆 Player \(i+1) - Team \(i+1) : You win !!! 🏆  @@@")
        print("-------------------------------------------------------")
      }
    }
  }
  
  // display the teams and the winner at the end of the game
  private func resumeGame() {
    if arrayTeams.count == 0 {
      print("Thanks select 🆕 \"New Game\" ")
    } else if arrayTeams.count != 0 && battleIsEnded == false {
      print("💬 No winner because the game did not start - Thanks select ⚔️ \"Start the battle\" ")
    } else {
      print("================================================")
      print("@@@@@@@@ 🏆 ⚔️ 🛡 END OF GAME 🛡 ⚔️ 🏆 @@@@@@@@")
      print("------------------------------------------------")
      listTeams() // display teams at the end of the game
      displayWinner()
    }
  }
  
  // Confirm the end of the battle with isBattleIsEnded = true
  private func endOfBattle() {
    for i in 0..<arrayTeams.count {
      let team = arrayTeams[i]
      if team.isDead() == true && arrayTeams.count != 0 {
        battleIsEnded = true
      }
    }
    resumeGame() // display the teams and the winner at the end of the game
  }
  
  // check if the team have been created and the user can choose to continue or no
  private func exitGame() {
    var userExit = 0
    if arrayTeams.count == 0 || battleIsEnded == true {
      print(" ➡︎ Exit of game")
      endlessLoop = false
    } else {
      print("⚠️ Alert your teams have been created !")
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
        print(" ➡︎ Exit of game")
        endlessLoop = false
      case 2:
        print("🔄 Continue the game")
        endlessLoop = true
      default:
        break
      }
      userExit = 0
    }
  }
} // END class Game
