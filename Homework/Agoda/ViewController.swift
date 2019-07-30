//
//  ViewController.swift
//  Homework
//
//  Created by nemsothea on 7/25/19.
//  Copyright © 2019 nemsothea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let agoda = [["name":"HARI Residence & Spa","detail":"BBU Road, Vihear Chin Village, Svaydangkum, Siem Reap Central Area, Siem Reap, Cambodia, 17252 ","image":"IMG_2922.jpg"],
                ["name":"HARI Residence & Spa","detail":"BBU Road, Vihear Chin Village, Svaydangkum, Siem Reap Central Area, Siem Reap, Cambodia, 17252 ","image":"IMG_2922.jpg"],
                ["name":"HARI Residence & Spa","detail":"BBU Road, Vihear Chin Village, Svaydangkum, Siem Reap Central Area, Siem Reap, Cambodia, 17252 ","image":"IMG_2922.jpg"],
                ["name":"HARI Residence & Spa","detail":"BBU Road, Vihear Chin Village, Svaydangkum, Siem Reap Central Area, Siem Reap, Cambodia, 17252 ","image":"IMG_2922.jpg"]
                 ]
    
    
    let vocation = AgodaData(name: "HARI Residence & Spa", detail: "BBU Road, Vihear Chin Village, Svaydangkum, Siem Reap Central Area, Siem Reap, Cambodia, 17252 ", image: UIImage(named: "IMG_2922.jpg")!)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as? Cell else {
            return UITableViewCell()
        }
//        let row = indexPath.row
//        cell.name.text = agoda[row]["name"]
//        cell.detail.text = agoda[row]["detail"]
//        cell.img.image = UIImage(named: agoda[row]["image"]!)
        
        cell.name.text = vocation.name
        cell.detail.text = vocation.detail
        cell.img.image = vocation.image
        return cell
    }
    
}

class Cell: UITableViewCell {
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var name:UILabel!
    @IBOutlet weak var detail:UILabel!
    
}



