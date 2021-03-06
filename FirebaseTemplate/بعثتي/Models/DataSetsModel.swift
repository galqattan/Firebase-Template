//
//  studentMentors.swift
//  بعثتي
//
//  Created by ghadeer alqattan on 7/14/20.
//  Copyright © 2020 GeeCodes. All rights reserved.
//

import Foundation
import UIKit
import CodableFirebase

// MARK: - Student Mentor Struct
struct StudentMentor: Codable {
    var name: String!
    var university: String!
    var major: String!
    var mobileNumber: String!
    var countryNamee: String!
    var countryImg: String!
}

// MARK: - Major Struct
struct Major {
    var majorName: String
    var description: String
    var requirements: String
    var grade: String
}

struct allMajors {
    var majors : [Major]!
}
    let ghadeer : [allMajors] = [
        allMajors (majors: majorsDataUSA),
        allMajors (majors: majorsDataUK),
        allMajors (majors: majorsDataIreland),
        allMajors (majors: majorsDataCanada)
]

// MARK: - Places To Go Struct
struct PlacesToGo {
    var placeName: String
    var description: String
    var placeImg: UIImage
}

// MARK: - Kuwait Cultural Office Struct
struct KCO {
    var phoneKCO: String
    var openingHours: String
    var address: String
    var twitter: String
    var youtube: String
}

// MARK: - Halal Restaurants Struct
struct restaurants {
    var instaAcc: String
    var food1: UIImage
    var food2: UIImage
    var food3: UIImage
}

// MARK: - Country Information Struct
struct country {
    var country: String
    var officeList: [KCO]
    var studentList: [StudentMentor]
    var majorsList: [Major]
    var placesList: [PlacesToGo]
    var foodList: [restaurants]
}

