//
//  ViewController.swift
//  ExampleApp-HandlingErrors
//
//  Created by Ben Scheirman on 8/21/20.
//

import UIKit
import Combine

class ViewController: UIViewController {
    @IBOutlet weak var diceImage: UIImageView!
    @IBOutlet weak var rollDiceButton: UIButton!
    
    private var cancellables = Set<AnyCancellable>()
    private var viewModel = DiceViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureDiceImage()
        
        // Setup Subscriptions
    }
    
    private func configureDiceImage() {
        diceImage.layer.shadowColor = UIColor.black.cgColor
        diceImage.layer.shadowOpacity = 0.25
        diceImage.layer.shadowRadius = 2
        diceImage.layer.shadowOffset = .zero
    }

    @IBAction func rollDiceTapped(_ sender: Any) {
        // Roll Dice
    }
}

