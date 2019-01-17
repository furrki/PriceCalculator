//
//  PriceCalculatorUITests.swift
//  PriceCalculatorUITests
//
//  Created by Admin on 16.01.2019.
//  Copyright © 2019 furrki. All rights reserved.
//

import XCTest

class PriceCalculatorUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    func testHoursAppear(){
        
        let app = XCUIApplication()
        app.textFields["Your hourly wage"].tap()
        
        let key = app/*@START_MENU_TOKEN@*/.keys["2"]/*[[".keyboards.keys[\"2\"]",".keys[\"2\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key.tap()
        
        let key2 = app/*@START_MENU_TOKEN@*/.keys["0"]/*[[".keyboards.keys[\"0\"]",".keys[\"0\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key2.tap()
        
        let itemPriceTextField = app.textFields["Item price"]
        itemPriceTextField.tap()
        app/*@START_MENU_TOKEN@*/.keys["5"]/*[[".keyboards.keys[\"5\"]",".keys[\"5\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        key2.tap()
        key2.tap()
        
        app.buttons["Calculate"].tap()
       
        XCTAssertEqual(app.staticTexts["hoursLabel"].isHittable, true)
        
    }

}
