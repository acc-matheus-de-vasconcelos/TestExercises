//
//  MotorcycleCourier.swift
//  LetsTest
//

import Foundation

class MotorcycleCourier {

    func getOrder(result: @escaping (Bool) -> Void) {
        Timer.scheduledTimer(withTimeInterval: 1.5, repeats: false) { timer in
            result(true)
            timer.invalidate()
        }
    }

}
