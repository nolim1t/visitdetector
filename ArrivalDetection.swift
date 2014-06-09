//
//  ArrivalDetection.swift
//
//  Copyright (c) 2014 Nomad Ventures. All rights reserved.
//
// Uses iOS 8's visit detection API

import CoreLocation

class ArrivalDetection: NSObject {
    func isArrivalVisit(visit : CLVisit) -> (Bool) {
        if visit.arrivalDate.isEqual(NSDate.distantPast()) {
            // Arrivaldate is in the distant past so it is not an arrival
            return false
        } else {
            // Check if the departure date is in the distant future
            return visit.departureDate.isEqual(NSDate.distantFuture())
        }
    }
}
