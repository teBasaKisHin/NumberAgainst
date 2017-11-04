//
//  ViewController.swift
//  NumberTouchGameApp
//
//  Created by Life is Tech on 2017/11/04.
//  Copyright © 2017年 Life is Tech. All rights reserved.
//

import UIKit

var nankai: Int = 1

class ViewController: UIViewController, UITextFieldDelegate{
    
    // 正解の数を乱数を使って作り出す
    let ansNum = arc4random_uniform(10)
    // 正解の数より小さい数を入れる
    var underAns: Int = 0
    // 正解の数より大きい数を入れる
    var upperAns: Int = 10
    
    var inputNum: Int = 5
    
    // 範囲のラベル
    @IBOutlet var hanniLabel: UILabel!
    @IBOutlet var ansLabel: UILabel!
    
    // 決定ボタン
    @IBAction func ketteiBtn() {
        if (inputNum > ansNum) && (inputNum < upperAns) {
            upperAns = inputNum
        } else if (inputNum < ansNum) && (inputNum > underAns ) {
            underAns = inputNum
        } else if (inputNum == ansNum) {
            let next = storyboard!.instantiateViewController(withIdentifier: "ansStory")
            self.present(next,animated: true, completion: nil)
        }
        nankai += 1
        hanniLabel.text = "\(upperAns)から\(underAns)の数字を入力してね"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func plusBtn() {
        if inputNum < 10 {
            inputNum += 1
        }
        ansLabel.text = String(inputNum)
    }
    
    @IBAction func minusBtn() {
        if inputNum > 0 {
            inputNum -= 1
        }
        ansLabel.text = String(inputNum)
    }

}

