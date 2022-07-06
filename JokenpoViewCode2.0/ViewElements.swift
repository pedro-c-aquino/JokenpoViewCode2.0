//
//  ViewElements.swift
//  JokenpoViewCode2.0
//
//  Created by user208023 on 7/6/22.
//

import UIKit

class ViewElements: UIViewController {
    
    let titleLabel: UILabel = {
        
        let titleLabel = UILabel()
        titleLabel.font = .systemFont(ofSize: 40, weight: .bold)
        titleLabel.textColor = .white
        titleLabel.text = "Jokenpo"
        return titleLabel
    }()
    
    let stoneButton: UIButton = {
       
        let stoneButton = UIButton()
        stoneButton.setImage(UIImage(named: "Pedra"), for: .normal)
        return stoneButton
    }()
    
    let paperButton: UIButton = {
        
       let paperButton = UIButton()
        paperButton.setImage(UIImage(named: "Papel"), for: .normal)
        return paperButton
    }()
    
    let scissorsButton: UIButton = {
        
        let scissorsButton = UIButton()
        scissorsButton.setImage(UIImage(named: "Tesoura"), for: .normal)
        return scissorsButton
    }()
    
    lazy var buttonsStackView: UIStackView = {
        
        let buttonsStackView = UIStackView(arrangedSubviews: [stoneButton, paperButton, scissorsButton])
        buttonsStackView.backgroundColor = .white
        
        return buttonsStackView
    }()
    
    let playerActionEffect: UIImageView = {
        
        let actionEffect = UIImageView()
        
        return actionEffect
    }()
    
    let vsLabel: UILabel = {
        
        let vsLabel = UILabel()
        vsLabel.text = "VS"
        vsLabel.font = .systemFont(ofSize: 25, weight: .bold)
        vsLabel.textColor = .white
        vsLabel.textAlignment = .center
        return vsLabel
    }()
    
    let cpuActionEffect: UIImageView = {
        
        let cpuActionEffect = UIImageView()
        cpuActionEffect.image = UIImage(named: "Tesoura")
        return cpuActionEffect
    }()
    
    lazy var  playStackView: UIStackView = {
        
        let playStackView = UIStackView(arrangedSubviews: [playerActionEffect, vsLabel, cpuActionEffect])
        playStackView.axis = .vertical
        playStackView.spacing = 20
        return playStackView
    }()
}
