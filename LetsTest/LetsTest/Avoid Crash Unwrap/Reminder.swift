//
//  Reminder.swift
//  LetsTest
//

import Foundation

class RemindKeeper {

    var reminders: [Reminder]

    init() {
        reminders = [Reminder()]
    }

}

class Reminder {

    var time = 5

    func shouldTakePill() -> Bool {
        return time == 6
    }

}
