//
//  InterfaceController.swift
//  CoinFlip WatchKit Extension
//
//  Created by John Grasser on 2/25/21.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var flipLabel: WKInterfaceLabel!
    override func awake(withContext context: Any?) {
        // Configure interface objects here.
    }
    
    @IBAction func flipButtonPressed() {
        
        self.flipLabel.setText("Flipping the Coin.")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
            
            self.flipLabel.setText("Flipping the Coin..")
            
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
            
            self.flipLabel.setText("Flipping the Coin...")
            
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
            
            let randomFlip = Bool.random()
            
            if(randomFlip)
            {
                self.flipLabel.setText("It's Heads!")
            }else{
                
                self.flipLabel.setText("It's Tails!")
            }
        }
        }
        }
    }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
    }

}
