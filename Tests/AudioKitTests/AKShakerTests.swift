// Copyright AudioKit. All Rights Reserved. Revision History at http://github.com/AudioKit/AudioKit/

import XCTest
import AudioKit
import CAudioKit

class AKShakerTests: AKTestCase {

    func testShaker() {

        akSetSeed(0)

        let shaker = AKShaker()
        shaker.trigger(type: .maraca)
        output = shaker

        // auditionTest()
        AKTestMD5("05013ce342a1ed33cc2c635d058cad1d")
    }

    func testShakerType() {

        akSetSeed(0)

        let shaker = AKShaker()
        shaker.trigger(type: .tunedBambooChimes)
        output = shaker

        // auditionTest()
        AKTestMD5("b2695a1c183ecb3a4714c93431017fa9")
    }

    func testShakerAmplitude() {

        akSetSeed(0)

        let shaker = AKShaker()
        shaker.trigger(type: .tunedBambooChimes, amplitude: 1.0)
        output = shaker

        // auditionTest()
        AKTestMD5("ae93fa2526161850b7e288acbd766c68")
    }

}