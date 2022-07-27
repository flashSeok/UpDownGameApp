//
//  ViewController.swift
//  UpDownGameApp
//
//  Created by 김현석 on 2022/07/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    // 컴퓨터가 랜덤으로 숫자 선택.
    var comNumber = Int.random(in: 1...10)
    
    // 내 선택 저장.
    var myNumber = 1
    
    
    // 앱의 화면에 들어오면 가장 먼저 실행되는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1) 메인 레이블에 "선택하세요" 설정
        mainLabel.text = "선택하세요"
        
        // 2) 숫자 레이블은 "" 설정
        numberLabel.text = ""
        
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        
        // 1) 버튼의 숫자를 가져와야함.
        guard let numString = sender.currentTitle else { return }
        
        // 2) 숫자 레이블이 변하도록(숫자에 따라) 설정
        numberLabel.text = numString
        
        // 3) 선택한 숫자를 변수에 저장.(선택사항)
        guard let num = Int(numString) else { return }
        myNumber = num
    }
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        
        // 위에 42번째줄을 사용 안할 때 다른 방 법.
        // 숫자 레이블에 있는 문자열 가져와서 사용
        /*
        guard let myNumString = numberLabel.text else { return }
        guard let myNumber = Int(myNumString) else { return }
         */
        
        
        // 1) 컴퓨터의 숫자와 내가 선택한 숫자를 비교해서 UP/DOWN/BINGO (메인 레이블)에 저장.
        if myNumber < comNumber {
            mainLabel.text = "UP"
        } else if myNumber > comNumber {
            mainLabel.text = "DOWN"
        } else {
            mainLabel.text = "BINGO😎"
        }
    }
    
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        // 1) 메인 레이블이 "선택하세요"
        mainLabel.text = "선택하세요"
        
        // 2) 숫자 레이블이 ""
        numberLabel.text = ""
        
        // 3) 컴퓨터의 랜덤 숫자를 다시 선택하게
        comNumber = Int.random(in: 1...10)
        
        
    }
    
}

