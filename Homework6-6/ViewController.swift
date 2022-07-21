//
//  ViewController.swift
//  Homework6-6
//
//  Created by WeiFangChou on 2022/7/21.
//

import UIKit

class ViewController: UIViewController {
    
    var images = ["Pikachu","Rowlet","Lucario","Eevee","Charizard"]
    var index = 0
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var pageControl: UIPageControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pageControl.numberOfPages = images.count
    }

    @IBAction func sliderChange(_ sender: UISlider) {
        
        
        image.backgroundColor = UIColor(
            red: CGFloat(redSlider.value / 255),
            green: CGFloat(greenSlider.value / 255),
            blue: CGFloat(blueSlider.value / 255),
            alpha: CGFloat(alphaSlider.value / 255)
        )
        
    }
    
    @IBAction func resetColorChange(_ sender: Any) {
        
        redSlider.value = 0
        greenSlider.value = 0
        blueSlider.value = 0
        alphaSlider.value = 255
        
    }
    
    
    @IBAction func swipeLeft(_ sender: UISwipeGestureRecognizer) {
        if(sender.direction == .right){
            index += 1
        }else if (sender.direction == .left){
            index -= 1
            
        }
        if(index == images.count){
            index = 0
        }else if(index < 0){
            index = images.count - 1
        }
        image.image = UIImage(named: images[index])
        pageControl.currentPage = index
        
    }
    
    
    
    
}
