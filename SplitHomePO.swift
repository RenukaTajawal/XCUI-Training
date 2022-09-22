//
//  SplitHomePO.swift
//  SplitoUITests
//
//  Created by Shahid Latif on 13/04/2022.
//

import XCTest

struct SplitHomePO {
    var application: XCUIApplication
    let billEnteredTextField: XCUIElement
    let incrementPersonButton: XCUIElement
    let decrementPersonButton: XCUIElement
    let totalPersonInBillLabel: XCUIElement
    let zeroPercentButton: XCUIElement
    let tenPercentButton: XCUIElement
    let fifteenPercentButton: XCUIElement
    let twentyPercentButton: XCUIElement
    let enterBillAmountLabel: XCUIElement
    let viewBillHistoryButton: XCUIElement
    let calculateBillButton: XCUIElement
    
    init(app: XCUIApplication = XCUIApplication()) {
        application = app
        billEnteredTextField = app.textFields[AccessibilityIdentifiers.billEnteredTextField.rawValue]
        incrementPersonButton = app.button[AccessibilityIdentifiers.incrementPersonButton.rawValue]
        decrementPersonButton = app.button[AccessibilityIdentifiers.decrementPersonButton.rawValue]
        totalPersonInBillLabel = app.staticTexts[AccessibilityIdentifiers.totalPersonInBillLabel.rawValue]
        zeroPercentButton = app.button[AccessibilityIdentifiers.zeroPercentButton.rawValue]
        tenPercentButton = app.button[AccessibilityIdentifiers.tenPercentButton.rawValue]
        fifteenPercentButton = app.button[AccessibilityIdentifiers.fifteenPercentButton.rawValue]
        twentyPercentButton = app.button[AccessibilityIdentifiers.twentyPercentButton.rawValue]
        enterBillAmountLabel = app.staticTexts[AccessibilityIdentifiers.enterBillAmountLabel.rawValue]
        viewBillHistoryButton = app.button[AccessibilityIdentifiers.viewBillHistoryButton.rawValue]
        calculateBillButton = app.button[AccessibilityIdentifiers.calculateBillButton.rawValue]
        
    }
}


extension SplitHomePO {
    enum AccessibilityIdentifiers: String {
    case billEnteredTextField = "bill_entered_amount"
    case incrementPersonButton = "increment_person"
    case decrementPersonButton = "decrement_person"
    case totalPersonInBillLabel = "total_person_in_bill"
    case zeroPercentButton = "0_percent"
    case tenPercentButton = "10_percent"
    case fifteenPercentButton = "15_percent"
    case twentyPercentButton = "20_percent"
    case enterBillAmountLabel = "total_bill_each_person"
    case viewBillHistoryButton = "view_bill_history"
    case calculateBillButton = "calculate_bill_button"
    
    }
}
