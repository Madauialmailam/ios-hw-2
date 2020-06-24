//
//  ViewController.swift
//  iOSHomework2
//
//  Created by Bodour Alrashidi on 6/7/20.
//  Copyright © 2020 Bodour Alrashidi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var membersNamesArray  : [String] = [""]
    
    var convertToLetter = true
    @IBOutlet weak var secretSocietyNameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBAction func addMember(_ sender: Any) {
        
        let member = nameTextField.text!
        
        // MARK: -   1️⃣ تحت الخط membersNamesArray إلي المصفوفه memberقم بإضافة المتغير
         
        
        
        // MARK: -   النهاية
        
        nameTextField.text = ""
    }
    
    
    
    
    @IBAction func letterButton(_ sender: Any) {
        
        // MARK: -  4️⃣ functionCall داخل المتغير  secretNameLetter قم باستدعاء الدالة
        
        let functionCall = secretNameLetter(membernamearray: membersNamesArray)

        
        // MARK: -   النهاية
        
        
        secretSocietyNameLabel.text =  functionCall
    }
    
    
    
    
    @IBAction func emojiButton(_ sender: Any) {
        
        
        
        // MARK: -  5️⃣ functionCall داخل المتغير  secretNameEmoji قم باستدعاء الدالة
        
        let functionCall = scretNameEmoji(membersNamesArray: membersNamesArray)
        
        // MARK: -   النهاية
        
        secretSocietyNameLabel.text =  functionCall
        
        
    }
    
    
    
    
    // MARK: - 2️⃣ تحت هذا الخط secretNameLetter قم بكتابة الداله
    func secretNameLetter (membernamearray : [String])->String
    {
        var firstLetterArray : [String] = []
        for member in membersNamesArray
        {
            firstLetterArray.append("member.prefix(1)")
            
        }
    membersNamesArray.removeAll()
        return firstLetterArray.joined().uppercased()
}
    

    // MARK: -   النهاية
    
    
    
    
    
    // MARK: - 3️⃣ تحت هذا الخط secretNameEmoji قم بكتابة الداله
    func scretNameEmoji(membersNamesArray:[String]) -> String
    {
        let emoijDictionaryEnglish  = [ "A":"😂","B":"😀","C":"😃","D":"🤣","E":"🥰","F":"😡","G":"🤪","H":"😓","I":"🥶","J":"😇","K":"🤭","L":"😡","M":"🤮","N":"😷","O":"😶","P":"😰","Q":"🙄","R":"😮","S":"🤐","T":"🥵","U":"🤯","V":"😖","W":"😳","X":"🤗","Y":"🤠","Z":"😻"]
        var  emojiLetterArray : [String] = []
        for member in membersNamesArray
        {
            let firstLetter = String(member.prefix(1))
            for (letter,emojis) in emoijDictionaryEnglish
                
            {
                if letter == firstLetter{
            
                    emojiLetterArray.append(emojis)
                }
        }
                    
          
            }
            self.membersNamesArray.removeAll()
        return emojiLetterArray.joined()
    }
        // MARK: -   النهاية
    
    




}

