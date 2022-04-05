//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by abdllhyalcn on 10.03.2022.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    
    let landmark: Landmark
    
    var body: some View {
        HStack() {
            landmark.image.resizable().frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            if(landmark.isFavorite) {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }

    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarks[0])
    }
}
