//
//  ThrillistDetailViewController.swift
//  codepath_wk1lab_fb
//
//  Created by Ariel Liu on 2/3/16.
//  Copyright © 2016 Ariel Liu. All rights reserved.
//

import UIKit

class ThrillistDetailViewController: UIViewController {

    @IBAction func onCommentBarTapped(sender: UITextField) {
        
        print(self.commentBar.center.y)
        
        //self.commentBar.center.y = 100
        UIView.animateWithDuration(0.4, animations: {
            self.commentBar.center.y -= 174
        })
    }
    @IBOutlet weak var commentBar: UIImageView!

    @IBAction func likeClick(sender: UIButton) {
        sender.selected = !sender.selected
    }
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var scollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        scollView.contentSize = imageView.image!.size
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
