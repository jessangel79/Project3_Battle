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
  var checkName = [String]()
  var arrayTeams = [Team]()
//  var nameTeam: String
//  var namePlayer: String

//  MARK: - Init
//  init(nameTeam: String, namePlayer: String) {
//    self.nameTeam = nameTeam
//    self.namePlayer = namePlayer
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
  private func createCharacter() -> Character? {
    var userChoice = 0
    listCharactersMenu()
    
    repeat {
      if let data = readLine() {
        if let dataToInt = Int(data) {
          userChoice = dataToInt
        }
      }
    } while userChoice != 1 && userChoice != 2 && userChoice != 3 && userChoice != 4
    
    
    switch userChoice {
    case 1: // fighter
      let fighter = Fighter(name: uniqueCharacterName())
      print("Added a fighter to the team.")
      return fighter
    case 2: // wizard
      let wizard = Wizard(name: uniqueCharacterName())
      print("Added a wizard to the team.")
      return wizard
    case 3: // giant
      let giant = Giant(name: uniqueCharacterName())
      print("Added a giant to the team.")
      return giant
    case 4: // dwarf
      let dwarf = Dwarf(name: uniqueCharacterName())
      print("Added a dwarf to the team.")
      return dwarf
    default:
      return nil
    }
  }
  
  // loop to create the team with 3 characters
  func createCharacters() -> [Character]? {
    var characters = [Character]()
    for _ in 0..<3 {
      guard let character = createCharacter() else { return nil }
      characters.append(character)
      // test print
      print("Test print in createCharacterS()")
      print("display check name : \(checkName)")
    }
    return characters
  }
  
  // function to create a team and complete the array "arrayTeams"
  private func createTeam() -> Team? {
    //var nameTeam = ""
    //    print("")
    //    print("=========================")
    //    print("Enter the name of team : ")
    //    print("=========================")
    //    repeat {
    //      if let data = readLine() {
    //        nameTeam = data
    //      }
    //    } while nameTeam == ""
    
    let team = Team()
    guard let characters = createCharacters() else { return nil }
    team.characters = characters
    return team
    // version avec if let ###
    //    if let characters = createCharacters() {
    //    team.characters = characters
    //    return team
    //    } else {
    //      return nil
    //    }
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
      var namePlayer = ""
      print("")
      print("==================================")
      print("Enter the name of player \(i+1) : ")
      print("==================================")
      repeat {
        if let data = readLine() {
          namePlayer = data
        }
      } while namePlayer == ""
      print("------------------------------")
      print("Player \(i+1) : \(namePlayer)")
      

      // with mentor
      for i in 0..<numberOfTeam {
        print("-----------------------------")
        print("Creation of the team N°\(i+1)")
        print("-----------------------------")
        guard let team = createTeam() else { return }
        arrayTeams.append(team)
      }
    }
  }
  
  // check if the name of the character already exists
  func uniqueCharacterName() -> String {
    print("Choose the name of your character :")
    var characterName = ""
    repeat {
      if let data = readLine() {
        characterName = data
        if checkName.contains(characterName) {
          print("This character name is already taken") // a supp ###
          print("The name: '\(characterName)' already exists !")
          print("Please enter a new name.")
          characterName = ""
        } else {
          print("The name: '\(characterName)' is available.") // a supp ###
          checkName.append(characterName)
        }
      }
    } while characterName == ""
    return characterName
  }

  
} // END class TeamFactory
