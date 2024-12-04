//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateStories()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        let userChoice = sender.currentTitle!
        storyBrain.nextStory(userChoice)
        updateStories()
    }
    
    func updateStories(){
        if storyBrain.storiesNumber + 1 <= storyBrain.stories.count {
            storyLabel.text = storyBrain.getStoryText()
            choice1Button.setTitle(storyBrain.getChoice1Title(), for: .normal)
            choice2Button.setTitle(storyBrain.getChoice2Title(), for: .normal)
        }
    }
}

