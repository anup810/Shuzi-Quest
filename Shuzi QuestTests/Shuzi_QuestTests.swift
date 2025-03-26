//
//  Shuzi_QuestTests.swift
//  Shuzi QuestTests
//
//  Created by Anup Saud on 2025-03-25.
//

import XCTest
@testable import Shuzi_Quest

final class Shuzi_QuestTests: XCTestCase {

    func testMax() throws {
        // Setup data
        let data1 = (x: 3, y: 10, z: 7)
        let testCases = [
                    (x: 3, y: 10, z: 7),
                    (x: 15, y: 5, z: 9),
                    (x: -1, y: -5, z: -3),
                    (x: 0, y: 0, z: 0),
                    (x: 8, y: 8, z: 3),
                    (x: 4, y: 9, z: 9)
                ]
        
        
        // Expected Values
        let expectedValue1 = 10
        let expectedResults = [
                    10,  // Max is 10
                    15,  // Max is 15
                    -1,  // Max is -1
                    0,   // Max is 0 (all same)
                    8,   // Max is 8 (two same values)
                    9    // Max is 9 (two same values at end)
                ]
        
        
        // Test
        XCTAssertEqual(expectedValue1, maxValueTest(x: data1.x, y: data1.y, z: data1.z))
        
        for (index ,data) in testCases.enumerated() {
            XCTAssertEqual(maxValueTest(x: data.x, y: data.y, z: data.z), expectedResults[index])
            
        }

    }


}
