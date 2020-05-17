//
//  Fowl_WeatherTests.swift
//  Fowl WeatherTests
//
//  Created by Jake Connerly on 5/16/20.
//  Copyright © 2020 jake connerly. All rights reserved.
//

import XCTest
@testable import Fowl_Weather

class Fowl_WeatherTests: XCTestCase {

    func testCardinalDirectionHandlerNorth() {
        let sutNorth = CardinalDirectionHelper.fetchDirection(directionInDegrees: 10)
        XCTAssertEqual("N", sutNorth)
        let sutNorthEast = CardinalDirectionHelper.fetchDirection(directionInDegrees: 12)
        XCTAssertEqual("N/NE", sutNorthEast)
    }

}
