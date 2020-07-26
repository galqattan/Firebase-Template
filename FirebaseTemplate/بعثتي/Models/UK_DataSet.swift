//
//  ukModel.swift
//  بعثتي
//
//  Created by ghadeer alqattan on 7/15/20.
//  Copyright © 2020 GeeCodes. All rights reserved.
//

import Foundation


// MARK: - Student Mentors
var  mentorsDataUK : [StudentMentor] = [
    StudentMentor(name: "Sarah Alali", university: "University of Leeds \n", major: "Dentistry \n",  mobileNumber: "+44 07 949 92 1888", countryImg: "England Btn"),
    StudentMentor(name: "Abdulaziz Alkandari", university: "King's College London \n", major: "Business \n", mobileNumber: "+44 07 548 60 3467", countryImg: "England Btn"),
    StudentMentor(name: "Faisal Alfadhli", university: "Liverpool John Moores University \n", major:  "Civil Engineering \n", mobileNumber:  "+44 07 833 47 5395", countryImg: "England Btn"),
    StudentMentor(name: "Fouz Abdulwahab", university: "Univeristy of Nottingham \n", major: "Medicine \n", mobileNumber: "+44 07 283 73 7042", countryImg: "England Btn"),
    StudentMentor(name: "Hamad Alghanim", university: "University of Brighton \n", major: "Pharmacy \n", mobileNumber: "+44 07 993 57 4668", countryImg: "England Btn"),
    StudentMentor(name: "Yasmeen Boareki", university: "University of Salford \n", major: "EE Engineering \n", mobileNumber: "+44 07 693 40 2376", countryImg: "England Btn")
]

// MARK: - Majors
var  majorsDataUK : [Major] = [
    Major(majorName: "Medicine", description: "The medical profession is one of the most essential majors nowadays, so it stands to reason that medical degrees are lengthy, demanding and amongst the most challenging and competitive paths to follow. Those who choose to study medical degrees will need a strong interest in the sciences and motivation to keep going through the many years of training required to become a fully qualified doctor.", requirements: "UKCAT exam & UKVI Ielts test with a score of 6.5", grade: "94% \n 3.70 gpa"),
    Major(majorName: "Dentistry", description: "Dentistry is a program that prepares students for the practice of dentistry/dental medicine, learning the evaluation, diagnosis, prevention, and treatment of diseases, disorders, and conditions of the oral cavity, maxillofacial area, and adjacent structures and their impact on the human body and health.", requirements: "UKCAT exam & UKVI Ielts test with a score of 6.5", grade: "94% \n 3.70 gpa"),
    Major(majorName: "Pharmacy", description: "Pharmacy is the health science that links medical science with chemistry and it is charged with the discovery, production, control, disposal, safe and effective use of drugs. The practice of pharmacy requires excellent knowledge of drugs, their mechanism of action, side effects, interactions, mobility and toxicity.", requirements: "UKVI Ielts test with a score of 6.5", grade: "90% \n 3.50 gpa"),
    Major(majorName: "Civil Engineering", description: "Civil engineering is a professional engineering discipline that deals with the design, construction, and maintenance of the physical and naturally built environment, including public works such as roads, bridges, canals, dams, airports, sewerage systems, pipelines, structural components of buildings, and railways.", requirements: "UKVI Ielts test with a score of 5.5", grade: "85% \n 3.25 gpa"),
    Major(majorName: "EE Engineering", description: "Electrical and Electronics engineering is an engineering discipline concerned with the study, design and application of equipment, devices and systems which use electricity, electronics, and electromagnetism.", requirements: "UKVI Ielts test with a score of 5.5", grade: "85% \n 3.25 gpa"),
    Major(majorName: "Chemical Engineering", description: "Chemical engineering is a branch of engineering that uses principles of chemistry, physics, mathematics, biology, and economics to efficiently use, produce, design, transport and transform energy and materials.", requirements: "UKVI Ielts test with a score of 5.5", grade: "85% \n 3.25 gpa")
]

// MARK: - Places to go
var placesUK : [PlacesToGo] = [
    PlacesToGo(placeName: "Buckingham Palace", description: "Buckingham Palace is very much a working building and the centrepiece of the UK’s constitutional monarchy, serving as the venue for many royal events and ceremonies.", placeImg: #imageLiteral(resourceName: "Buckingham Palace")),
    PlacesToGo(placeName: "The London Eye", description: "The London Eye is one of the more famous structures in London. It is an enormous Ferris wheel that sits on the south bank of the River Thames. It is on the west end of Jubilee Gardens on the South Bank and it stands roughly 135 metres in height.", placeImg: #imageLiteral(resourceName: "London Eye")),
    PlacesToGo(placeName: "Big Ben", description: "Big Ben is the nickname for the Great Bell of the striking clock at the north end of the Palace of Westminster in London and is usually extended to refer to both the clock and the clock tower.", placeImg: #imageLiteral(resourceName: "Big ben"))
]

// MARK: - Kuwait Cultural Office
var kcoUK : [KCO] = [
    KCO(phoneKCO: "+44(0) 20 7761 8500 \n +44(0) 20 7761 8550  \n +44(0) 20 7761 8599 \n +44(0) 20 7761 8540", openingHours: "9:00-16:00 Opening Hours Mon. – Fri.", address: "60A Knightsbridge, London SW1X 7JX", twitter: "@KuwaitCultural", youtube: "Kuwait Cultural Office London")
]

// MARK: - Halal Restaurants Information
var restaurantsUK : [restaurants] = [
    restaurants(instaAcc: "@staxdiner", food1: #imageLiteral(resourceName: "stax1"), food2: #imageLiteral(resourceName: "stax2"), food3: #imageLiteral(resourceName: "stax3")),
    restaurants(instaAcc: "@meatgram", food1: #imageLiteral(resourceName: "meat1"), food2: #imageLiteral(resourceName: "meat2"), food3: #imageLiteral(resourceName: "meat3")),
    restaurants(instaAcc: "@maroush", food1: #imageLiteral(resourceName: "maroush1"), food2: #imageLiteral(resourceName: "maroush2"), food3: #imageLiteral(resourceName: "maroush3"))
]

// MARK: - Country Information
var countryInfoUK: country = country(country: "United Kingdom", officeList: kcoUK, studentList: mentorsDataUK, majorsList: majorsDataUK, placesList: placesUK, foodList: restaurantsUK)




