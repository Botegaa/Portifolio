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
        view.backgroundColor = .white
    }


}

