//
//  Max.swift
//  Shuzi Quest
//
//  Created by Anup Saud on 2025-03-25.
//

import Foundation

func maxValueTest(x: Int , y: Int , z: Int) -> Int{
    if x >= y && x >= z{
        return x
    } else if y >= x && y >= z{
        return y
    }
    else {
        return z
    }
}
