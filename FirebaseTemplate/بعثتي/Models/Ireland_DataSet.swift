//
//  irelandModel.swift
//  بعثتي
//
//  Created by ghadeer alqattan on 7/15/20.
//  Copyright © 2020 GeeCodes. All rights reserved.
//

import Foundation

// MARK: - Student Mentors
var  mentorsDataIreland : [StudentMentor] = [
    StudentMentor(name: "Shahad Mohammed", description: "University College Dublin \n Civil Engineering \n 20 Years Old \n +353 1 437 0969", countryImg: #imageLiteral(resourceName: "Ireland Btn")),
    StudentMentor(name: "Yousef Almousawi", description: "Trinity College Dublin \n Pharmacy \n 21 Years Old \n +353 3 726 9375", countryImg: #imageLiteral(resourceName: "Ireland Btn")),
    StudentMentor(name: "Ahmed Alawadhi", description: "Royal College of Surgeons in Ireland \n Medicine \n 24 Years Old \n +353 1 272 9938", countryImg: #imageLiteral(resourceName: "Ireland Btn")),
    StudentMentor(name: "Dana Ali", description: "National University of Ireland Galway \n Chemical Engineering \n 19 Years Old \n +353 3 882 0138", countryImg: #imageLiteral(resourceName: "Ireland Btn")),
    StudentMentor(name: "Khaled Essa", description: "Dublin City University \n Civil Engineering \n 22 Years Old \n +353 3 732 2882", countryImg: #imageLiteral(resourceName: "Ireland Btn")),
    StudentMentor(name: "Jenan Dashti", description: "University of Limerick \n Dentistry \n 20 Years Old \n +353 7 993 2200", countryImg: #imageLiteral(resourceName: "Ireland Btn"))
]

// MARK: - Majors
var  majorsDataIreland : [Major] = [
    Major(majorName: "Medicine", description: "The medical profession is one of the most essential majors nowadays, so it stands to reason that medical degrees are lengthy, demanding and amongst the most challenging and competitive paths to follow. Those who choose to study medical degrees will need a strong interest in the sciences and motivation to keep going through the many years of training required to become a fully qualified doctor.", requirements: "UKVI Ielts test with a score of 6.0", grade: "95% \n 3.75 gpa"),
    Major(majorName: "Dentistry", description: "Dentistry is a program that prepares students for the practice of dentistry/dental medicine, learning the evaluation, diagnosis, prevention, and treatment of diseases, disorders, and conditions of the oral cavity, maxillofacial area, and adjacent structures and their impact on the human body and health.", requirements: "UKVI Ielts test with a score of 6.0", grade: "97% \n 3.85 gpa"),
    Major(majorName: "Pharmacy", description: "Pharmacy is the health science that links medical science with chemistry and it is charged with the discovery, production, control, disposal, safe and effective use of drugs. The practice of pharmacy requires excellent knowledge of drugs, their mechanism of action, side effects, interactions, mobility and toxicity.", requirements: "UKVI Ielts test with a score of 6.0", grade: "90% \n 3.50 gpa"),
    Major(majorName: "Civil Engineering", description: "Civil engineering is a professional engineering discipline that deals with the design, construction, and maintenance of the physical and naturally built environment, including public works such as roads, bridges, canals, dams, airports, sewerage systems, pipelines, structural components of buildings, and railways.", requirements: "UKVI Ielts test with a score of 5.0", grade: "80% \n 3.00 gpa"),
    Major(majorName: "EE Engineering", description: "Electrical and Electronics engineering is an engineering discipline concerned with the study, design and application of equipment, devices and systems which use electricity, electronics, and electromagnetism.", requirements: "UKVI Ielts test with a score of 5.0", grade: "80% \n 3.00 gpa"),
    Major(majorName: "Chemical Engineering", description: "Chemical engineering is a branch of engineering that uses principles of chemistry, physics, mathematics, biology, and economics to efficiently use, produce, design, transport and transform energy and materials.", requirements: "UKVI Ielts test with a score of 5.0", grade: "80% \n 3.00 gpa")
]

// MARK: - Places to go
var placesIreland : [PlacesToGo] = [
    PlacesToGo(placeName: "The Cliffs of Moher", description: "The Cliffs of Moher (Irish: Aillte an Mhothair) are located at the southwestern edge of the Burren region in County Clare, Ireland. They rise 120 metres (390 ft) above the Atlantic Ocean at Hag's Head and reach their maximum height of 214 metres (702 ft) just north of O'Brien's Tower, eight kilometres to the north.", placeImg: #imageLiteral(resourceName: "Cliffs of Moher")),
    PlacesToGo(placeName: "Ring of Kerry", description: "The Ring itself is a circular route that takes in some of the country's best scenery – brooding mountains, rugged coasts and some of Ireland's finest historical buildings and heritage attractions.", placeImg: #imageLiteral(resourceName: "Ring of Kerry")),
    PlacesToGo(placeName: "Rock of Cashel", description: "The Rock of Cashel is one of Ireland’s most visited sites, and is a spectacular and archaeological site. A collection of medieval ecclesiastical buildings set on an outcrop of limestone in the Golden Vale.", placeImg: #imageLiteral(resourceName: "Rock of Cashel"))
]

// MARK: - Kuwait Cultural Office
var kcoIreland : [KCO] = [
    KCO(phoneKCO: "+353 (01) 53 100 90",  openingHours: "9:00-16:00 Opening Hours Mon. – Fri.", address: "One Grande Parade, 5th floor, Ranelagh, Dublin 6, Ireland", twitter: "@KuwaitCultureIreland", youtube: "Kuwait Cultural Office Dublin")
]

// MARK: - Country Information
var countryInfoIreland: country = country(country: "Ireland", officeList: kcoIreland, studentList: mentorsDataIreland, majorsList: majorsDataIreland, placesList: placesIreland)
