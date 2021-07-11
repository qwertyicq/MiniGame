//
//  ViewController.swift
//  Mini Game
//
//  Created by Nikolay T on 11.07.2021.
//

import UIKit

class ViewController: UIViewController {

    var rounds = [CircleView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let rnd = Int.random(in: 3..<7)
        
        for index in 0...rnd {
            let maxXinView = Int(view.safeAreaLayoutGuide.layoutFrame.maxX)
            let maxYinView = Int(view.safeAreaLayoutGuide.layoutFrame.maxY)
            
            var randomX = Int.random(in: 0..<maxXinView)
            var randomY = Int.random(in: 0..<maxYinView)
            
            if CGFloat(randomX - 25) < view.safeAreaLayoutGuide.layoutFrame.minX {
                randomX += 30
            } else if CGFloat(randomX + 25) < view.safeAreaLayoutGuide.layoutFrame.maxX {
                randomX -= 30
            }
            if CGFloat(randomY - 25) <  view.safeAreaLayoutGuide.layoutFrame.minY {
                randomY += 30
            } else if CGFloat(randomX + 25) < view.safeAreaLayoutGuide.layoutFrame.maxY {
                randomY -= 30
            }
            
            rounds.append(CircleView(frame: CGRect(x: CGFloat(randomX), y: CGFloat(randomY), width: 50, height: 50)))
            rounds[index].workingView.backgroundColor = .orange
            view.addSubview(rounds[index])
        }
    }
    
}

