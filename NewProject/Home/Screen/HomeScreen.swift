//
//  HomeScreen.swift
//  NewProject
//
//  Created by Pedro Botega on 17/08/24.
//

import UIKit
import SnapKit

class HomeScreen: UIView {
    
    
    lazy var subImageView: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "background 1")
    
        return img
    }()
    
    lazy var perfilImage: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.clipsToBounds = true
        img.image = UIImage(named: "eu")
        img.contentMode = .scaleAspectFill
        img.layer.cornerRadius = 75
        img.layer.borderWidth = 0.8
        img.layer.borderColor = .init(gray: 255/255, alpha: 1.0)
        return img
    }()
    
    lazy var backgroundView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.clipsToBounds = true
        view.layer.cornerRadius = 6.6
        return view
    }()
    
    lazy var backgroundSkillsView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.clipsToBounds = true
        view.layer.cornerRadius = 6.6
        return view
    }()
    
    lazy var backgroundProjectsView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .gray.withAlphaComponent(0.6)
        view.clipsToBounds = true
        view.layer.cornerRadius = 6.6
        return view
    }()
    
    lazy var SkillsButton : UIButton = {
           let button = UIButton(type: .system)
           button.translatesAutoresizingMaskIntoConstraints = false
           button.setTitle("SKILLS", for: .normal)
           button.setTitleColor(.black, for: .normal)
//           button.addTarget(self, action: #selector(tappedLoginButton), for: .touchUpInside)
           button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
           
           button.titleLabel?.textAlignment = .center
           return button
       }()
    
    lazy var ProjectsButton : UIButton = {
           let button = UIButton(type: .system)
           button.translatesAutoresizingMaskIntoConstraints = false
           button.setTitle("PROJETOS", for: .normal)
           button.setTitleColor(.black, for: .normal)
//           button.addTarget(self, action: #selector(tappedLoginButton), for: .touchUpInside)
           button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
           
           button.titleLabel?.textAlignment = .center
           return button
       }()
        
    
    
    func addElements(){
        addSubview(subImageView)
        addSubview(perfilImage)
        addSubview(backgroundView)
        addSubview(backgroundSkillsView)
        backgroundSkillsView.addSubview(SkillsButton)
        backgroundProjectsView.addSubview(ProjectsButton)
        addSubview(backgroundProjectsView)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        subImageConstraints()
        configPerfilImgConstraints()
        backgroundViewConstraints()
        backgroundSkillsViewConstraints()
        backgroundProjectsViewConstraints()
        skillButtonConstraints()
        projectsButtonConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configPerfilImgConstraints(){
        perfilImage.snp.makeConstraints{make in
            make.centerX.equalToSuperview()
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(40)
            make.height.equalTo(150)
            make.width.equalTo(150)
        }
    }
    
    private func subImageConstraints(){
        subImageView.snp.makeConstraints{ make in
            make.left.equalTo(safeAreaLayoutGuide.snp.left).offset(0)
            make.top.equalTo(snp.top).offset(0)
            make.right.equalTo(safeAreaLayoutGuide.snp.right).offset(0)
            make.bottom.equalTo(snp.bottom).offset(0)
            }
        }
    private func backgroundViewConstraints(){
        backgroundView.snp.makeConstraints{ make in
            make.left.equalTo(safeAreaLayoutGuide.snp.left).offset(15)
            make.right.equalTo(safeAreaLayoutGuide.snp.right).inset(15)
            make.top.equalTo(perfilImage.snp.bottom).offset(30)
            make.height.equalTo(300)
          
        }
    }
    private func backgroundSkillsViewConstraints(){
        backgroundSkillsView.snp.makeConstraints{ make in
            make.left.equalTo(safeAreaLayoutGuide.snp.left).offset(24)
            make.right.equalTo(safeAreaLayoutGuide.snp.right).inset(24)
            make.top.equalTo(backgroundView.snp.bottom).offset(25)
            make.height.equalTo(50)
          
        }
    }
    
    
    
    private func backgroundProjectsViewConstraints(){
        backgroundProjectsView.snp.makeConstraints{ make in
            make.left.equalTo(safeAreaLayoutGuide.snp.left).offset(24)
            make.right.equalTo(safeAreaLayoutGuide.snp.right).inset(24)
            make.top.equalTo(backgroundSkillsView.snp.bottom).offset(15)
            make.height.equalTo(50)
          
        }
    }
    
    private func skillButtonConstraints(){
        SkillsButton.snp.makeConstraints {make in
            make.centerX.equalTo(backgroundSkillsView.snp.centerX)
            make.centerY.equalTo(backgroundSkillsView.snp.centerY)
            
        }
    }
    private func projectsButtonConstraints(){
        ProjectsButton.snp.makeConstraints {make in
            make.centerX.equalTo(backgroundProjectsView.snp.centerX)
            make.centerY.equalTo(backgroundProjectsView.snp.centerY)
            
        }
    }
        
   
    
}
