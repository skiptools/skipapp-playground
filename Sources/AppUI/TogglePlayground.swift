// Copyright 20222 Skip
//
// This is free software: you can redistribute and/or modify it
// under the terms of the GNU Lesser General Public License 3.0
// as published by the Free Software Foundation https://fsf.org
import SwiftUI

struct TogglePlayground: View {
    @State var isOn = false

    var body: some View {
        ScrollView {
            VStack {
                Text("Toggle")
                    .font(.title)
                Divider()

                Toggle(isOn: $isOn) {
                    Text("Viewbuilder init")
                }
                .padding([.top, .bottom])
                Toggle("String init", isOn: $isOn)
                    .padding([.bottom])
                Toggle("Fixed width", isOn: $isOn)
                    .frame(width: 200.0)
                    .padding([.bottom])
                VStack {
                    Text(".labelsHidden():")
                    Toggle("Label", isOn: $isOn)
                }
                .labelsHidden()
            }
            .padding()
        }
    }
}