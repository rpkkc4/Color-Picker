//
//  ColorPickerViewController.swift
//  Color Picker
//
//  Created by Reagan Krueger on 10/5/21.
//

import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var colorPicker: UIPickerView!
    @IBOutlet weak var colorLabel: UILabel!
    
    struct Colors {
        
        let pickerColors: [String]
        static let backgroundColors = [UIColor.red,UIColor.orange,UIColor.yellow,UIColor.green,UIColor.blue,UIColor.purple]
        init() {
            self.pickerColors = ["Red","Orange ","Yellow","Green","Blue","Purple"]
            
        }
        
        
    }
    
    var colors = Colors()
    // set the index of the initial color. can change the initial color this way
    var initialIndex = 0

   
    override func viewDidLoad() {
        super.viewDidLoad()
        colorLabel.text = colors.pickerColors[initialIndex]
        view.backgroundColor = ColorPickerViewController.Colors.backgroundColors[initialIndex]
        colorPicker.selectRow(initialIndex, inComponent: 0, animated: true)
    
        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        //code
        return colors.pickerColors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let cell = colors.pickerColors[row]
        return cell
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        colorLabel.text = colors.pickerColors[row]
        view.backgroundColor = ColorPickerViewController.Colors.backgroundColors[row]
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}



