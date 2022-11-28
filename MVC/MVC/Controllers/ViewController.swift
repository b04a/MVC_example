//
//  ViewController.swift
//  MVC
//
//  Created by Danil Bochkarev on 28.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var namelavel: UILabel!
    @IBOutlet weak var tickerLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    
    @IBAction func buttonAction(_ sender: Any) {
        displayData(i: getRandomCount())
    }
    
    private var count = 0
    private var testData : [Crypto] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let model = Crypto.testData
        setupData(with: model)
        setupInitialState()
    }
    
    func setupInitialState() {
        displayData(i: count)
    }
    
    func setupData(with testData: ([Crypto])) {
        self.testData = testData
    }
    
    
    func displayData(i: Int) {
        if testData.count >= 0 && count <= (testData.count - 1) && count >= 0 {
            namelavel.text = testData[i].name
            tickerLabel.text = testData[i].ticker
            valueLabel.text = String(testData[i].value)
        } else {
            print("123")
        }
    }

    func getRandomCount() -> Int {
        let randomCount = Int.random(in: 0 ..< testData.count)
        return randomCount
    }
}

