//
//  ViewController.swift
//  Enum&Switch
//
//  Created by Batuhan Akbaba on 16.10.2023.
//
import UIKit

final class ViewController: UIViewController {
    
    private var academyMembers = [NeonAcademyMember]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createMembers()
    }
    
    private func createMembers() {
        let contactInfo = ContactInformation(phoneNumber: "0543764177", email: "batuhanaakbaba@gmail.com")
        let member = NeonAcademyMember(fullName: "Batuhan Akbaba", title: "iOS Developer", horoscope: "Capricorn", memberLevel: "A1", homeTown: "Istanbul", age: 25, contactInformation: contactInfo)
        
        let contactInfo1 = ContactInformation(phoneNumber: "05322583505", email: "ali@neonapps.co")
        let member1 = NeonAcademyMember(fullName: "Ali Beyaz", title: "iOS Developer", horoscope: "Aries", memberLevel: "A1", homeTown: "Istanbul", age: 27, contactInformation: contactInfo1)
        
        let contactInfo2 = ContactInformation(phoneNumber: "05457856321", email: "damla@neonapps.co")
        let member2 = NeonAcademyMember(fullName: "Damla Ozer", title: "iOS Developer", horoscope: "Virgo", memberLevel: "B1", homeTown: "Istanbul", age: 23, contactInformation: contactInfo2)
        
        let contactInfo3 = ContactInformation(phoneNumber: "5344098326", email: "eymen@neonapps.co")
        let member3 = NeonAcademyMember(fullName: "Eymen Varilci", title: "Android Developer", horoscope: "Aquarius", memberLevel: "A3", homeTown: "Istanbul", age: 24, contactInformation: contactInfo3)
        
        let contactInfo4 = ContactInformation(phoneNumber: "05434549137", email: "kerem@neonapps.co")
        let member4 = NeonAcademyMember(fullName: "Kerem Erkubilay", title: "iOS Developer", horoscope: "Sagittarius", memberLevel: "A3", homeTown: "Istanbul", age: 25, contactInformation: contactInfo4)
        
        let contactInfo5 = ContactInformation(phoneNumber: "05552223344", email: "yasemin@neonapps.co")
        let member5 = NeonAcademyMember(fullName: "Yasemin Çelik", title: "iOS Developer", horoscope: "Pisces", memberLevel: "A2", homeTown: "Istanbul", age: 26, contactInformation: contactInfo5)

        let contactInfo6 = ContactInformation(phoneNumber: "05556667788", email: "elif@neonapps.co")
        let member6 = NeonAcademyMember(fullName: "Elif Demir", title: "Android Developer", horoscope: "Leo", memberLevel: "B1", homeTown: "Istanbul", age: 26, contactInformation: contactInfo6)

        let contactInfo7 = ContactInformation(phoneNumber: "05557778899", email: "mehmet@neonapps.co")
        let member7 = NeonAcademyMember(fullName: "Mehmet Yilmaz", title: "UI/UX Designer", horoscope: "Gemini", memberLevel: "A2", homeTown: "Istanbul", age: 28, contactInformation: contactInfo7)

        let contactInfo8 = ContactInformation(phoneNumber: "05558889900", email: "zeynep@neonapps.co")
        let member8 = NeonAcademyMember(fullName: "Zeynep Kaya", title: "Android Developer", horoscope: "Cancer", memberLevel: "B2", homeTown: "Istanbul", age: 24, contactInformation: contactInfo8)

        let contactInfo9 = ContactInformation(phoneNumber: "05559990011", email: "ahmet@neonapps.co")
        let member9 = NeonAcademyMember(fullName: "Ahmet Öz", title: "iOS Developer", horoscope: "Taurus", memberLevel: "A3", homeTown: "Istanbul", age: 29, contactInformation: contactInfo9)

        let contactInfo10 = ContactInformation(phoneNumber: "05551112233", email: "selin@neonapps.co")
        let member10 = NeonAcademyMember(fullName: "Selin Can", title: "UI/UX Designer", horoscope: "Libra", memberLevel: "B2", homeTown: "Istanbul", age: 27, contactInformation: contactInfo10)
    
        
        academyMembers += [member,member1,member2,member3,member4,member5,member6,member7,member8,member9,member10]
       
        enumAndSwitchActions()
        
       
    }
    
    private func enumAndSwitchActions() {
//        Create a new array that contains only the members of the iOS Development Team and print out their full names.
        createNewArray()
//        Create a dictionary that contains the number of members in each team, and print out the number of members in the UI/UX Design Team.
        createDictionary()
// Create a function that takes a team as an input and prints out the full names of all members in that team.
        printMembersOfTeam(team: .iOSDevelopment)
//        Create a switch statement that performs different actions based on the team of a member. For example, if a member is in the iOS Development Team, the function could print out "This member is a skilled iOS developer", and if the member is in the UI/UX Design Team, the function could print out "This member is a talented designer".
        printMemberTeamMessage(member: academyMembers[0])
//        Create a function that takes an age as an input and prints out the full names of all members that are older than that age and belong to a specific team (iOS Development Team for example)
        printMembersOlderThanAge(team: .AndroidDevelopment, age: 23)
//        Create a switch statement that gives a promotion to a member based on their team. For example, if a member is in the iOS Development Team, the function could promote them to "Senior iOS Developer" and if the member is in the UI/UX Design Team, the function could promote them to "Lead Designer".
        promoteMember(member: academyMembers[2])
//   Create a function that takes a team as an input and calculates the average age of the members in that team.
        calculateAverageAge(for: .AndroidDevelopment)
//        Create a switch statement that prints out a different message for each team, such as "The iOS Development Team is the backbone of our academy" for the iOS Development Team and "The UI/UX Design Team is the face of our academy" for the UI/UX Design Team.
        printMessage(for: .UIDesign)
//        Create a function that takes a team as an input and returns an array of the contact information of all members in that team.
        printGetContactInfoOfTeam()
//  Create a switch statement that performs different actions based on the team of a member and their age. For example, if a member is in the iOS Development Team and is over 23 years old, the function could print out "XXX member is a seasoned iOS developer", and if the member is in the UI/UX Design Team and is under 24, the function could print out "XXX member is a rising star in the design world".
        performActionBasedOnTeamAndAge(member: academyMembers[3])
        
    }

}

