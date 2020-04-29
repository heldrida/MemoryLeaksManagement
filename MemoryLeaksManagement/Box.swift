// Fixing retain cycle
// 1) identify who the child is
// 2) make the child have a weak or unowned property reference to the parent

// Parent
class Box {
    var boxContent: BoxContent?
    init () {
        print("init job")
    }
    deinit {
        print("deinit person")
    }
}

class BoxContent {
    weak var box: Box?
    init () {
        print("init boxContent")
    }
    deinit {
        print("deinit boxContent")
    }
}

