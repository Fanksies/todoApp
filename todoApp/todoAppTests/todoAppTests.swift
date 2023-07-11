//
//  todoAppTests.swift
//  todoAppTests
//
//  Created by Miguel Arturo Ruiz Martinez on 10/07/23.
//

import XCTest
@testable import todoApp

final class todoAppTests: XCTestCase {
    func test_DataSource_Returns_DayString() {
        let mockDetails = Details(description: "I did a thing", day: DaysOfTheWeek.Monday)
        let mockTodo = MockTodoItem(title: "Test Title", details: mockDetails)
        XCTAssertEqual(mockTodo.details.day.toString(), "Monday")
    }
}
