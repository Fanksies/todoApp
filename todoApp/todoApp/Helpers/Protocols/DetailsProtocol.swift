//
//  DetailsProtocol.swift
//  todoApp
//
//  Created by Miguel Arturo Ruiz Martinez on 11/07/23.
//

import Foundation

protocol DetailsProtocol {
    var description: String { get set }
    var day: DaysOfTheWeek { get set }
}
