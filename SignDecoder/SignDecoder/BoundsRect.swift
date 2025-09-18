import Foundation
import SwiftUI
import Vision

struct BoundsRect: Shape {
    let normalisedRect: NormalizedRect
    
    func path(in rect: CGRect) ->Path {
        let imageCoordinatesRect = normalisedRect.toImageCoordinates(rect.size, origin: .upperLeft)
        return Path(imageCoordinatesRect)
    }
}
