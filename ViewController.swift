//
//  ViewController.swift
//  TableViewSinpsonClass
//
//  Created by Yasin Lider on 6.02.2018.
//  Copyright © 2018 Yasin Lider. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{

    @IBOutlet weak var tableView: UITableView!
    
    var MySimpsons = [Simpson]()
    var chosenSimpson = Simpson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let yasin = Simpson()
        yasin.name = "Yasin Elüstü"
        yasin.meslek = "Öğrenci"
        yasin.image = UIImage(named: "yasin.jpg")!
        
        let seref = Simpson()
        seref.name = "Şeref Keser"
        seref.meslek = "CIO"
        seref.image = UIImage(named: "serefkeser.jpg")!
        
        //simpson arry
        
        MySimpsons.append(yasin)
        MySimpsons.append(seref)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MySimpsons.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
            cell.textLabel?.text = MySimpsons[indexPath.row].name
            return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = MySimpsons[indexPath.row]
        self.performSegue(withIdentifier: "toDetallsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetallsVC" {
            let destiantionVC = segue.destination as! detallsVC
            destiantionVC.selecedSimpson = self.chosenSimpson
        }
    }
    
}

