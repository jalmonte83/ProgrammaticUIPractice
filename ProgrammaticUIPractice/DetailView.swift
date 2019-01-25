//
//  DetailView.swift
//  ProgrammaticUIPractice
//
//  Created by Jeffrey Almonte on 1/24/19.
//  Copyright © 2019 Jeffrey Almonte. All rights reserved.
//

import UIKit

class DetailView: UIView {

    lazy var myLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "Jeffrey"
        label.textAlignment = .center
        return label
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        addSubview(myLabel)
        backgroundColor = .white
        setConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setConstraints() {
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        myLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor).isActive = true
        myLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 11).isActive = true
        myLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11).isActive = true
    }

}
