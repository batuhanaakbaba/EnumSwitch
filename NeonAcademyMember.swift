//
//  NeonAcademyMember.swift
//  Enum&Switch
//
//  Created by Batuhan Akbaba on 16.10.2023.
//

import Foundation

enum Team: String {
    case iOSDevelopment = "iOS Development Team"
    case AndroidDevelopment = "Android Development Team"
    case UIDesign = "UI/UX Design Team"
}
struct ContactInformation {
    var phoneNumber: String
    var email: String
}

class NeonAcademyMember {
    var fullName: String
    var title: String
    var horoscope: String
    var memberLevel: String
    var homeTown: String
    var age: Int
    var contactInformation: ContactInformation
    
    init(fullName: String, title: String, horoscope: String, memberLevel: String, homeTown: String, age: Int, contactInformation: ContactInformation) {
        self.fullName = fullName
        self.title = title
        self.horoscope = horoscope
        self.memberLevel = memberLevel
        self.homeTown = homeTown
        self.age = age
        self.contactInformation = contactInformation
    }
}
extension NeonAcademyMember {
    
    var team: Team {
        switch self.title {
        case "iOS Developer":
            return .iOSDevelopment
        case "Android Developer":
            return .AndroidDevelopment
        default:
            return .UIDesign
        }
    }
}

class Mentor: NeonAcademyMember {
    
    var mentorLevel: String
    
    init(fullName: String, title: String, horoscope: String, memberLevel: String, homeTown: String, age: Int, contactInformation: ContactInformation, mentorLevel: String) {
        self.mentorLevel = mentorLevel
        super.init(fullName: fullName, title: title, horoscope: horoscope, memberLevel: memberLevel, homeTown: homeTown, age: age, contactInformation: contactInformation)
    }
}
