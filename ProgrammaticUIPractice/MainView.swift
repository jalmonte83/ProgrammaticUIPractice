//
//  MainView.swift
//  ProgrammaticUIPractice
//
//  Created by Jeffrey Almonte on 1/24/19.
//  Copyright © 2019 Jeffrey Almonte. All rights reserved.
//

import UIKit

protocol MainViewDelegate: AnyObject {
    func typedMessage(message: String)
    func seguePressed()
}
class MainView: UIView {
    weak var delegete:MainViewDelegate?
    lazy var myTextFied: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .green
        textField.addTarget(self, action: #selector(textShown), for: .touchUpInside)
        
        return textField
    }()
    
    lazy var segueButton: UIButton = {
        let button = UIButton()
        button.setTitle("Segue", for: .normal)
        button.backgroundColor = .blue
        button.addTarget(self, action: #selector(seguePressed), for: .touchUpInside)
        return button
    }()
    @objc func seguePressed() {
        delegete?.seguePressed()
    }
    @objc func textShown() {
        
    }
    override init(frame: CGRect) {
        // set yourself up like any UIView
        super.init(frame: UIScreen.main.bounds)
        //our custom set up
        addSubview(segueButton)
        addSubview(myTextFied)
        setConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setConstraints() {
        segueButton.translatesAutoresizingMaskIntoConstraints = false
        myTextFied.translatesAutoresizingMaskIntoConstraints = false
        
        segueButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        segueButton.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        myTextFied.bottomAnchor.constraint(equalTo: segueButton.topAnchor).isActive = true
        myTextFied.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 11).isActive = true
        myTextFied.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -11).isActive = true
    }
}
