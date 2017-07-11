//
//  ViewController.swift
//  DesignPattern
//
//  Created by 蔡鈞 on 2017/7/11.
//  Copyright © 2017年 蔡鈞. All rights reserved.
//

import UIKit


// View
class ViewController: UIViewController , GreetingView {
    
    
    @IBOutlet weak var lbTitle: UILabel!
    
    @IBAction func onclicl(_ sender: Any) {
        self.presenter?.showGreeting()
    }
    
    
    
    var presenter : GreetingPresenter? = nil
    var model : Person? = nil
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Presenter initialize
        // Binding View and Model
        model = Person(firstName: "David", lastName: "Blaine")
        presenter = GreetingPresenter(view: self, person: model!)
    }
    
    
    // presenter update view will use this function
    func setGreeting(greeting: String) {
        self.lbTitle.text = greeting
    }
    
    
}

