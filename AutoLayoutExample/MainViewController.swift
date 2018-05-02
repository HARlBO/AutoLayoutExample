//
//  MainViewController.swift
//  AutoLayoutExample
//
//  Created by JH on 2018. 4. 26..
//  Copyright © 2018년 JH. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    var button = [UIButton]()
    let numberOfMenu = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
        
        setTopMenuView()
        setBottomMenuView()
    }
    
    func setTopMenuView() {
        let topMenuView = UIView()
        
        let top = NSLayoutConstraint(item: topMenuView, attribute:.top, relatedBy: .equal, toItem: self.topLayoutGuide, attribute: .bottom, multiplier: 1, constant: 0)
        let leading = NSLayoutConstraint(item: topMenuView, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1, constant: 0)
        let trailing = NSLayoutConstraint(item: self.view, attribute: .trailing, relatedBy: .equal, toItem: topMenuView, attribute: .trailing, multiplier: 1, constant: 0)
        let height = NSLayoutConstraint(item: topMenuView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 64)
        
        topMenuView.backgroundColor = UIColor(red: 212/255, green: 219/255, blue: 249/255, alpha: 1.0)
        topMenuView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(topMenuView)
        self.view.addConstraints([top, leading, trailing, height])
        
        let titleLabel = UILabel()
        
        let centerX = NSLayoutConstraint(item: titleLabel, attribute: .centerX, relatedBy: .equal, toItem: topMenuView, attribute: .centerX, multiplier: 1, constant: 0)
        let centerY = NSLayoutConstraint(item: titleLabel, attribute: .centerY, relatedBy: .equal, toItem: topMenuView, attribute: .centerY, multiplier: 1, constant: 0)
        
        titleLabel.text = "Title Label"
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        topMenuView.addSubview(titleLabel)
        topMenuView.addConstraints([centerX, centerY])
    }
    
    func setBottomMenuView() {
        let bottomMenuView = UIView()
        
        let leading = NSLayoutConstraint(item: bottomMenuView, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1, constant: 0)
        let trailing = NSLayoutConstraint(item: self.view, attribute: .trailing, relatedBy: .equal, toItem: bottomMenuView, attribute: .trailing, multiplier: 1, constant: 0)
        let bottom = NSLayoutConstraint(item: self.view, attribute: .bottom, relatedBy: .equal, toItem: bottomMenuView, attribute: .bottom, multiplier: 1, constant: 0)
        let height = NSLayoutConstraint(item: bottomMenuView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 44)
        
        bottomMenuView.backgroundColor = UIColor(red: 252/255, green: 245/255, blue: 180/255, alpha: 1.0)
        bottomMenuView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(bottomMenuView)
        self.view.addConstraints([leading, trailing, bottom, height])
        
        for i in 0..<numberOfMenu {
            button.append(UIButton(type: .system))
            button[i].setTitle("\(i)", for: .normal)
            button[i].translatesAutoresizingMaskIntoConstraints = false
            
            bottomMenuView.addSubview(button[i])
        }
        
        for i in 0..<numberOfMenu {
            if i == 0 {
                let leading = NSLayoutConstraint(item: button[i], attribute: .leading, relatedBy: .equal, toItem: bottomMenuView, attribute: .leading, multiplier: 1, constant: 0)
                
                bottomMenuView.addConstraint(leading)
            } else if i == numberOfMenu - 1 {
                 let leading = NSLayoutConstraint(item: button[i], attribute: .leading, relatedBy: .equal, toItem: button[i-1], attribute: .trailing, multiplier: 1, constant: 0)
                let trailing = NSLayoutConstraint(item: bottomMenuView, attribute: .trailing, relatedBy: .equal, toItem: button[i], attribute: .trailing, multiplier: 1, constant: 0)
                let width = NSLayoutConstraint(item: button[i], attribute: .width, relatedBy: .equal, toItem: button[i-1], attribute: .width, multiplier: 1, constant: 0)
                
                bottomMenuView.addConstraints([leading, trailing, width])
            } else {
                let leading = NSLayoutConstraint(item: button[i], attribute: .leading, relatedBy: .equal, toItem: button[i-1], attribute: .trailing, multiplier: 1, constant: 0)
                let width = NSLayoutConstraint(item: button[i], attribute: .width, relatedBy: .equal, toItem: button[i-1], attribute: .width, multiplier: 1, constant: 0)
                
                bottomMenuView.addConstraints([leading, width])
            }
            
            let top = NSLayoutConstraint(item: button[i], attribute: .top, relatedBy: .equal, toItem: bottomMenuView, attribute: .top, multiplier: 1, constant: 0)
            let bottom = NSLayoutConstraint(item: bottomMenuView, attribute: .bottom, relatedBy: .equal, toItem: button[i], attribute: .bottom, multiplier: 1, constant: 0)
            
            bottomMenuView.addConstraints([top, bottom])
        }
    }
}
