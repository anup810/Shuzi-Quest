//
//  GearIconView.swift
//  Shuzi Quest
//
//  Created by Anup Saud on 2025-03-28.
//

import SwiftUI

struct GearIconView: View {
    @Binding var showSettingsView: Bool
    var body: some View {
        VStack(alignment:.leading) {
            Button {
                withAnimation {
                    showSettingsView.toggle()
                }
               
            } label: {
                Image(systemName: "gearshape")
                    .imageScale(.large)
                    .foregroundStyle(.black)
                    .padding()
            }

            Spacer()
        }
        .frame(maxWidth: .infinity,alignment: .leading)
        //.padding()
    }
}

#Preview {
    ZStack {
        Color
            .blue
            .opacity(0.3)
            .ignoresSafeArea()
        GearIconView(showSettingsView: .constant(true))
    }
}
