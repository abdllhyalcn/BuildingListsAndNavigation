//
//  Landmark.swift
//  Landmarks
//
//  Created by abdllhyalcn on 10.03.2022.
//  Copyright © 2022 Apple. All rights reserved.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Codable, Hashable, Identifiable {
    let id: Int
    let name: String
    let park: String
    let state: String
    let description: String
    let isFavorite: Bool
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
