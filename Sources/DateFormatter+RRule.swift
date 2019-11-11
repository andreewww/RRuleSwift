//
//  DateFormatter+RRule.swift
//  RRuleSwift
//
//  Created by quan.duanh on 11/11/19.
//  Copyright © 2019 Teambition. All rights reserved.
//

import Foundation

extension DateFormatter {
    convenience init(_ dateFormat: String, _ timeZone: TimeZone? = nil, _ safely: Bool = true) {
        self.init()
        self.dateFormat = dateFormat

        if timeZone == nil {
            self.timeZone = TimeZone(secondsFromGMT: 0)
        }

        if safely {
            // NOTE: AM/PM on 12/24 hour switch is broken on some locale.
            self.locale = Locale(identifier: "en_US_POSIX")
        }
    }
}
