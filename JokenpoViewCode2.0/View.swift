//
//  ViewController.swift
//  JokenpoViewCode2.0
//
//  Created by user208023 on 7/6/22.
//

import UIKit

class View: ViewElements, ViewModel {


    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubviews([titleLabel, buttonsStackView, playStackView])
        
        stoneButton.addTarget(self, action: #selector(stoneButtonAction), for: .touchUpInside)
        
        paperButton.addTarget(self, action: #selector(paperButtonAction), for: .touchUpInside)
        
        scissorsButton.addTarget(self, action: #selector(scissorsButtonAction), for: .touchUpInside)
        
        view.backgroundColor = .purple
        
        view.addConstraints([
            
            titleLabel.constraintToItemInside(.top, view.safeAreaLayoutGuide),
            titleLabel.constraintToItemInside(.centerX, view),
            
            buttonsStackView.constraintToItemOutside(.top, titleLabel, 20),
            buttonsStackView.constraintToItemInside(.centerX, view),
            
            playStackView.constraintToItemOutside(.top, buttonsStackView, 20),
            playStackView.constraintToItemInside(.centerX, buttonsStackView),
            
            
            stoneButton.heightAnchor.constraint(equalToConstant: 64),
            stoneButton.widthAnchor.constraint(equalToConstant: 64),
            paperButton.heightAnchor.constraint(equalToConstant: 64),
            paperButton.widthAnchor.constraint(equalToConstant: 64),
            scissorsButton.heightAnchor.constraint(equalToConstant: 64),
            scissorsButton.widthAnchor.constraint(equalToConstant: 64),
            
            playerActionEffect.heightAnchor.constraint(equalToConstant: 128),
            playerActionEffect.widthAnchor.constraint(equalToConstant: 128),
            
            cpuActionEffect.heightAnchor.constraint(equalToConstant: 128),
            cpuActionEffect.widthAnchor.constraint(equalToConstant: 128),
        ])
        
    }
    
    @objc func stoneButtonAction() {
        
        playerActionEffect.image = UIImage(named: "Pedra")
    }
    
    @objc func paperButtonAction() {
        
        playerActionEffect.image = UIImage(named: "Papel")
    }
    
    @objc func scissorsButtonAction() {
        
        playerActionEffect.image = UIImage(named: "Tesoura")
    }
}

