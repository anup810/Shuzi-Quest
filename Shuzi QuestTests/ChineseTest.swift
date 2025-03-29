//
//  ChineseTest.swift
//  Shuzi QuestTests
//
//  Created by Anup Saud on 2025-03-28.
//

import XCTest
@testable import Shuzi_Quest

final class ChineseTest: XCTestCase {


    func testChinese() throws {
        // Setup data
        let nums = [2, 7, 14, 19, 22, 34, 45, 66, 73, 88]
        let nilNums: [Int] = [100,-10,101,102,-1,-2]
        
        
        // Expected Values
        let expectedValues: [(chinese : String, pinyin: String)?] = [
            ("二", "èr"),
            ("七", "qī"),
            ("十四", "shí sì"),
            ("十九", "shí jiǔ"),
            ("二十二", "èr shí èr"),
            ("三十四", "sān shí sì"),
            ("四十五", "sì shí wǔ"),
            ("六十六", "liù shí liù"),
            ("七十三", "qī shí sān"),
            ("八十八", "bā shí bā")
        ]
    
        // Run test
        for index in 0..<nums.count{
            let value1 = Chinese.num99ToChinese(num: nums[index])
            XCTAssertNotNil(value1)
            let value2 = expectedValues[index]
            if let value1, let value2 {
                XCTAssertEqual(value1.chinese, value2.chinese)
                XCTAssertEqual(value1.pinyin, value2.pinyin)
            }
        }
        
        // nil test
        
        for num in nilNums {
            XCTAssertNil(Chinese.num99ToChinese(num: num))
        }

    }


}
