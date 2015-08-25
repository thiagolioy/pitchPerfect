//
//  RecordSoundsViewController.swift
//  pitchPerfect
//
//  Created by Thiago Lioy on 8/24/15.
//  Copyright (c) 2015 Thiago Lioy. All rights reserved.
//

import UIKit

class RecordSoundsViewController: UIViewController {

    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var recordingMessage: UILabel!
    @IBOutlet weak var recordingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

    }

    @IBAction func startRecording() {
        recordingButton.enabled = false;
        recordingMessage.hidden = false;
        stopButton.enabled = true;
        
        
    }

    @IBAction func stopRecording() {
        recordingButton.enabled = true;
        recordingMessage.hidden = true;
        stopButton.enabled = false;
        
    self.performSegueWithIdentifier("showPlaySoundsVC", sender: nil)
    }
    
}
