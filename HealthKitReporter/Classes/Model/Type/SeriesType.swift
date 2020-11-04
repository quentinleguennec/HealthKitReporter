//
//  SeriesType.swift
//  HealthKitReporter
//
//  Created by Florian on 05.10.20.
//

import Foundation
import HealthKit

public enum SeriesType: Int, ObjectType {
    case heartbeatSeries
    case route

    public var identifier: String? {
        return original?.identifier
    }

    public var original: HKSeriesType? {
        switch self {
        case .heartbeatSeries:
            if #available(iOS 13.0, *) {
                return HKObjectType.seriesType(forIdentifier: HKDataTypeIdentifierHeartbeatSeries)
            } else {
                return nil
            }
        case .route:
            return HKObjectType.seriesType(forIdentifier: HKWorkoutRouteTypeIdentifier)
        }
    }
}