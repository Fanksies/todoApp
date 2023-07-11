//
//  TodoItem.swift
//  todoApp
//
//  Created by Miguel Arturo Ruiz Martinez on 10/07/23.
//

import Foundation

struct TodoItem: TodoItemProtocol, Codable {
    var title: String
    var details: Details
}

typealias Todo = [TodoItem]
