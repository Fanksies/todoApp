//
//  TodoItemProtocol.swift
//  todoApp
//
//  Created by Miguel Arturo Ruiz Martinez on 10/07/23.
//

import Foundation

protocol TodoItemProtocol {
    var title: String { get set }
    var details: Details { get set }
}
