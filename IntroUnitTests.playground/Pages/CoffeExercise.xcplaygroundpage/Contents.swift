import Foundation

struct Coffe {
    var haveMilk: Bool
    var isStrong: Bool
}

class CoffeMaker {

    static func makeLatte() -> Coffe {
        return Coffe(haveMilk: true, isStrong: false)
    }

    static func makeEspresso() -> Coffe {
        return  Coffe(haveMilk: false, isStrong: true)
    }

}
