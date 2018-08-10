//
//  ViewController.swift
//  JSON_LOCAL
//
//  Created by Raja Sinha on 6/29/18.
//  Copyright © 2018 Softechnocon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        guard let path = Bundle.main.path(forResource: "usersAPI", ofType: "txt") else {return}
        let url = URL(fileURLWithPath: path)
        
        do{
        let data = try Data(contentsOf: url)
        let json = try JSONSerialization.jsonObject(with: data, options:.mutableContainers)
            print(json)
    }
        catch{
            print(error)
        }


}

}
