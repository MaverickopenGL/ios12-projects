//
//  ViewController.swift
//  01-iamrich
//
//  Created by Daniel on 10/11/18.
//  Copyright © 2018 Maverick. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //PROPERTIES
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var imageViewDiamont: UIImageView!
    @IBOutlet weak var buttonPush: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
    }
//METHODS
    @IBAction func buttonPressed(_ sender: UIButton) {
        //print("He púsado el boton.")
        
        //self.labelTitle.text = "He púlsado el boton"
        //self.labelTitle.textColor = UIColor.green
        //self.labelTitle.font = UIFont.systemFont(ofSize: 24.0)
        
        //self.imageViewDiamont.image = UIImage(named: "ruby-jewel")
        
        let controller = UIAlertController(title: "I am Rich", message: """
                                            I am rich
                                            I deserved it
                                            I am good,
                                            healthy & successful
                                            """, preferredStyle: .actionSheet)
        
        //Implementar 3 funcionalidades al evento
        let action = UIAlertAction(title: "Aceptar", style: .default) {(action) in
            print("He pulsado el botón de Aceptar")
        }
        
        
        controller.addAction(action)
        
        let action2 = UIAlertAction(title: "Cancelar", style: .cancel, handler: {(action) in
            print("He pulsado el botón Cancelar")
        })
        
        
        controller.addAction(action2)
        
        let action3 = UIAlertAction(title: "Borrar", style: .destructive) { _ in print("He pulsado el botón Borrar")
        }
        
        controller.addAction(action3)
        
        self.show(controller, sender: nil)
        
    }
    
}

