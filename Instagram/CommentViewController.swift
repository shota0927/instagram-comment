//
//  CommentViewController.swift
//  Instagram
//
//  Created by 沼昇太 on 5/4/18.
//  Copyright © 2018 沼昇太. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class CommentViewController: UIViewController {
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var commentTextField: UITextField!
    
    var postData:PostData?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func sendButtonPressed(_ sender: UIButton) {
        let PostRef = Database.database().reference().child(Const.PostPath).child((postData?.id)!)
        let comments = ["comments": commentTextField.text,"commentName": postData?.name]
        PostRef.updateChildValues(comments)
        
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    

}
