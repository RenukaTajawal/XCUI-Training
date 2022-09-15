//
//  ViewController.swift
//  TestSwift
//
//  Created by Renuka on 07/09/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print(extractNumberFromString())
        print(removeUnderscoreFromString())
        print(removeLeadingZeroFromString())
        
    }

    func extractNumberFromString() -> String
    {
        var StringName = "SAR 1,685,633.00"
        let removeCharacters: Set<Character> = ["S", "A", "R"]
        StringName.removeAll(where: { removeCharacters.contains($0) } )
        return StringName
    }
    
    func removeUnderscoreFromString() -> String
    {
        let StringName = "28_12_2024"
        let replaced = StringName.replacingOccurrences(of: "_", with: " ")
        return replaced
    }
    
    func removeLeadingZeroFromString() -> String
    {
        let StringName = "01 December 2022"
        let trimmedString = StringName.replacingOccurrences(of: "^0+", with: "", options: .regularExpression)
        return trimmedString
    }

}

