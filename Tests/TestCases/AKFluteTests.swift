//
//  AKFluteTests.swift
//  iOSTestSuiteTests
//
//  Created by Taylor Holliday on 8/12/20.
//  Copyright © 2020 AudioKit. All rights reserved.
//

import AudioKit
import XCTest

class AKFluteTests: AKTestCase {

    func testFlute() {

        let flute = AKFlute()
        flute.trigger(frequency: 440)
        output = flute

        // auditionTest()
        AKTestMD5("f7fd94da1321d1727af4d12d6355437c")

    }

    func testAmplitude() {

        let flute = AKFlute()
        flute.trigger(frequency: 440, amplitude: 0.5)
        output = flute

        // auditionTest()
        AKTestMD5("0e499f74ca4a5f4d93b28daed2b40b06")

    }

}
