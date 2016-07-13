//
//  DealershipTest.swift
//  GMD
//
//  Created by Eugene on 6/28/16.
//  Copyright © 2016 Ievgenii Pavlov. All rights reserved.
//

import XCTest
@testable import GMD

class DealershipTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testIsDelearshipsLoaded() {
        let result = Dealership.loadDealerships()
        XCTAssertGreaterThan(result.count, 0)
    }
    
}
