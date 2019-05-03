//
//  Sample_project_1UITests.swift
//  Sample-project-1UITests
//
//  Created by Isaac Zhang on 5/2/19.
//  Copyright © 2019 Isaac Zhang. All rights reserved.
//

import XCTest


class Sample_project_1UITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    

    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let app = XCUIApplication()
        snapshot("MainScreenSnapshot")
        let goToSecondViewControllerButton = app.buttons["Go to Second View Controller"]
        goToSecondViewControllerButton.tap()
        snapshot("SecondScreenSnapshot")
        let backToMainViewControllerButton = app.buttons["Back to Main View Controller"]
        backToMainViewControllerButton.tap()
        snapshot("MainScreenSnapshot")
    }

}
