//
//  InitialView.swift
//  EverythingIsPeachy
//
//  Created by Tanya Burke on 3/17/20.
//  Copyright © 2020 Tanya Burke. All rights reserved.
//

import UIKit

class InitialView: UIView {

     public lazy var logoGifImageView: UIImageView = {
         let gifImage =  UIImageView()
            gifImage.loadGif(name: "peachy")
        gifImage.backgroundColor = .systemBackground
            gifImage.contentMode = .scaleAspectFill
            gifImage.animationDuration = 2.0
                return gifImage
            }()
        
      
        
            override init(frame: CGRect) {
                super.init(frame: UIScreen.main.bounds)
                commonInit()
            }
            
            required init?(coder: NSCoder) {
                super.init(coder: coder)
                commonInit()
                
            }

        private func commonInit(){
            loadingGif()
           
        }
        

            
            private func loadingGif() {
                addSubview(logoGifImageView)
                logoGifImageView.translatesAutoresizingMaskIntoConstraints = false
                logoGifImageView.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
                logoGifImageView.bottomAnchor.constraint(equalTo:bottomAnchor, constant: 0).isActive = true
                logoGifImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: -100).isActive = true
                logoGifImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 100).isActive = true
            }
        
      
    }

