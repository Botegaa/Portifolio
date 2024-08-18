//
//  ViewController.swift
//  NewProject
//
//  Created by Pedro Botega on 17/08/24.
//

import UIKit

class HomeVC: UIViewController {
    private var homeScreen: HomeScreen?


    override func  loadView() {
        homeScreen = HomeScreen()
        view = homeScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.10 , green: 0.10, blue: 0.10, alpha: 1.0)
    }


}

