//
//  DetailViewController.swift
//  ProgrammaticUIPractice
//
//  Created by Jeffrey Almonte on 1/24/19.
//  Copyright © 2019 Jeffrey Almonte. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    let detailView = DetailView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
self.view.addSubview(detailView)
        self.view.backgroundColor = .white
    }
    
    init (message: String) {
        super.init(nibName: nil, bundle: nil)
        detailView.myLabel.text = message
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
