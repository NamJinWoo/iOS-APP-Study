//
//  ViewController.swift
//  imageViewer
//
//  Created by 남진우 on 11/07/2018.
//  Copyright © 2018 남진우. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var imageName = ["a.jpeg","b.png"]
    var index = 0
    
    @IBOutlet var imgView: UIImageView!
    
    @IBOutlet var prvBtn: UIButton!
    @IBOutlet var nextBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imgView.image = UIImage(named: imageName[0])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func prvButton(_ sender: UIButton) {
        if(index != imageName.startIndex){
            index = index - 1
            imgView.image = UIImage(named: imageName[index])
        }else{
            index = imageName.startIndex
        }
    }
    @IBAction func nextButton(_ sender: UIButton) {
        if(index != imageName.count-1){
            index = index + 1
            imgView.image = UIImage(named: imageName[index])
        }
        else{
            index = imageName.count-1
        }
    }
    
}

