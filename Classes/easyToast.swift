//
//  Toast.swift
//  CricksLab
//
//  Created by wajeeh on 3/16/20.
//
//

import Foundation
import UIKit

public extension UIViewController{

    
     func showEasyToast(message: String , backroundColor : UIColor = UIColor.black.withAlphaComponent(0.8), textColor : UIColor = UIColor.white,  delay : Double = 0.2){
        
        DispatchQueue.main.asyncAfter(deadline: .now() + delay ) {

            if let controller = UIApplication.topViewController() {
                
                
                if let viewWithTag = controller.view.viewWithTag(101) {
                    viewWithTag.removeFromSuperview()
                }
                
                let toastContainer = UIView(frame: CGRect())
                toastContainer.backgroundColor = backroundColor.withAlphaComponent(0.8)
                toastContainer.alpha = 0.0
                toastContainer.layer.cornerRadius = 8;
                toastContainer.clipsToBounds  =  true
                toastContainer.tag = 101
                
                let toastLabel = UILabel(frame: CGRect())
                toastLabel.textColor = textColor
                toastLabel.textAlignment = .center;
                toastLabel.font.withSize(10.0)
                toastLabel.text = message
                toastLabel.clipsToBounds  =  true
                toastLabel.numberOfLines = 0
                
                toastContainer.addSubview(toastLabel)
                controller.view.addSubview(toastContainer)
                
                toastLabel.translatesAutoresizingMaskIntoConstraints = false
                toastContainer.translatesAutoresizingMaskIntoConstraints = false
                
                let a1 = NSLayoutConstraint(item: toastLabel, attribute: .leading, relatedBy: .equal, toItem: toastContainer, attribute: .leading, multiplier: 1, constant: 16)
                let a2 = NSLayoutConstraint(item: toastLabel, attribute: .trailing, relatedBy: .equal, toItem: toastContainer, attribute: .trailing, multiplier: 1, constant: -16)
                let a3 = NSLayoutConstraint(item: toastLabel, attribute: .bottom, relatedBy: .equal, toItem: toastContainer, attribute: .bottom, multiplier: 1, constant: -16)
                let a4 = NSLayoutConstraint(item: toastLabel, attribute: .top, relatedBy: .equal, toItem: toastContainer, attribute: .top, multiplier: 1, constant: 16)
                toastContainer.addConstraints([a1, a2, a3, a4])
                
                let c1 = NSLayoutConstraint(item: toastContainer, attribute: .leading, relatedBy: .equal, toItem: controller.view, attribute: .leading, multiplier: 1, constant: 30)
                let c2 = NSLayoutConstraint(item: toastContainer, attribute: .trailing, relatedBy: .equal, toItem: controller.view, attribute: .trailing, multiplier: 1, constant: -30)
                let c3 = NSLayoutConstraint(item: toastContainer, attribute: .bottom, relatedBy: .equal, toItem: controller.view, attribute: .bottom, multiplier: 1, constant: -100)
                controller.view.addConstraints([c1, c2, c3])
                
                UIView.animate(withDuration: 0.5, delay: 0.0, options: .curveEaseIn, animations: {
                    toastContainer.alpha = 1.0
                }, completion: { _ in
                    UIView.animate(withDuration: 0.5, delay: 5, options: .curveEaseOut, animations: {
                        toastContainer.alpha = 0.0
                    }, completion: {_ in
                        toastContainer.removeFromSuperview()
                    })
                })
            }
            

            
        } // controller
        
    }// delay
    
    
    
    
     func showEeasySnackBar(message: String , backroundColor : UIColor = UIColor.black.withAlphaComponent(0.8) , textColor : UIColor = UIColor.white,  delay : Double = 0.2){
        
        DispatchQueue.main.asyncAfter(deadline: .now() + delay ) {
            
            if let controller = UIApplication.topViewController() {
                
                if let viewWithTag = controller.view.viewWithTag(102) {
                    viewWithTag.removeFromSuperview()
                }
                
                let toastContainer = UIView(frame: CGRect())
                
                toastContainer.backgroundColor = backroundColor.withAlphaComponent(0.8)
                toastContainer.alpha = 0.0
                toastContainer.layer.cornerRadius = 0;
                toastContainer.clipsToBounds  =  true
                toastContainer.tag = 102
                
                let toastLabel = UILabel(frame: CGRect())
                toastLabel.textColor = textColor
                toastLabel.textAlignment = .center;
                toastLabel.font.withSize(12.0)
                toastLabel.text = message
                toastLabel.clipsToBounds  =  true
                toastLabel.numberOfLines = 5
                
                toastContainer.addSubview(toastLabel)
                controller.view.addSubview(toastContainer)
                
                toastLabel.translatesAutoresizingMaskIntoConstraints = false
                toastContainer.translatesAutoresizingMaskIntoConstraints = false
                
                let a1 = NSLayoutConstraint(item: toastLabel, attribute: .leading, relatedBy: .equal, toItem: toastContainer, attribute: .leading, multiplier: 1, constant: 15)
                let a2 = NSLayoutConstraint(item: toastLabel, attribute: .trailing, relatedBy: .equal, toItem: toastContainer, attribute: .trailing, multiplier: 1, constant: -15)
                let a3 = NSLayoutConstraint(item: toastLabel, attribute: .bottom, relatedBy: .equal, toItem: toastContainer, attribute: .bottom, multiplier: 1, constant: -15)
                let a4 = NSLayoutConstraint(item: toastLabel, attribute: .top, relatedBy: .equal, toItem: toastContainer, attribute: .top, multiplier: 1, constant: 15)
                toastContainer.addConstraints([a1, a2, a3, a4])
                
                let c1 = NSLayoutConstraint(item: toastContainer, attribute: .leading, relatedBy: .equal, toItem: controller.view, attribute: .leading, multiplier: 1, constant: 0)
                let c2 = NSLayoutConstraint(item: toastContainer, attribute: .trailing, relatedBy: .equal, toItem: controller.view, attribute: .trailing, multiplier: 1, constant: 0)
                
                
                var topMargin = 0
                if #available(iOS 11.0, *) {
                    if UIDevice.current.hasNotch {
                        //... consider notch
                        topMargin = 44
                    }
                }
                
                let c3 = NSLayoutConstraint(item: toastContainer, attribute: .top, relatedBy: .equal, toItem: controller.view, attribute: .top, multiplier: 1, constant: CGFloat(topMargin))
                
                
                controller.view.addConstraints([c1, c2, c3])
                
                UIView.animate(withDuration: 0.5, delay: 0.0, options: .curveEaseIn, animations: {
                    toastContainer.alpha = 1.0
                }, completion: { _ in
                    UIView.animate(withDuration: 0.5, delay: 5, options: .curveEaseOut, animations: {
                        toastContainer.alpha = 0.0
                    }, completion: {_ in
                        toastContainer.removeFromSuperview()
                    })
                })
            }
            
            
        } // controller
        
    }// delay
    
}


