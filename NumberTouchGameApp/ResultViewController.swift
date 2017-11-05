//
//  ResultViewController.swift
//  NumberTouchGameApp
//
//  Created by Life is Tech on 2017/11/04.
//  Copyright © 2017年 Life is Tech. All rights reserved.
//

import UIKit

var maxLevel :Int = 30
var allKaisuu = 0

class ResultViewController: UIViewController {
    
    @IBOutlet var kaisuuLabel: UILabel!
    @IBOutlet var maxLevelLabel: UILabel!
    @IBOutlet var ansLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (maxLevel > nankai) {
            maxLevel = nankai
        }
        
        if ((maxLevel == nankai) && (allKaisuu != 0)) {
            self.view.backgroundColor = UIColor(red:0, green:255, blue:255, alpha:0.01)
        }
        
        ansLabel.text = "答えは\(globalAnsNum)です。"
        kaisuuLabel.text = "\(nankai)回目で正解しました"
        if (allKaisuu > 0) {
            maxLevelLabel.text = "これまでの最短記録は\(maxLevel)です"
        }
        
        allKaisuu += 1
        nankai = 0
        
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
