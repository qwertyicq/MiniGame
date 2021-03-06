//
//  ViewController.swift
//  Mini Game
//
//  Created by Nikolay T on 11.07.2021.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {

//    var rounds = [CircleView]()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//
//        let rnd = Int.random(in: 3..<7)
//
//        for index in 0...rnd {
//            let maxXinSafeArea = Int(view.safeAreaLayoutGuide.layoutFrame.maxX)
//            let maxYinSafeArea = Int(view.safeAreaLayoutGuide.layoutFrame.maxY)
//            let minXinSafeArea = Int(view.safeAreaLayoutGuide.layoutFrame.minX)
//            let minYinSafeArea = Int(view.safeAreaLayoutGuide.layoutFrame.minY)
//
//            let randomX = Int.random(in: (minXinSafeArea + 50)..<(maxXinSafeArea - 50))
//            let randomY = Int.random(in: (minYinSafeArea + 50)..<(maxYinSafeArea - 50))
//
//            rounds.append(CircleView(frame: CGRect(x: CGFloat(randomX), y: CGFloat(randomY), width: 50, height: 50)))
//            rounds[index].workingView.backgroundColor = .orange
//            view.addSubview(rounds[index])
//        }
//    }
    
    //var allViewsInGame = Circle()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        let rnd = Int.random(in: 3..<7)

        for index in 0...rnd {
            let maxXinSafeArea = Int(view.safeAreaLayoutGuide.layoutFrame.maxX)
            let maxYinSafeArea = Int(view.safeAreaLayoutGuide.layoutFrame.maxY)
            let minXinSafeArea = Int(view.safeAreaLayoutGuide.layoutFrame.minX)
            let minYinSafeArea = Int(view.safeAreaLayoutGuide.layoutFrame.minY)

            let randomX = Int.random(in: (minXinSafeArea + 50)..<(maxXinSafeArea - 50))
            let randomY = Int.random(in: (minYinSafeArea + 50)..<(maxYinSafeArea - 50))

            Circle.rounds.append(CircleView(frame: CGRect(x: CGFloat(randomX), y: CGFloat(randomY), width: 50, height: 50)))
            Circle.rounds[index].indexInArray = index
            Circle.rounds[index].workingView.backgroundColor = .orange
            view.addSubview(Circle.rounds[index])
        }
    }
}

