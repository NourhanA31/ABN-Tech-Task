//
//  DefaultLocaleTests.swift
//  ReferenceiOS
//
//  Created by Nourhan on 30/08/2026.
//  Copyright © 2026 ABN AMRO. All rights reserved.
//
import XCTest

class DefaultLocaleTests: XCTestCase {
    
    override func setUp() {
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testIntialValue() {
        let initialValue = MainScreen().getText()
        
        XCTAssertEqual(initialValue, "Hello", "The intial value of the label is not Hello")
    }
    
    func testTextChangesAfterTapping() {
        let mainScreen = MainScreen()
        let intialValue = mainScreen.getText()
        mainScreen.tapButton()
        let currentValue = mainScreen.getText()
        
        XCTAssertNotEqual(currentValue, intialValue, "The text doesn't change after tapping the button")
    }
}
