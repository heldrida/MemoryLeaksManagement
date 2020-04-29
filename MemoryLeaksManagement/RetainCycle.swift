class Person {
    var job: Job?
    init () {
        print("init job")
    }
    deinit {
        print("deinit person")
    }
}

class Job {
    var person: Person?
    init () {
        print("init person")
    }
    deinit {
        print("deinit person")
    }
}

