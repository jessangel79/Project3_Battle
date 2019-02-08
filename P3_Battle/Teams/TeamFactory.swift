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
  private var checkName = [String]()
  var arrayTeams = [Team]()
  
  // MARK: - Methodes
  private func listCharactersMenu() {
    print("")
    print("=======================================================================")
    print("🛡 Create your team - Choose 3 characters between 1 and 4 : 🛡")
    print("-----------------------------------------------------------------------")
    print("1 - Fighter ------------- Life: 100 --- Damage: 10 "
      + "\n2 - Wizard  ------------- Life: 70  --- Heal: 20 + Dispel 🔮"
      + "\n3 - Giant   ------------- Life: 120 --- Damage: 5 "
      + "\n4 - Dwarf   ------------- Life: 60  --- Damage: 25 "
      + "\n5 - Elementary Of Ice --- Life: 80  --- Damage: 15 + Power to freeze 🥶"
      + "\n=======================================================================")
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
    } while userChoice != 1 && userChoice != 2 && userChoice != 3 && userChoice != 4 && userChoice != 5
    
    
    switch userChoice {
    case 1: // fighter
      let fighter = Fighter(name: uniqueCharacterName())
      print("Added a fighter to the team with the name \"\(fighter.name)\".")
      return fighter
    case 2: // wizard
      let wizard = Wizard(name: uniqueCharacterName())
      print("Added a Wizard to the team with the name \"\(wizard.name)\".")
      return wizard
    case 3: // giant
      let giant = Giant(name: uniqueCharacterName())
      print("Added a Giant to the team with the name \"\(giant.name)\".")
      return giant
    case 4: // dwarf
      let dwarf = Dwarf(name: uniqueCharacterName())
      print("Added a Dwarf to the team with the name \"\(dwarf.name)\".")
      return dwarf
    case 5: // Elementary Of Ice
      let elementaryOfIce = ElementaryOfIce(name: uniqueCharacterName())
      print("Added a Elementary Of Ice to the team with the name \"\(elementaryOfIce.name)\".")
      return elementaryOfIce
    default:
      return nil
    }
  }
  
  // Create the team with 3 characters
  private func createCharacters() -> [Character]? {
    var characters = [Character]()
    for _ in 0..<3 {
      guard let character = createCharacter() else { return nil }
      characters.append(character)
    }
    return characters
  }
  
  // Create a team
  private func createTeam() -> Team? {
    let team = Team()
    guard let characters = createCharacters() else { return nil }
    team.characters = characters // import array 'characters' of class Team
    return team
  }
  
  // Create several teams
  func createTeams() {
    var numberOfTeams = 0
    print("")
    print("==============================")
    print("@@@@  🆕 New Game !!! 🆕  @@@@")
    print("------------------------------")
    print("Enter the number of teams : ")
    print("==============================")
    repeat {
      if let data = readLine() {
        if let dataToInt = Int(data) {
          numberOfTeams = dataToInt
        }
      }
    } while numberOfTeams == 0
    
    // Loop for the creation of teams as much as the player has chosen
    for i in 0..<numberOfTeams {
      // Choose the name of player
      var namePlayer = ""
      print("")
      print("=============================")
      print("Enter the name of player \(i+1) : ")
      print("=============================")
      repeat {
        if let data = readLine() {
          namePlayer = data
        }
      } while namePlayer == ""
      
      // Creation of teams
      print("-----------------------------")
      print("Player \(i+1) : \(namePlayer)")
      print("Creation of the team N°\(i+1)")
      print("-----------------------------")
      guard let team = createTeam() else { return }
      arrayTeams.append(team)
    }
  }
  
  // check if the name of the character already exists
  private func uniqueCharacterName() -> String {
    print("Choose the name of your character :")
    var characterName = ""
    repeat {
      if let data = readLine() {
        characterName = data
        if checkName.contains(characterName) {
          print("⚠️ The name: '\(characterName)' already exists !")
          print("Please enter a new name.")
          characterName = ""
        } else {
          checkName.append(characterName)
        }
      }
    } while characterName == ""
    return characterName
  }
} // END class TeamFactory
