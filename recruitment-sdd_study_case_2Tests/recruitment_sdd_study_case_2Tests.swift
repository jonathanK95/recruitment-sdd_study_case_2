//
//  recruitment_sdd_study_case_2Tests.swift
//  recruitment-sdd_study_case_2Tests
//
//  Created by Jonathan Kristian on 03/04/24.
//

import XCTest
@testable import recruitment_sdd_study_case_2

final class recruitment_sdd_study_case_2Tests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPromoInitializer() throws {
        let thisTransaction = Promo(dictionary: [
            "id" : 1,
            "name" : "BNI Mobile Banking",
            "images_url" : "https://www.bni.co.id/Portals/1/BNI/Beranda/Images/Beranda-MobileBanking-01-M-Banking1.png",
            "detail" : "https://www.bni.co.id/id-id/individu/simulasi/bni-deposito"
        ])

        XCTAssertEqual(thisTransaction?.id, 1)
        XCTAssertEqual(thisTransaction?.name, "BNI Mobile Banking")
        XCTAssertEqual(thisTransaction?.images_url, "https://www.bni.co.id/Portals/1/BNI/Beranda/Images/Beranda-MobileBanking-01-M-Banking1.png")
        XCTAssertEqual(thisTransaction?.detail, "https://www.bni.co.id/id-id/individu/simulasi/bni-deposito")
    }

    
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
