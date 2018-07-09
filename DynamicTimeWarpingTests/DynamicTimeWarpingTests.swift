//
//  DynamicTimeWarpingTests.swift
//  DynamicTimeWarpingTests
//
//  Created by Bridget Murphy on 7/9/18.
//  Copyright © 2018 Bridget Murphy. All rights reserved.
//

import XCTest
@testable import DynamicTimeWarping

class DynamicTimeWarpingTests: XCTestCase {
    
    var dtw: DTW!
    var first: [(Double,Double,Double)]!
    var second: [(Double,Double,Double)]!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        dtw = DTW()
        first = [(1.0,1.0,1.0),(2.0,2.0,2.0),(3.0,3.0,3.0),(4.0,4.0,4.0),(5.0,5.0,5.0)]
        second = [(1.0,1.0,1.0),(3.0,3.0,3.0),(4.0,4.0,4.0),(5.0,5.0,5.0)]
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let distance = dtw.dtw(totAcc: first, newAcc: second)
        XCTAssertNotEqual(distance,0.0, "This is just a guess")
    }
    
}
