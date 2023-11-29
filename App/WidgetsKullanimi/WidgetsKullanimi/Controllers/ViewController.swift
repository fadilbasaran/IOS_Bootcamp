//
//  ViewController.swift
//  WidgetsKullanimi
//
//  Created by Fadıl Başaran on 23.11.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var segmetedControl: UISegmentedControl!
    @IBOutlet weak var switchDurum: UISwitch!
    @IBOutlet weak var labelSonuc: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textFieldGirdi: UITextField!
    
    @IBOutlet weak var labelSlider: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        labelSlider.text = String(Int(slider.value))
  
        
    }
    
    

    @IBAction func sliderDegisim(_ sender: UISlider) {
        labelSlider.text = String(Int(sender.value))
    }
    
    @IBAction func buttonYap(_ sender: Any) {
        
        if let alinanVeri = textFieldGirdi.text {
            labelSonuc.text = alinanVeri
        }
    }
    
    
    @IBAction func buttonMutlu(_ sender: Any) {
        imageView.image = UIImage(named: "mutlu")
    }
    
    @IBAction func buttonUzgun(_ sender: Any) {
        imageView.image = UIImage(named: "uzgun")
    }
    
    
    @IBAction func buttonGoster(_ sender: Any) {
        
        //print("switch durum: \(switchDurum.isOn)")
        labelSonuc.text = switchDurum.isOn ? "ON":"OFF"
        let secilenIndeks = segmetedControl.selectedSegmentIndex
        let secilenKategori = segmetedControl.titleForSegment(at: secilenIndeks)
        print("Secilen durum Goster : \(secilenKategori!)")
        print("Slider durum: \(slider.value)")
        
    
        
    }
    
    @IBAction func switchDegisim(_ sender: UISwitch) {
        if  sender.isOn{
            print("Switch : ON")
            labelSonuc.text = "ON"
        }else{
            print("Switch : OFF")
            labelSonuc.text = "OFF"
        }
        let secilenIndeks = segmetedControl.selectedSegmentIndex
        let secilenKategori = segmetedControl.titleForSegment(at: secilenIndeks)
        print("Secilen durum : \(secilenKategori!)")
    }
    
    
    @IBAction func segmentedDegisim(_ sender: UISegmentedControl) {
        
        let secilenIndeks = sender.selectedSegmentIndex
        let secilenKategori = sender.titleForSegment(at: secilenIndeks)
        print("Secilen kategori : \(secilenKategori!)")
        //labelSonuc.text = "Secilen kategori : \(secilenKategori!)"
        
        
    }
    
    
    
    
}

