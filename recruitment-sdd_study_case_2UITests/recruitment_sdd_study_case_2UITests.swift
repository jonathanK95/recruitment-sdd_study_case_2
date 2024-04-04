//
//  recruitment_sdd_study_case_2UITests.swift
//  recruitment-sdd_study_case_2UITests
//
//  Created by Jonathan Kristian on 03/04/24.
//

import XCTest

final class recruitment_sdd_study_case_2UITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    
    func testHomeController() throws {
        let app = XCUIApplication()
        app.launch()
        let mainTable = app.tables.element(boundBy: 0)
        XCTAssertEqual(mainTable.cells.count, 2)
    }
    
    func testFleksiDetailController() throws {
        let app = XCUIApplication()
        app.launch()
        app.buttons["Poster"].tap()
        XCTAssertEqual(app.staticTexts["BNI Fleksi"].exists, true )
    }
    
    func testMobileBankingDetailController() throws {
        let app = XCUIApplication()
        app.launch()
        let mainTable = app.tables.element(boundBy: 0)
        XCTAssertEqual(mainTable.cells.count, 2)
        
        mainTable.cells.element(boundBy: 0).tap()
        XCTAssertEqual(app.staticTexts["BNI Mobile Banking"].exists, true )
    }
    
 
    
    func testWholesaleDetailController() throws {
        let app = XCUIApplication()
        app.launch()
        let mainTable = app.tables.element(boundBy: 0)
        XCTAssertEqual(mainTable.cells.count, 2)
        
        mainTable.cells.element(boundBy: 1).tap()
        XCTAssertEqual(app.staticTexts["BNI Wholesale"].exists, true )
    }
    
    
    
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
