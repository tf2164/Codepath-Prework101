//
//  ViewController.swift
//  Codepath-Prework101
//
//  Created by tf2164 on 1/19/24.
//
import UIKit

class ViewController: UIViewController {

    var colorBlindMode = false
    var currentColorIndex = 0

    // Define an array of color-blind-friendly colors
    let colorPalette: [UIColor] = [
        UIColor.blue,
        UIColor.red,
        UIColor.orange,
        UIColor.yellow
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    func setupUI() {
        // Set the initial background color to white
        view.backgroundColor = UIColor.white
    }

    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        if colorBlindMode {
            toggleColorScheme()
        } else {
            let randomColor = changeColor()
            UIView.animate(withDuration: 0.5) {
                self.view.backgroundColor = randomColor
            }
        }
    }
    
    func changeColor() -> UIColor {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
    
    func toggleColorScheme() {
        // Toggle between color-blind-friendly colors when color-blind mode is active
        view.backgroundColor = colorPalette[currentColorIndex]
        currentColorIndex = (currentColorIndex + 1) % colorPalette.count
    }
}

