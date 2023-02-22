//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Sarah Chow on 2023-02-19.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter{ landmark in
            // does not show favorites. logic: true if showFavoritesOnly variable is false
            // shows favorites. logic: true if showFavoritesOnly variable is true AND landmark is favored
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }

    var body: some View {
        
        NavigationView{
            List{
                // Only toggles, double check start value of showFavoritesOnly is the proper value before compiling
                Toggle(isOn: $showFavoritesOnly){
                    Text("Favorites Only")
                }
                // 'landmark in' is the iteration variable. 'landmarks' is the array from data
                ForEach(filteredLandmarks){ landmark in
            
                    NavigationLink{
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }

    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self){ deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
                .environmentObject(ModelData())
        }
    }
}
