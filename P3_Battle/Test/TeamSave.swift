////
////  TeamSave.swift
////  P3_Battle
////
////  Created by Angelique Babin on 09/01/2019.
////  Copyright © 2019 Angelique Babin. All rights reserved.
////
//
//import Foundation
//
//class TeamSave {
//  
//  //MARK: - Vars
//  var characters = [Character]() // with mentor
//  //  var arrayTeams = [TeamFactory]()
//  //  var arrayOfTeams: [TeamFactory]
//  //  var arrayOfTeams = [TeamFactory](arrayLiteral: arrayTeams)
//  
//  
//  //MARK: - Init
//  //  init(arrayOfTeams: TeamFactory) {
//  //    self.arrayOfTeams = [arrayOfTeams]
//  //  }
//  
//  // MARK: - Methodes
//  // List of the team
//  func displayTeamCharacter() {
//    print("==========================")
//    print("List of the team :")
//    print("--------------------")
//    print("Test list array 'character'")
//    for character in characters {
//      print("\(character)")
//      character.display()
//    }
//    
//  }
//  
//  //  func arrayTeamCompleted() {
//  //    let teams = TeamFactory(nameTeam: "", namePlayer: "")
//  //    //    arrayTeams.append(teams)
//  //    // add test for display teams
//  //    print(arrayTeams)
//  //    for team in arrayTeams {
//  //      print("\(team)")
//  //      teams.displayTeamCharacter()
//  //    }
//  //  }
//  
//  //  print(team)
//  //  // List of the team
//  //  func displayTeamCharacterOther() {
//  //    let index = 0
//  //    print("==========================")
//  //    print("List of the team \(index+1):")
//  //    print("--------------------")
//  //    for character in arrayTeams {
//  //      print("\(character)")
//  //      character.displayTeamCharacterOther()
//  //    }
//  //  }
//  
//  
//  // function returns true if the character is dead
//  func isDead() -> Bool {
//    var dead = false
//    for character in characters {
//      if character.life <= 0 {
//        dead = true
//      } else {
//        return dead == false
//      }
//    }
//    return dead
//  }
//  
//} // END class Team
