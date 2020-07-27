//
//  canadaModel.swift
//  بعثتي
//
//  Created by ghadeer alqattan on 7/15/20.
//  Copyright © 2020 GeeCodes. All rights reserved.
//

import Foundation
// MARK: - Student Mentors
var  mentorsDataCanada : [StudentMentor] = [
    StudentMentor(name: "Batool Alyousef", university: "Queen's University \n", major: "Chemical Engineering \n", mobileNumber: "+1 800 953 7247", countryImg: "Canada Btn"),
    StudentMentor(name: "Abdulwahab Alkanderi", university: "University of Ottowa \n", major:  "Civil Engineering \n", mobileNumber:  "+1 700 458 9274", countryImg: "Canada Btn"),
    StudentMentor(name: "Aqeel Ibraheem", university: "University of Alberta \n", major: "Dentistry \n", mobileNumber:  "+1 293 748 9930", countryImg: "Canada Btn"),
    StudentMentor(name: "Sarah Rushoud", university: "University of Waterloo \n", major: "Chemical Engineering \n", mobileNumber:  "+1 294 003 6349", countryImg: "Canada Btn"),
    StudentMentor(name: "Ali Alali", university: "McGill University \n", major: "Civil Engineering \n", mobileNumber:  "+1 933 450 7483", countryImg: "Canada Btn"),
    StudentMentor(name: "Ghadeer Baqer", university: "University of Toronto \n", major: "Medicine \n", mobileNumber: "+1 883 490 7493", countryImg: "Canada Btn")
]

// MARK: - Majors
var  majorsDataCanada : [Major] = [
    Major(majorName: "Medicine", description: "The medical profession is one of the most essential majors nowadays, so it stands to reason that medical degrees are lengthy, demanding and amongst the most challenging and competitive paths to follow. Those who choose to study medical degrees will need a strong interest in the sciences and motivation to keep going through the many years of training required to become a fully qualified doctor.", requirements: "UKVI Ielts test with a score of 6.5 - 7.0", grade: "90% \n 3.50 gpa"),
    Major(majorName: "Dentistry", description: "Dentistry is a program that prepares students for the practice of dentistry/dental medicine, learning the evaluation, diagnosis, prevention, and treatment of diseases, disorders, and conditions of the oral cavity, maxillofacial area, and adjacent structures and their impact on the human body and health.", requirements: "UKVI Ielts test with a score of 6.5", grade: "90% \n 3.50 gpa"),
    Major(majorName: "Pharmacy", description: "Pharmacy is the health science that links medical science with chemistry and it is charged with the discovery, production, control, disposal, safe and effective use of drugs. The practice of pharmacy requires excellent knowledge of drugs, their mechanism of action, side effects, interactions, mobility and toxicity.", requirements: "UKVI Ielts test with a score of 6.5 - 7.0", grade: "90% \n 3.50 gpa"),
    Major(majorName: "Civil Engineering", description: "Civil engineering is a professional engineering discipline that deals with the design, construction, and maintenance of the physical and naturally built environment, including public works such as roads, bridges, canals, dams, airports, sewerage systems, pipelines, structural components of buildings, and railways.", requirements: "UKVI Ielts test with a score of 6.0 - 6.5", grade: "85% \n 3.25 gpa"),
    Major(majorName: "EE Engineering", description: "Electrical and Electronics engineering is an engineering discipline concerned with the study, design and application of equipment, devices and systems which use electricity, electronics, and electromagnetism.", requirements: "UKVI Ielts test with a score of 6.0 - 6.5", grade: "85% \n 3.25 gpa"),
    Major(majorName: "Chemical Engineering", description: "Chemical engineering is a branch of engineering that uses principles of chemistry, physics, mathematics, biology, and economics to efficiently use, produce, design, transport and transform energy and materials.", requirements: "UKVI Ielts test with a score of 6.0 - 6.5", grade: "85% \n 3.25 gpa")
]

// MARK: - Places to go
var placesCanada : [PlacesToGo] = [
    PlacesToGo(placeName: "Niagra Falls", description: "Niagara Falls is a group of three waterfalls at the southern end of Niagara Gorge, spanning the border between the province of Ontario in Canada and the state of New York in the United States. The largest of the three is Horseshoe Falls, also known as Canadian Falls, which straddles the international border of the two countries.", placeImg: #imageLiteral(resourceName: "Niagra Falls")),
    PlacesToGo(placeName: "Lake Louise", description: "Lake Louise is a hamlet in Banff National Park in the Canadian Rockies, known for its turquoise, glacier-fed lake ringed by high peaks and overlooked by a stately chateau. There's a canoe dock in summer, and a skating rink on the frozen lake in winter.", placeImg: #imageLiteral(resourceName: "Lake Louise")),
    PlacesToGo(placeName: "The Canadian Rockies", description: "The Canadian Rockies mountain range spans the provinces of British Columbia and Alberta. With jagged, ice-capped peaks, including towering Mt. Robson, it's a region of alpine lakes, diverse wildlife and outdoor recreation sites.", placeImg: #imageLiteral(resourceName: "The Canadian Rockies"))
]

// MARK: - Kuwait Cultural Office
var kcoCanada : [KCO] = [
    KCO(phoneKCO: "+ (1) 613 241-8444 \n + (1) 613 241-8441 \n + (1) 613 241-8445", openingHours: "9:00-15:00 Opening Hours Mon. – Fri.", address: "47 Rue Clarence St, Ottawa, ON K1N 5P9, Canada", twitter: "@CulturaQ8", youtube: "Kuwait Cultural Office Ottowa")
]

// MARK: - Halal Restaurants Information
var restaurantsCanada : [restaurants] = [
    restaurants(instaAcc: "@burgerfactory.ca", food1: #imageLiteral(resourceName: "bfactory1"), food2: #imageLiteral(resourceName: "bfactory2"), food3: #imageLiteral(resourceName: "bfactory3")),
    restaurants(instaAcc: "@theburgeralley", food1: #imageLiteral(resourceName: "alley1"), food2: #imageLiteral(resourceName: "alley2"), food3: #imageLiteral(resourceName: "alley3")),
    restaurants(instaAcc: "@ozzysburgers", food1: #imageLiteral(resourceName: "ozzys1"), food2: #imageLiteral(resourceName: "ozzys2"), food3: #imageLiteral(resourceName: "ozzys3"))
]

// MARK: - Country Information
var countryInfoCanada: country = country(country: "Canada", officeList: kcoCanada, studentList: mentorsDataCanada, majorsList: majorsDataCanada, placesList: placesCanada, foodList: restaurantsCanada)
