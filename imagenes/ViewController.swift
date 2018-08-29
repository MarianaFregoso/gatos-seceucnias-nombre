//
//  ViewController.swift
//  imagenes
//
//  Created by Maestro on 28/08/18.
//  Copyright © 2018 Maestro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbltexto: UILabel!
    @IBOutlet weak var imgsecuencia: UIImageView!
    @IBAction func doTapGato(_ sender: Any) {
        
        if imgsecuencia.isAnimating{
            imgsecuencia.stopAnimating()
            lbltexto.text = "¡Guau pariente!"
        }else {
            imgsecuencia.startAnimating()
            lbltexto.text = "¡Continua!"
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgsecuencia.image = UIImage(named: "Carta2_00000")
        
        var fotos : [UIImage] = []
        fotos.append(UIImage(named: "Carta2_00000")!)
        fotos.append(UIImage(named: "Carta2_00001")!)
        fotos.append(UIImage(named: "Carta2_00002")!)
        fotos.append(UIImage(named: "Carta2_00003")!)
        fotos.append(UIImage(named: "Carta2_00004")!)
        fotos.append(UIImage(named: "Carta2_00005")!)
        fotos.append(UIImage(named: "Carta2_00006")!)
        fotos.append(UIImage(named: "Carta2_00007")!)
        
        imgsecuencia.animationImages = fotos
        imgsecuencia.animationDuration = 1
        
        imgsecuencia.startAnimating()
        
        let miGato = Gato()
        miGato.nombre = "Don Perro"
        miGato.vidas = 3
        
        // ! es unwrapping 
        //primero validamos que miGato.nombre no sea nulo
        if miGato.nombre != nil {
            let nombregato : String = miGato.nombre!
            lbltexto.text = nombregato
        }
       
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

