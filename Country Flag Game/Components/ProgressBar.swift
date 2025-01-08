//
//  ProgressBar.swift
//  Country Flag Game
//
//  Created by Aiden Baker on 1/8/25.
//

import SwiftUI

struct ProgressBar: View {
    var progress: CGFloat
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .frame(maxWidth: 350, maxHeight: 4)
                .foregroundColor(.gray)
                .cornerRadius(10)
            Rectangle()
                .frame(maxWidth: progress, maxHeight: 4)
                .foregroundColor(.yellow)
                .cornerRadius(10)
        }
    }
}

#Preview {
    ProgressBar(progress: 50)
}
