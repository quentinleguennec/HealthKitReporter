//
//  Extensions+HKBiologicalSex.swift
//  HealthKitReporter
//
//  Created by Victor on 15.09.20.
//

import Foundation
import HealthKit

extension HKBiologicalSex: CustomStringConvertible {
    public var description: String {
        switch self {
        case .notSet:
            return "na"
        case .female:
            return "Female"
        case .male:
            return "Male"
        case .other:
            return "Other"
        @unknown default:
            fatalError()
        }
    }
}