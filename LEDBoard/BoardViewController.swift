//
//  BoardViewController.swift
//  LEDBoard
//
//  Created by 신승아 on 2022/07/06.
//

import UIKit

class BoardViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var textColorButton: UIButton!
    @IBOutlet weak var sendButton: UIButton!
    
    @IBOutlet weak var upBar: UIView!
    @IBOutlet var buttonList: [UIButton]!
    @IBOutlet weak var resultLabel: UILabel!
    
    // 자기가 언제 불릴지 알고 있음
    override func viewDidLoad() {
        super.viewDidLoad()

        designsendButton(sendButton, buttonTitle: "전송", HighlightedTitle: "받음")
        designsendButton(textColorButton, buttonTitle: "색깔", HighlightedTitle: "변경")
        sendButtonClicked(sendButton)
        designTextField()
        self.userTextField.delegate = self
    }
    
    // 1. return 누르면 키보드 내려가는 기능
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == self.userTextField {
            view.endEditing(true)
        }
        return true
    }
    
    // 함수
    // 함수끼리의 순서는 상관없음
    func designTextField() {
        userTextField.placeholder = "내용을 작성해주세요"
        userTextField.text = "안녕하세요"
        userTextField.keyboardType = .emailAddress
    }
    
    // buttonName은 내부 매개변수이자 Parameter
    //buttonOutletVariableName: 외부 매개변수, Argument Label -> 생략 가능
    // 내부 매개변수는 함수 안에서만 사용
    // 외부 매개변수는 함수 밖에서만 사용
    // _ : 와일드카드 식별자
    func designsendButton(_ buttonName: UIButton, buttonTitle: String, HighlightedTitle: String) {
        buttonName.setTitle(buttonTitle, for: .normal)
        buttonName.setTitle(HighlightedTitle, for: .highlighted)
        buttonName.backgroundColor = .yellow
        buttonName.layer.cornerRadius = 8
        buttonName.layer.borderColor = UIColor.black.cgColor
        buttonName.layer.borderWidth = 5
        // 일반적인 버튼의 상태
        buttonName.setTitleColor(.red, for: .normal)
        // 버튼 클릭했을 때 상태
        buttonName.setTitleColor(.blue, for: .highlighted)
    }
    
    func studyOutletCollection() {
        for item in buttonList {
            item.backgroundColor = .blue
            item.layer.cornerRadius = 2
        }
    }
    
    
    
    // 얘네는 자신이 불릴 타이밍을 알고 있음
    @IBAction func sendButtonClicked(_ sender: UIButton) {
        resultLabel.text = userTextField.text
    }
    

    @IBAction func tapGestureClicked(_ sender: UITapGestureRecognizer) {
        // 제스쳐를 설정해준 뷰는 씬 전체를 차지하는 뷰이기때문에 이미 존재하는 뷰 사용
        view.endEditing(true)
        
        // 상단뷰 탭할 때마다 사라졌다 나타났다 하는 기능
        if upBar.alpha == 1 {
            upBar.alpha = 0
        } else {
            upBar.alpha = 1
        }
        
    }
    
    @IBAction func exampleButton1(_ sender: Any) {
        view.endEditing(true)
    }
    
    // 2. return 누르면 키보드 내려가는 기능
    @IBAction func textfieldAction(_ sender: Any) {
        view.endEditing(true)
        
    }
    
}


