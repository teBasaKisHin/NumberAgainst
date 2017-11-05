//
//  ViewController.swift
//  NumberTouchGameApp
//
//  Created by Life is Tech on 2017/11/04.
//  Copyright © 2017年 Life is Tech. All rights reserved.
//

import UIKit

var nankai: Int = 1
// 最大の数
let maxNum = 20
// 最小の数
let minNum = 0

var globalAnsNum: Int = 0

class ViewController: UIViewController, UITextFieldDelegate{
    
    // 正解の数より小さい数を入れる
    var underAns: Int = 0
    // 正解の数より大きい数を入れる
    var upperAns: Int = 20
    
    // 入力された数を入れる
    var inputNum: Int = 10

    // 正解の数を乱数を使って作り出す
    let ansNum : Int = Int(arc4random_uniform(21))
    
    // 範囲のラベル
    @IBOutlet var hanniLabel: UILabel!
    @IBOutlet var ansLabel: UILabel!
    
    // 決定ボタン
    @IBAction func ketteiBtn() {
        
        if (inputNum > ansNum) && (inputNum <= upperAns) {
            upperAns = inputNum - 1
        } else if (inputNum < ansNum) && (inputNum >= underAns ) {
            underAns = inputNum + 1
        } else if (inputNum == ansNum) {
            globalAnsNum = ansNum
            let next = storyboard!.instantiateViewController(withIdentifier: "ansStory")
            self.present(next,animated: true, completion: nil)
        }
        
        nankai += 1
        
        if(upperAns == underAns) {
            hanniLabel.text = "答えは\(upperAns)だね"
        } else {
            hanniLabel.text = "\(upperAns)から\(underAns)の数字を入力してね"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        hanniLabel.text = "\(maxNum)から\(minNum)を入力してください。"
        ansLabel.text = String(inputNum)
        hanniLabel.text = "\(upperAns)から\(underAns)の数字を入力してね"

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func plusBtn() {
        if inputNum < maxNum {
            inputNum += 1
        }
        ansLabel.text = String(inputNum)
    }
    
    @IBAction func minusBtn() {
        if inputNum > minNum {
            inputNum -= 1
        }
        ansLabel.text = String(inputNum)
    }
    
//    func performSegueToResult() {
//        performSegue(withIdentifier: "question2Result", sender: ansNum)
//    }
    
//    // このメソッドで渡す
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//
//        if segue.identifier == "que2resultSegue" {
//
//            let resultViewController:ResultViewController = segue.destinationViewController as ResultViewController
//
//            // 変数:遷移先ViewController型 = segue.destinationViewController as 遷移先ViewController型
//            // segue.destinationViewController は遷移先のViewController
//
//            resultViewController.sendNum = self.ansNum
//        }
//
//    }

}