extension ViewController {
    private func createNewArray() {
        let iOSMembers = academyMembers.filter { $0.team == .iOSDevelopment }
        for member in iOSMembers {
            print("createNewArray: \(member.fullName)")
        }
    }
    private func createDictionary() {
           let teamCounts = Dictionary(grouping: academyMembers, by: { $0.team }).mapValues { $0.count }
           if let uiDesignTeamCount = teamCounts[.UIDesign] {
               print("Number of members in the UI/UX Design Team: \(uiDesignTeamCount)")
           }
       }
    private func printMembersOfTeam(team: Team) {
          let members = academyMembers.filter { $0.team == team }
          for member in members {
              print("Name: \(member.fullName)")
          }
      }
    private func printMemberTeamMessage(member: NeonAcademyMember) {
           switch member.team {
           case .iOSDevelopment:
               print("This member is a skilled iOS developer.")
           case .AndroidDevelopment:
               print("This member is a proficient Android developer.")
           case .UIDesign:
               print("This member is a talented designer.")
           }
        
       }
    private func printMembersOlderThanAge(team: Team, age: Int) {
         let members = academyMembers.filter { $0.team == team && $0.age > age }
         for member in members {
             print("Team member's name: \(member.fullName)")
         }
     }
    private func promoteMember(member: NeonAcademyMember) {
         switch member.team {
         case .iOSDevelopment:
             member.title = "Senior iOS Developer"
         case .AndroidDevelopment:
             member.title = "Senior Android Developer"
         case .UIDesign:
             member.title = "Lead Designer"
         }
        print("Person Receiving Promotion: \(member.fullName), New Position: \(member.title)")
     }
    
    private func calculateAverageAge(for team: Team) {
        let teamMembers = academyMembers.filter({$0.team == team})
        if teamMembers.count > 0 {
            let totalAge = teamMembers.reduce(0) {$0 + $1.age}
            let avarageAge = Int(totalAge) / Int(teamMembers.count)
            print("Avarage Age: \(avarageAge)")
        } else {
            print("Team members is nil")
        }
    }
    private func printMessage(for team: Team) {
        switch team {
        case .iOSDevelopment:
            print("The iOS Development Team is the backbone of our academy")
        case .AndroidDevelopment:
            print("The Android Development Team is the backbone of our academy")
        case .UIDesign:
            print("The UI/UX Design Team is the face of our academy")
        }
    }
 
    private func getContactInfoOfTeam(team: Team) -> [ContactInformation] {
        let teamMembers = academyMembers.filter { $0.team == team }
        return (teamMembers).map { $0.contactInformation }
    }
    private func printGetContactInfoOfTeam() {
        let contInfo = getContactInfoOfTeam(team: .AndroidDevelopment)
        print(contInfo)
    }
    private func performActionBasedOnTeamAndAge(member: NeonAcademyMember) {
        switch member.team {
        case .iOSDevelopment:
            switch member.age {
            case let age where age > 23:
                print("\(member.fullName) is a seasoned iOS Developer")
            default:
                print("\(member.fullName) is a young iOS Developer")
            }
        case .AndroidDevelopment:
            switch member.age {
            case let age where age > 23:
                print("\(member.fullName) is a seasoned Android Developer")
            default:
                print("\(member.fullName) is a young Android Developer")
            }
        case .UIDesign:
            switch member.age {
            case let age where age < 24:
                print("\(member.fullName) is a rising star in the design world")
            default:
                print("\(member.fullName) is a seasoned UI/UX Designer")
            }
  
        }
    }
}


