import Combine

class Parent {
    var child: Child = Child()
    var name: String
    
    init (name: String) {
        print("Parent init")
        self.name = name
    }

    deinit {
        print("Parent deinit")
    }
}

class Child {
    init () {
        print("Child init")
    }

    deinit {
        print("Child deinit")
    }
}
