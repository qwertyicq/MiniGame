//
//  CircleView.swift
//  Mini Game
//
//  Created by Nikolay T on 11.07.2021.
//

import UIKit

@IBDesignable class CircleView: UIView {
    
    var workingView: UIView!
    var xibName: String = "CircleView"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setCustomView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setCustomView()
    }
    
    func getFromXib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let xib = UINib(nibName: xibName, bundle: bundle)
        let view = xib.instantiate(withOwner: self, options: nil).first as! UIView
        
        return view
    }
    
    func setCustomView() {
        workingView = self.getFromXib()
        workingView.frame = bounds
        workingView.layer.cornerRadius = frame.size.width / 2
        workingView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        let pan = UIPanGestureRecognizer(target: self, action: #selector(handlePan(sender:)))
        workingView.addGestureRecognizer(pan)
        
        addSubview(workingView)
    }
    
    @objc func handlePan(sender: UIPanGestureRecognizer){
        
        guard let movingView = sender.view else { return }
        let translation = sender.translation(in: movingView)
        
        movingView.center = CGPoint(x: movingView.center.x + translation.x,
                                    y: movingView.center.y + translation.y)
        sender.setTranslation(.zero, in: sender.view)
        
        guard sender.state == .ended else { return }
    }
}

