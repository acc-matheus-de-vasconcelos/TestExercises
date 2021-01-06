import Foundation

enum MusicType {
    case rock
    case pop
}

enum Music {
    case none
    case name(String)
}

class JukeBox {

    var currentMusic: Music = .none

    func playMusic(type: MusicType) {
        switch type {
        case .rock:
            playRock()
        case .pop:
            playPop()
        }
    }

    private func playRock() {
        currentMusic = .name("Black in Black")
    }

    private func playPop() {
        currentMusic = .name("Toxic")
    }

}
