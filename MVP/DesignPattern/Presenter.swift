//
//  mvp.swift
//  DesignPattern
//
//  Created by 蔡鈞 on 2017/7/11.
//  Copyright © 2017年 蔡鈞. All rights reserved.
//

import UIKit



// View procotol
protocol GreetingView: class {
    func setGreeting(greeting: String)
}

// Presenter protocol
protocol GreetingViewPresenter {
    init(view: GreetingView, person: Person)
    func showGreeting()
}




// Presenter
class GreetingPresenter : GreetingViewPresenter {
    
    unowned let view: GreetingView
    let person: Person
    
    required init(view: GreetingView, person: Person) {
        self.view = view
        self.person = person
    }
    
    func showGreeting() {
        let greeting = "Hello" + " " + self.person.firstName + " " + self.person.lastName
        self.view.setGreeting(greeting: greeting)
    }
}
















