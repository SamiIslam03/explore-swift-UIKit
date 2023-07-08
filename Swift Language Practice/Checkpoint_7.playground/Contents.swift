import Cocoa

class Animal {
    var legs = 0
}

class Dog: Animal {
    func speak(){
        print("woof woof")
    }
}

class Corgi: Dog {
    override func speak() {
        print("woofi woofi")
    }
}

class Poodle: Dog {
    override func speak() {
        print("gheuu gheuu")
    }
}

class Cat: Animal {
    var isTame = true
    init(isTame: Bool){
        self.isTame = isTame
    }
    func speak(){
        print("Meow meow")
    }
}

class Persian: Cat{
    override func speak() {
        print("Meu meu")
    }
}

class Lion: Cat{
    override func speak() {
        print("Meaow meaow")
    }
}

var mini = Lion(isTame: true)
mini.speak()

var sofie = Corgi()
sofie.speak()
