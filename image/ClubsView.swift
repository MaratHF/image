//
//  ClubsView.swift
//  image
//
//  Created by MAC  on 31.05.2022.
//

import SwiftUI

struct ClubsView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size / 2
            
            Path { path in
                path.addArc(
                    center: CGPoint(x: middle, y: size/3.8),
                    radius: size / 4.5,
                    startAngle: .degrees(70),
                    endAngle: .degrees(140),
                    clockwise: true
                )
                path.addArc(
                    center: CGPoint(x: size * 1.12 / 3.8, y: size * 0.63),
                    radius: size / 4.5,
                    startAngle: .degrees(1),
                    endAngle: .degrees(2),
                    clockwise: true
                )
                path.addArc(
                    center: CGPoint(x: (size * 2.69) / 3.8, y: size * 0.63),
                    radius: size / 4.5,
                    startAngle: .degrees(0),
                    endAngle: .degrees(1),
                    clockwise: true
                )
            }
            
            Path { path in
                path.move(to: CGPoint(x: middle * 0.95, y: size * 0.7))
                path.addQuadCurve(
                    to: CGPoint(x: middle * 0.8, y: size * 0.95),
                    control: CGPoint(x: middle * 0.95, y: size * 0.9)
                )
                path.addLine(to: CGPoint(x: middle * 1.2, y: size * 0.95))
                path.addQuadCurve(
                    to: CGPoint(x: middle * 1.05, y: size * 0.7),
                    control: CGPoint(x: middle * 1.05, y: size * 0.9)
                )
            }
        }
    }
}

struct ClubsView_Previews: PreviewProvider {
    static var previews: some View {
        ClubsView()
            .frame(width: 200, height: 200)
    }
}
