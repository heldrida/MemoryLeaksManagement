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
            Button("Retain Cycle problem") {
                self.retainCycleProblem()
            }
        }
    }
    func deallocateMother () {
        var mother: Parent? = Parent(name: "Maria")
        print("The parent name is \(mother?.name ?? "unknown")")
        mother = nil
    }
    func retainCycleProblem () {
        // problems removing (deallocating) from memory
        var joe: Person? = Person()
        var dev: Job? = Job()
        joe?.job = dev
        dev?.person = joe
        joe = nil
        // person class still has reference count to 1, the job property
        // still points to person
        dev = nil
        // job class still has reference count to 1, the person property
        // still points to job
        
        // We end up not having a way to access the inner property instances
        // and that's the problem
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
