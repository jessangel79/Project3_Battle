//
//  TeamFactory.swift
//  P3_Battle
//
//  Created by Angelique Babin on 04/01/2019.
//  Copyright © 2019 Angelique Babin. All rights reserved.
//

import Foundation

class TeamFactory {
  
  //MARK: - Vars
  var team = [String]()
  var arrayTeams = [TeamFactory]()
  var characters = [Character]()
  //let nameTeam: String
  
  //MARK: - Init
//  init(nameTeam: String) {
//    self.nameTeam = nameTeam
//  }
  
  // MARK: - Methodes
  private func listCharactersMenu() {
    print("")
    print("=========================================================")
    print("Create your team - Choice 3 characters between 1 and 4: ")
    print("---------------------------------------------------------")
    print("1 - Fighter - Life: 100 - Damage: 10"
      + "\n2 - Wizard  - Life: 50  - Heal: 20 "
      + "\n3 - Giant   - Life: 200 - Damage: 5"
      + "\n4 - Dwarf   - Life: 80  - Damage: 20"
      + "\n=========================================================")
  }
  
  // function to choice a character
  private func createCharacter() {
    var userChoice = 0
    listCharactersMenu()
    
    repeat {
      if let data = readLine() {
        if let dataToInt = Int(data) {
          userChoice = dataToInt
        }
      }
    } while userChoice != 1 && userChoice != 2 && userChoice != 3 && userChoice != 4
    
    // check if the name of the character already exists
    var characterName = ""
    repeat {
      print("Choose the name of your character: ")
      if let data = readLine() {
        characterName = data
        if team.contains(characterName) { // check if the name already exists
          print("The name: '\(characterName)' already exists !")
          print("Please enter a new name.")
          characterName = ""
        } else {
          print("The name: '\(characterName)' is available.")
          team.append(characterName)
        }
      }
    } while characterName == ""
    
    switch userChoice {
    case 1: // fighter
      let fighter = Fighter(name: characterName)
      print("Added a fighter to the team.")
      characters.append(fighter)
      fighter.display()
    case 2: // wizard
      let wizard = Wizard(name: characterName)
      print("Added a wizard to the team.")
      characters.append(wizard)
      wizard.display()
    case 3: // giant
      let giant = Giant(name: characterName)
      print("Added a giant to the team.")
      characters.append(giant)
      giant.display()
    case 4: // dwarf
      let dwarf = Dwarf(name: characterName)
      print("Added a dwarf to the team.")
      characters.append(dwarf)
      dwarf.display()
    default:
      print("Erreur - Choose a number between 1 and 4.")
      //break
    }
  }
  
  // loop to create the team with 3 characters
  func createCharacters() {
    for _ in 0..<3 {
      createCharacter()
    }
    // afficher les équipes à chaque boucle
//    let teamDisplay = Team(arrayOfTeams: arrayTeams)
//    teamDisplay.displayTeamCharacter()
  }
  
  // loop to create two teams
  func createTeams() {
    var numberOfTeam = 0
    print("")
    print("============================")
    print("Enter the number of teams : ")
    print("============================")
    repeat {
      if let data = readLine() {
        if let dataToInt = Int(data) {
          numberOfTeam = dataToInt
        }
      }
    } while numberOfTeam == 0
    
    for i in 0..<numberOfTeam {
      print("")
      print("==================================")
      print("Enter the name of player \(i+1) : ")
      print("==================================")
      let teams = createTeam()
      arrayTeams.append(teams)
    }
  }
  
  // function to create a team and complete the array "arrayTeams"
  private func createTeam() -> TeamFactory {
    var nameTeam = ""
    // print("Enter the name of teams")
    repeat {
      if let data = readLine() {
        nameTeam = data
      }
    } while nameTeam == ""
    
    let team = TeamFactory() // (nameTeam: nameTeam)
    team.createCharacters()
    // team.displayTeamCharacter()
    return team
  }
  
  
} // END class TeamFactory
