//
//  PriceCalculatorTests.swift
//  PriceCalculatorTests
//
//  Created by Admin on 16.01.2019.
//  Copyright © 2019 furrki. All rights reserved.
//

import XCTest
@testable import PriceCalculator

class PriceCalculatorTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
       
    }

    func testWageHours(){
        XCTAssert(Wage.getHours(forWage: 50, andPrice: 50000) == 1000)
        XCTAssert(Wage.getHours(forWage: 10, andPrice: 5) == 1)
        XCTAssert(Wage.getHours(forWage: 20, andPrice: 20) == 1)
        XCTAssert(Wage.getHours(forWage: 20, andPrice: 0) == 0)
        XCTAssert(Wage.getHours(forWage: 0, andPrice: 20) == 0)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
