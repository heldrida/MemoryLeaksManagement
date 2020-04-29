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
        return VStack {
            Text("Memory Leaks management!")
            Button("Init and deallocate Mother") {
                self.deallocateMother()
            }
        }
    }
    func deallocateMother () {
        var mother: Parent? = Parent(name: "Maria")
        print("The parent name is \(mother?.name ?? "unknown")")
        mother = nil
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
