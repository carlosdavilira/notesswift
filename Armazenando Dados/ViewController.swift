//
//  ViewController.swift
//  Armazenando Dados
//
//  Created by aluno on 05/09/19.
//  Copyright © 2019 aluno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textoCampo: UITextView!
    
    @IBAction func salvarTexto(_ sender: Any) {
        if let texto = textoCampo.text {
            UserDefaults.standard.set(texto, forKey: "anotacao")
        }
        
    }
    
    func recuperarAnotacao() -> String {
        if let textoRecuperado =  UserDefaults.standard.object(forKey: "anotacao"){
            return textoRecuperado as! String
        }
        return ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textoCampo.text = recuperarAnotacao()
    }


}

