//
//  Sample_project_1Tests.swift
//  Sample-project-1Tests
//
//  Created by Isaac Zhang on 4/5/19.
//  Copyright © 2019 Isaac Zhang. All rights reserved.
//

import XCTest
@testable import Sample_project_1

class Sample_project_1Tests: XCTestCase {

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

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    // This tests that the Main View Title is "Main View Title"
    func testMainViewTitle() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let mainView = storyboard.instantiateInitialViewController() as! MainViewController
        let _ = mainView.view
        XCTAssertEqual("Main View Title", mainView.titleLabel.text!)
        
    }
    // This tests that the Main View Title is "Main View Title"
    func testMainViewTitleShouldFail() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let mainView = storyboard.instantiateInitialViewController() as! MainViewController
        let _ = mainView.view
        // This is not the actual title
        XCTAssertEqual("Incorrect View Title", mainView.titleLabel.text!)
    }

}
