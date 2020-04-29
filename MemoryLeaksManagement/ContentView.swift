//
//  ContentView.swift
//  MemoryLeaksManagement
//
//  Created by Helder Oliveira Correia on 29/04/2020.
//  Copyright © 2020 Punkbit. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        var mother: Parent? = Parent(name: "Maria")
        return VStack {
            Text("Memory Leaks management!")
            Button("Deallocate \(mother?.name ?? "unknown")") {
                mother = nil
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
