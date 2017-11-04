//
//  ResultViewController.swift
//  NumberTouchGameApp
//
//  Created by Life is Tech on 2017/11/04.
//  Copyright © 2017年 Life is Tech. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var kaisuuLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        kaisuuLabel.text = "\(nankai)回目で正解しました"
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
