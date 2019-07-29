//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var LabelText: UILabel!
    
    @IBOutlet weak var Card1Outlet: UIButton!
    
    @IBOutlet weak var Card2Outlet: UIButton!
    
    @IBOutlet weak var Card3Outlet: UIButton!
    

    @IBOutlet var AllCards: [UIButton]!
    
   
    
    
    @IBAction func NewGame(_ sender: UIButton) {
        
        self.LabelText.text = "Choose a card, any card!"
        
        for i in AllCards!{
            i.setImage(#imageLiteral(resourceName: "cardBack.png"), for: UIControl.State.normal)
       
            for i in AllCards! {
                i.tag = 0
            }
            
        AllCards!.randomElement()?.tag = 1
            
            Card1Outlet.isEnabled = true
            Card2Outlet.isEnabled = true
            Card3Outlet.isEnabled = true
        }
        
    }
    
    
    @IBAction func Card1(_ sender: UIButton) {
        if self.Card1Outlet.tag == 1 {
            self.Card1Outlet.setImage( #imageLiteral(resourceName: "cardAce.png"), for: UIControl.State.normal)
            self.LabelText.text = "Congratulations, you win! Play again?"
            
            Card1Outlet.isEnabled = false
            Card2Outlet.isEnabled = false
            Card3Outlet.isEnabled = false
            
        } else if self.Card2Outlet.tag == 1 {
            self.Card1Outlet.setImage(#imageLiteral(resourceName: "cardJoker.jpg"), for: UIControl.State.normal)
            self.Card2Outlet.setImage( #imageLiteral(resourceName: "cardAce.png"), for: UIControl.State.normal)
            self.LabelText.text = "Sorry, you lose! Play again?"
            
            Card1Outlet.isEnabled = false
            Card2Outlet.isEnabled = false
            Card3Outlet.isEnabled = false
            
        } else if self.Card3Outlet.tag == 1 {
            self.Card1Outlet.setImage(#imageLiteral(resourceName: "cardJoker.jpg"), for: UIControl.State.normal)
            self.Card3Outlet.setImage( #imageLiteral(resourceName: "cardAce.png"), for: UIControl.State.normal)
            self.LabelText.text = "Sorry, you lose! Play again?"
            
            Card1Outlet.isEnabled = false
            Card2Outlet.isEnabled = false
            Card3Outlet.isEnabled = false
    }
    }
    
    @IBAction func Card2(_ sender: UIButton) {
        if self.Card2Outlet.tag == 1 {
            self.Card2Outlet.setImage( #imageLiteral(resourceName: "cardAce.png"), for: UIControl.State.normal)
            self.LabelText.text = "Congratulations, you win! Play again?"
            
            Card1Outlet.isEnabled = false
            Card2Outlet.isEnabled = false
            Card3Outlet.isEnabled = false
            
        } else if self.Card1Outlet.tag == 1 {
            self.Card2Outlet.setImage(#imageLiteral(resourceName: "cardJoker.jpg"), for: UIControl.State.normal)
            self.Card1Outlet.setImage( #imageLiteral(resourceName: "cardAce.png"), for: UIControl.State.normal)
            self.LabelText.text = "Sorry, you lose! Play again?"
            
            Card1Outlet.isEnabled = false
            Card2Outlet.isEnabled = false
            Card3Outlet.isEnabled = false
            
        } else if self.Card3Outlet.tag == 1 {
            self.Card2Outlet.setImage(#imageLiteral(resourceName: "cardJoker.jpg"), for: UIControl.State.normal)
            self.Card3Outlet.setImage( #imageLiteral(resourceName: "cardAce.png"), for: UIControl.State.normal)
            self.LabelText.text = "Sorry, you lose! Play again?"
            
            Card1Outlet.isEnabled = false
            Card2Outlet.isEnabled = false
            Card3Outlet.isEnabled = false
        }
        
       
    }
    
    @IBAction func Card3(_ sender: UIButton) {
        if self.Card3Outlet.tag == 1 {
            self.Card3Outlet.setImage( #imageLiteral(resourceName: "cardAce.png"), for: UIControl.State.normal)
            self.LabelText.text = "Congratulations, you win! Play again?"
            
            Card1Outlet.isEnabled = false
            Card2Outlet.isEnabled = false
            Card3Outlet.isEnabled = false
            
        } else if self.Card2Outlet.tag == 1 {
            self.Card3Outlet.setImage(#imageLiteral(resourceName: "cardJoker.jpg"), for: UIControl.State.normal)
            self.Card2Outlet.setImage( #imageLiteral(resourceName: "cardAce.png"), for: UIControl.State.normal)
            self.LabelText.text = "Sorry, you lose! Play again?"
            
            Card1Outlet.isEnabled = false
            Card2Outlet.isEnabled = false
            Card3Outlet.isEnabled = false
            
        } else if self.Card1Outlet.tag == 1 {
            self.Card3Outlet.setImage(#imageLiteral(resourceName: "cardJoker.jpg"), for: UIControl.State.normal)
            self.Card1Outlet.setImage( #imageLiteral(resourceName: "cardAce.png"), for: UIControl.State.normal)
            self.LabelText.text = "Sorry, you lose! Play again?"
            
            Card1Outlet.isEnabled = false
            Card2Outlet.isEnabled = false
            Card3Outlet.isEnabled = false
        }
        
      
    
        
    }
    
    

    
    
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

    

}

