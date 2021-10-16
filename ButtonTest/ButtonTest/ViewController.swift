//
//  ViewController.swift
//  ButtonTest
//
//  Created by RMIT Online on 9/1/18.
//  Copyright © 2018 RMIT Online. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //constants
    let normalButtonColor = UIColor.black
    let disabledButtonColor = UIColor.lightGray
    let selectedButtonColor = UIColor.red
    let highlightedColor = UIColor.orange

    //UI Outlets
    
    //The demo button we'll configure via code
    @IBOutlet weak var myButton: UIButton!
    
    //A button to allow us to enable and disable myButton
    @IBOutlet weak var enableDisableButton: UIButton!

    //A button to allow us to select and deselect myButton
    @IBOutlet weak var selectDeselectButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        configureButtons()
    }

    //MARK: User actions
    
    /// User tapped enable/disable
    ///
    /// - Parameter sender: enable/disable button
    @IBAction func disableEnableButtonTapped(_ sender: UIButton) {
        //toggle between enabled and disabled so we can see changes in button state
        myButton.isEnabled = !myButton.isEnabled
        
        //refresh button title
        refreshEnableDisableButtonTitle()
    }
    
    
    /// User tapped select/deselect
    ///
    /// - Parameter sender: select/deselect button
    @IBAction func selectDeselectButtonTapped(_ sender: UIButton) {
        //toggle between selected and deselected so we can see changes in button state
        myButton.isSelected = !myButton.isSelected
        
        //refresh button title
        refreshSelectDeselectButtonTtile()
    }

    
    //MARK: Private methods
    
    
    /// Programmatic configuration of myButton
    fileprivate func configureButtons() {
        myButton.setTitleColor(normalButtonColor, for: .normal)
        myButton.setTitle("This button is normal and enabled", for: .normal)
        myButton.setTitleColor(selectedButtonColor, for: .selected)
        myButton.setTitle("This button is selected", for: .selected)
        
        myButton.setTitleColor(highlightedColor, for: .highlighted)
        myButton.setTitle("This button is highlighted", for: .highlighted)

        myButton.setTitleColor(disabledButtonColor, for: .disabled)
        myButton.setTitle("This button is disabled", for: .disabled)
        //TODO: - Try comment out lines 63-72 above and implement via Main.storyboard instead

        //We set initial state for supporting buttons
        refreshEnableDisableButtonTitle()
        refreshSelectDeselectButtonTtile()
    }

    
    /// Utility method for refreshing the enable/disable button title
    fileprivate func refreshEnableDisableButtonTitle() {
        enableDisableButton.setTitle(myButton.isEnabled ? "Disable" : "Enable", for: .normal)
    }

    /// Utility method for refreshing the select/deselect button title
    fileprivate func refreshSelectDeselectButtonTtile() {
        selectDeselectButton.setTitle(myButton.isSelected ? "Deselect" : "Select", for: .normal)
    }

}

