//
//  FloatingValue-4Units.swift
//  Chronology
//
//  Created by Dave DeLong on 2/19/18.
//

import Foundation

public struct MonthDayHourMinute: Floating, MonthField, DayField, HourField, MinuteField {
    public static var representedComponents: Set<Calendar.Component> = [.month, .day, .hour, .minute]
    
    public let region: Region
    public let dateComponents: DateComponents
    
    public init(region: Region, dateComponents: DateComponents) {
        self.region = region
        self.dateComponents = dateComponents.requireAndRestrict(to: type(of: self).representedComponents)
    }
}

public struct DayHourMinuteSecond: Floating, DayField, HourField, MinuteField, SecondField {
    public static var representedComponents: Set<Calendar.Component> = [.day, .hour, .minute, .second]
    
    public let region: Region
    public let dateComponents: DateComponents
    
    public init(region: Region, dateComponents: DateComponents) {
        self.region = region
        self.dateComponents = dateComponents.requireAndRestrict(to: type(of: self).representedComponents)
    }
}

public struct HourMinuteSecondNanosecond: Floating, HourField, MinuteField, SecondField, NanosecondField {
    public static var representedComponents: Set<Calendar.Component> = [.hour, .minute, .second, .nanosecond]
    
    public let region: Region
    public let dateComponents: DateComponents
    
    public init(region: Region, dateComponents: DateComponents) {
        self.region = region
        self.dateComponents = dateComponents.requireAndRestrict(to: type(of: self).representedComponents)
    }
}

