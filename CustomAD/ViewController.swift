//
//  ViewController.swift
//  CustomAD
//
//  Created by Abdullah Alhaider on 6/30/18.
//  Copyright © 2018 Abdullah Alhaider. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    let backroundView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .black
        view.alpha = 0.5
        return view
    }()
    
    
    let backView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 15
        return view
    }()
    
    
    let adImage: UIImageView = {
        var image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    
    let buttonsStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.alignment = UIStackViewAlignment.fill
        stack.axis = UILayoutConstraintAxis.vertical
        stack.distribution = .equalSpacing
        stack.spacing = 8
        stack.backgroundColor = UIColor.red
        return stack
    }()
    
    
    let actionButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Open", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(red: 0, green: 0.60, blue: 1, alpha: 1)
        button.layer.cornerRadius = 8
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.titleLabel?.textAlignment = .center
        return button
    }()
    
    
    let dismessButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Exit", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .lightGray
        button.layer.cornerRadius = 8
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.titleLabel?.textAlignment = .center
        return button
    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    
    
    func setupUI(){
        
        // backroundView
        view.addSubview(backroundView)
        backroundView.frame = view.frame
        
        // backView
        view.addSubview(backView)
        backView.topAnchor.constraint(equalTo: view.topAnchor, constant: 80).isActive = true
        backView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
        backView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
        backView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        
        // adImage
        backView.addSubview(adImage)
        adImage.image = UIImage(named: "testImage")
        adImage.topAnchor.constraint(equalTo: backView.topAnchor).isActive = true
        adImage.rightAnchor.constraint(equalTo: backView.rightAnchor).isActive = true
        adImage.leftAnchor.constraint(equalTo: backView.leftAnchor).isActive = true
        adImage.heightAnchor.constraint(equalTo: backView.heightAnchor, multiplier: 0.50).isActive = true
        
        // buttonsStack
        buttonsStack.addArrangedSubview(actionButton)
        buttonsStack.addArrangedSubview(dismessButton)
        backView.addSubview(buttonsStack)
        buttonsStack.topAnchor.constraint(equalTo: backView.topAnchor, constant: 15).isActive = true
        buttonsStack.bottomAnchor.constraint(equalTo: backView.bottomAnchor, constant: -15).isActive = true
        buttonsStack.rightAnchor.constraint(equalTo: backView.rightAnchor, constant: -15).isActive = true
        buttonsStack.leftAnchor.constraint(equalTo: backView.leftAnchor, constant: 15).isActive = true
    }
    
    
    
    
    

}

