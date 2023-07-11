//
//  MockTodoItem.swift
//  todoAppTests
//
//  Created by Miguel Arturo Ruiz Martinez on 11/07/23.
//

import Foundation
@testable import todoApp

struct MockTodoItem: TodoItemProtocol {
    var title: String
    var details: Details
}
