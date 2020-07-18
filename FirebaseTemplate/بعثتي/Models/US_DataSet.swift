//
//  usaModel.swift
//  بعثتي
//
//  Created by ghadeer alqattan on 7/15/20.
//  Copyright © 2020 GeeCodes. All rights reserved.
//

import Foundation

// MARK: - Student Mentors
var  mentorsDataUSA : [StudentMentor] = [
    StudentMentor(name: "Retaj Hamad", description:"Arizona State University \n EE Engineering \n 22 Years Old \n +1 408 638 0968", countryImg: #imageLiteral(resourceName: "America Btn")),
    StudentMentor(name: "Mohammed Alkhalaf", description: "University of Pennsylvania \n Medicine \n 22 Years Old \n +1 308 950 7392", countryImg: #imageLiteral(resourceName: "America Btn")),
    StudentMentor(name: "Abdullah Ashkanani", description: "Univeristy of Miami \n Chemical Engineering \n 23 Years Old \n +1 503 294 3006", countryImg: #imageLiteral(resourceName: "America Btn")),
    StudentMentor(name: "Hawraa Abdullah", description: "University of Florida \n Civil Engineering \n 20 Years Old \n +1 646 876 9923", countryImg: #imageLiteral(resourceName: "America Btn")),
    StudentMentor(name: "Salah Hameed", description: "University of San Diego \n Pharmacy \n 21 Years Old \n +1 333 467 2828", countryImg: #imageLiteral(resourceName: "America Btn")),
    StudentMentor(name: "Sheikha Alotaibi", description: "Arizona State University \n Dentistry \n 19 Years Old \n +1 677 389 1963", countryImg: #imageLiteral(resourceName: "America Btn"))
 ]

// MARK: - Majors
var  majorsDataUSA : [Major] = [
    Major(majorName: "Medicine", description: "The medical profession is one of the most essential majors nowadays, so it stands to reason that medical degrees are lengthy, demanding and amongst the most challenging and competitive paths to follow. Those who choose to study medical degrees will need a strong interest in the sciences and motivation to keep going through the many years of training required to become a fully qualified doctor.", requirements: "UKVI Ielts test with a score of 5.0 - 7.0", grade: "95% \n 3.75 gpa"),
    Major(majorName: "Dentistry", description: "Dentistry is a program that prepares students for the practice of dentistry/dental medicine, learning the evaluation, diagnosis, prevention, and treatment of diseases, disorders, and conditions of the oral cavity, maxillofacial area, and adjacent structures and their impact on the human body and health.", requirements: "UKVI Ielts test with a score of 6.0 - 6.5", grade: "93% \n 3.65 gpa"),
    Major(majorName: "Pharmacy", description: "Pharmacy is the health science that links medical science with chemistry and it is charged with the discovery, production, control, disposal, safe and effective use of drugs. The practice of pharmacy requires excellent knowledge of drugs, their mechanism of action, side effects, interactions, mobility and toxicity.", requirements: "UKVI Ielts test with a score of 6.5", grade: "90% \n 3.50 gpa"),
    Major(majorName: "Civil Engineering", description: "Civil engineering is a professional engineering discipline that deals with the design, construction, and maintenance of the physical and naturally built environment, including public works such as roads, bridges, canals, dams, airports, sewerage systems, pipelines, structural components of buildings, and railways.", requirements: "UKVI Ielts test with a score of 5.5", grade: "85% \n 3.25 gpa"),
    Major(majorName: "EE Engineering", description: "Electrical and Electronics engineering is an engineering discipline concerned with the study, design and application of equipment, devices and systems which use electricity, electronics, and electromagnetism.", requirements: "UKVI Ielts test with a score of 5.5", grade: "80% \n 3.00 gpa"),
    Major(majorName: "Chemical Engineering", description: "Chemical engineering is a branch of engineering that uses principles of chemistry, physics, mathematics, biology, and economics to efficiently use, produce, design, transport and transform energy and materials.", requirements: "UKVI Ielts test with a score of 5.5", grade: "80% \n 3.00 gpa")
]

// MARK: - Places to go
var placesUSA : [PlacesToGo] = [
    PlacesToGo(placeName: "The Statue of Liberty", description: "he Statue of Liberty stands in Upper New York Bay, a universal symbol of freedom. Originally conceived as an emblem of the friendship between the people of France and the U.S. and a sign of their mutual desire for liberty.", placeImg: #imageLiteral(resourceName: "Statue of Liberty")),
    PlacesToGo(placeName: "Grand Canyon National Park", description: "The Grand Canyon is around 6000 (1800 metres) feet deep. The Colorado River runs through the Grand Canyon, it has been eroding its steep sides for millions of years. The different types of rock visible in the Grand Canyon make it an important site for geological research.", placeImg: #imageLiteral(resourceName: "Grand Canyon")),
    PlacesToGo(placeName: "Disneyland Park", description: "Disneyland Park, originally Disneyland, is the first of two theme parks built at the Disneyland Resort in Anaheim, California, opened on July 17, 1955. It is the only theme park designed and built to completion under the direct supervision of Walt Disney.", placeImg: #imageLiteral(resourceName: "Disneyland"))
]

// MARK: - Kuwait Cultural Office
var kcoUSA : [KCO] = [
    KCO(phoneKCO: "+ (1) 202 364 2104 \n + (1) 202 926 5868 \n + (1) 202 364 2100 \n + (1) 202 363 8394", openingHours: "9:30-17:00 Opening Hours Mon. – Fri.", address: "3500 International Drive, NW, Washington, DC", twitter: "@KuwaitCultureDC", youtube: "Kuwait Cultural Office Washington")
]

// MARK: - Country Information
var countryInfoUSA: country = country(country: "United States of America", officeList: kcoUSA, studentList: mentorsDataUSA, majorsList: majorsDataUSA, placesList: placesUSA)
