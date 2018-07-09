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
    var third: [(Double,Double,Double)]!
    var fourth: [(Double,Double,Double)]!
    var fifth: [(Double,Double,Double)]!

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        dtw = DTW()
        first = [(1.0,1.0,1.0),(2.0,2.0,2.0),(3.0,3.0,3.0),(4.0,4.0,4.0),(5.0,5.0,5.0)]
        second = [(1.0,1.0,1.0),(3.0,3.0,3.0),(4.0,4.0,4.0),(5.0,5.0,5.0)]
        third = [(0.0,0.0,0.0),(0.0,0.0,0.0),(0.0,0.0,0.0),(0.0,0.0,0.0),(0.0,0.0,0.0)]
        fourth = [(1.0,1.0,1.0),(1.0,2.0,2.0),(3.0,3.0,3.0),(4.0,4.0,4.0),(5.0,5.0,5.0)]
        fifth = [(1.0,1.0,1.0),(2.0,2.0,2.0),(3.0,3.0,3.0),(4.0,4.0,4.0),(5.0,5.0,5.0)]
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testDifferent() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let distance = dtw.dtw(totAcc: first, newAcc: second)
        //let distance2 = dtw.dtw()
        XCTAssertNotEqual(distance,0.0, "Testing the first array against one with no array of 2's")
    }
    
    func testSame() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let distance = dtw.dtw(totAcc: first, newAcc: fifth)
        //let distance2 = dtw.dtw()
        XCTAssertEqual(distance,0.0, "Two of the same arrays being tested")
    }
    
    func testAllZeros() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let distance = dtw.dtw(totAcc: first, newAcc: third)
        //let distance2 = dtw.dtw()
        XCTAssertEqual(distance,sqrt(588), "testing case 1 against an array of all zeros")
    }
    
    func testMixOnesandTwos() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let distance = dtw.dtw(totAcc: first, newAcc: fourth)
        //let distance2 = dtw.dtw()
        XCTAssertEqual(distance,1.0, "Testing array 1 against an array different by 1 ")
    }
    
}
