//
//  Team.swift
//  P3_Battle
//
//  Created by Angelique Babin on 21/12/2018.
//  Copyright © 2018 Angelique Babin. All rights reserved.
//

import Foundation

class Team {

  //MARK: - Vars
  var characters = [Character]() // with mentor
  var arrayOfTeams: [TeamFactory]
  //let nameTeam: String
  
  
  //MARK: - Init

  init(arrayOfTeams: TeamFactory) { // nameTeam: String
    self.arrayOfTeams = [arrayOfTeams]
//    self.nameTeam = nameTeam
  }

//  // MARK: - Methodes
//  private func listCharactersMenu() {
//    print("")
//    print("=========================================================")
//    print("Create your team - Choice 3 characters between 1 and 4: ")
//    print("---------------------------------------------------------")
//    print("1 - Fighter - Life: 100 - Damage: 10"
//      + "\n2 - Wizard  - Life: 50  - Heal: 20 "
//      + "\n3 - Giant   - Life: 200 - Damage: 5"
//      + "\n4 - Dwarf   - Life: 80  - Damage: 20"
//      + "\n=========================================================")
//  }
//
//  // function to choice a character
//  private func createCharacter() {
//    var userChoice = 0
//    listCharactersMenu()
//
//    repeat {
//      if let data = readLine() {
//        if let dataToInt = Int(data) {
//          userChoice = dataToInt
//        }
//      }
//    } while userChoice != 1 && userChoice != 2 && userChoice != 3 && userChoice != 4
//
//    // create variable with the class "CheckName" to check if the name of the perso already exists
//    let characterCheckName = CheckName.sharedInstance.checkCharacterName()
//
//    switch userChoice {
//      case 1: // fighter
//        let fighter = Fighter(name: characterCheckName)
//        print("Added a fighter to the team.")
//        characters.append(fighter)
//        fighter.display()
//      case 2: // wizard
//        let wizard = Wizard(name: characterCheckName)
//        print("Added a wizard to the team.")
//        characters.append(wizard)
//        wizard.display()
//      case 3: // giant
//        let giant = Giant(name: characterCheckName)
//        print("Added a giant to the team.")
//        characters.append(giant)
//        giant.display()
//      case 4: // dwarf
//        let dwarf = Dwarf(name: characterCheckName)
//        print("Added a dwarf to the team.")
//        characters.append(dwarf)
//        dwarf.display()
//      default:
//        print("Erreur - Choose a number between 1 and 4.")
//        //break
//    }
//  }
//
//  // loop to create the team with 3 characters
//  func createTeamCharacter() {
//    for _ in 0..<3 {
//      createCharacter()
//    }
//  }
//
  // List of the team
  func displayTeamCharacter() {
    //let index = arrayOfTeams[0]
//    func createTeams() {
//      var numberOfTeam = 0
//    let numberTeams = TeamFactory() // \(numberTeams.createTeams)
    // numberTeams.createTeams()
    print("==========================")
    print("List of the team :") // \(numberTeams.createTeams)
    print("--------------------")
    for character in characters {
      print("\(character)")
      character.display()
    }
  }

//  // List of the team
//  func displayTeamCharacterOther() {
//    let index = 0
//    print("==========================")
//    print("List of the team \(index+1):")
//    print("--------------------")
//    for character in arrayTeams {
//      print("\(character)")
//      character.displayTeamCharacterOther()
//    }
//  }
  
  
  // function returns true if the character is dead
  func isDead() -> Bool {
    var dead = false
    for character in characters {
      if character.life <= 0 {
        dead = true
      } else {
        return dead == false
      }
    }
    return dead
  }
  
} // END class Team
