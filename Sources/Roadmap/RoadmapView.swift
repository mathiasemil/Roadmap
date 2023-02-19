//
//  RoadmapView.swift
//  Roadmap
//
//  Created by Antoine van der Lee on 19/02/2023.
//

import SwiftUI

public struct RoadmapView: View {
    @StateObject var viewModel = RoadmapViewModel()

    public init() {

    }

    public var body: some View {
        List {
            ForEach(viewModel.features) { feature in
                Section {
                    RoadmapFeatureView(viewModel: .init(feature: feature))
                }
            }
        }
    }
}

struct RoadmapView_Previews: PreviewProvider {
    static var previews: some View {
        RoadmapView()
    }
}