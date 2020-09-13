//
//  ViewController.swift
//  ItsuDareGame
//
//  Created by risako takeya on 2020/09/08.
//  Copyright © 2020 com.litech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var itsuLabel: UILabel!
    @IBOutlet var dokodeLabel: UILabel!
    @IBOutlet var daregaLabel: UILabel!
    @IBOutlet var doshitaLabel: UILabel!
    
    let itsuArray: [String] = ["一年前","1週間前","昨日","今日"]
    let dokodeArray: [String] = ["山の上で","アメリカで","学校で","クラスで"]
    let daregaArray: [String] = ["僕が","大統領が","先生が","友達が"]
    let doshitaArray: [String] = ["叫んだ","演説した","怒った","誘った"]
    
    var index: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func change(){
        itsuLabel.text = itsuArray[index]
        dokodeLabel.text = dokodeArray[index]
        daregaLabel.text = daregaArray[index]
        doshitaLabel.text = doshitaArray[index]
        
        index = index + 1
        
        if index > 3{
            index = 0
        }
        
    }
    
    @IBAction func reset(){
        itsuLabel.text = "ーーー"
        dokodeLabel.text = "ーーー"
        daregaLabel.text = "ーーー"
        doshitaLabel.text = "ーーー"
        
        index = 0
        
    }
    
    @IBAction func random(){
        let itsuIndex = Int.random(in: 0...3)
        let dokodeIndex = Int.random(in: 0...3)
        let daregaIndex = Int.random(in: 0...3)
        let doshitaIndex = Int.random(in: 0...3)
        
        print("いつ: \(itsuIndex)")
        print("どこで: \(dokodeIndex)")
        print("だれが: \(daregaIndex)")
        print("どうした: \(doshitaIndex)")
        
        itsuLabel.text = itsuArray[itsuIndex]
        dokodeLabel.text = dokodeArray[dokodeIndex]
        daregaLabel.text = daregaArray[daregaIndex]
        doshitaLabel.text = doshitaArray[doshitaIndex]
        
    }


}

