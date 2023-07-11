//
//  Details.swift
//  todoApp
//
//  Created by Miguel Arturo Ruiz Martinez on 10/07/23.
//

import Foundation

struct Details: DetailsProtocol, Codable {
    var description: String
    var day: DaysOfTheWeek
}
