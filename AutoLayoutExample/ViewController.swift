//
//  ViewController.swift
//  AutoLayoutExample
//
//  Created by JH on 2018. 4. 24..
//  Copyright © 2018년 JH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     
        setUpView()
    }

    func setUpView() {
        // aView
        let aView = UIView()
        
        let aTop = NSLayoutConstraint(item: aView, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1, constant: 0)
        let aLeading = NSLayoutConstraint(item: aView, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1, constant: 0)
        let aBottom = NSLayoutConstraint(item: self.view, attribute: .bottom, relatedBy: .equal, toItem: aView, attribute: .bottom, multiplier: 1, constant: 0)
        let aTrailing = NSLayoutConstraint(item: self.view, attribute: .trailing, relatedBy: .equal, toItem: aView, attribute: .trailing, multiplier: 1, constant: 0)
        
        aView.backgroundColor = .lightGray
        aView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(aView)
        self.view.addConstraints([aTop, aLeading, aBottom, aTrailing])
        
        // bView
        let bView = UIView()
        
        let bTop = NSLayoutConstraint(item: bView, attribute: .top, relatedBy: .equal, toItem: aView, attribute: .top, multiplier: 1, constant: 50)
        let bLeading = NSLayoutConstraint(item: bView, attribute: .leading, relatedBy: .equal, toItem: aView, attribute: .leading, multiplier: 1, constant: 30)
        let bHeight = NSLayoutConstraint(item: bView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 100)
        let bWidth = NSLayoutConstraint(item: bView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: 50)
        
        bView.backgroundColor = .red
        bView.translatesAutoresizingMaskIntoConstraints = false
        
        aView.addSubview(bView)
        aView.addConstraints([bTop, bLeading, bHeight, bWidth])
        
        //cView
        let cView = UIView()
        
        let cTop = NSLayoutConstraint(item: cView, attribute: .top, relatedBy: .equal, toItem: bView, attribute: .top, multiplier: 1, constant: 40)
        let cLeading = NSLayoutConstraint(item: cView, attribute: .leading, relatedBy: .equal, toItem: aView, attribute: .leading, multiplier: 1, constant: 50)
        let cTrailing = NSLayoutConstraint(item: aView, attribute: .trailing, relatedBy: .equal, toItem: cView, attribute: .trailing, multiplier: 1, constant: 20)
        let cHeight = NSLayoutConstraint(item: cView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 120)
        
        cView.backgroundColor = .blue
        cView.translatesAutoresizingMaskIntoConstraints = false
        
        aView.addSubview(cView)
        aView.addConstraints([cTop, cLeading, cTrailing, cHeight])
        
        //dView
        let dView = UIView()
        
        let dLeading = NSLayoutConstraint(item: dView, attribute: .leading, relatedBy: .equal, toItem: aView, attribute: .leading, multiplier: 1, constant: 0)
        let dBottom = NSLayoutConstraint(item: aView, attribute: .bottom, relatedBy: .equal, toItem: dView, attribute: .bottom, multiplier: 1, constant: 40)
        let dTrailing = NSLayoutConstraint(item: aView, attribute: .trailing, relatedBy: .equal, toItem: dView, attribute: .trailing, multiplier: 1, constant: 0)
        let dHeight = NSLayoutConstraint(item: dView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 50)

        dView.backgroundColor = .yellow
        dView.translatesAutoresizingMaskIntoConstraints = false
        
        aView.addSubview(dView)
        aView.addConstraints([dLeading, dBottom, dTrailing, dHeight])
        
        //eView
        let eView = UIView()
        
        let eWidth = NSLayoutConstraint(item: eView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: 30)
        let eHeight = NSLayoutConstraint(item: eView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 20)
        let eCenterX = NSLayoutConstraint(item: eView, attribute: .centerX, relatedBy: .equal, toItem: dView, attribute: .centerX, multiplier: 1, constant: 0)
        let eCenterY = NSLayoutConstraint(item: eView, attribute: .centerY, relatedBy: .equal, toItem: dView, attribute: .centerY, multiplier: 1, constant: 0)
        
        eView.backgroundColor = .green
        eView.translatesAutoresizingMaskIntoConstraints = false
        
        dView.addSubview(eView)
        dView.addConstraints([eWidth, eHeight, eCenterX, eCenterY])
    }
}

