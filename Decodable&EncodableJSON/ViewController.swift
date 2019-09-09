//
//  ViewController.swift
//  Decodable&EncodableJSON
//
//  Created by Juan Meza on 8/19/19.
//  Copyright © 2019 Juan Meza. All rights reserved.
//

import UIKit
import Foundation




class ViewController: UIViewController {
    
    let json = URL(string: "https://jsonplaceholder.typicode.com/users")


  
    override func viewDidLoad() {
        super.viewDidLoad()
       
        URLSession.shared.dataTask(with: json!, completionHandler: {(data, response, error) in
            guard let data = data, error == nil else { return }
            
            print("Print data")
            print(data)
            
            do {
                
                let persons = try JSONDecoder().decode([Person].self, from: data)
                
                for person in persons {
                    print(person.name) // John
                    print(person.id) // Doe
                    print(person.address.street) // iOS Developer
                    print(person.address.geo.lat)
                    print(person.company.name)
                }
               
                
            } catch {
                print (error)
            }
            
        }).resume()
        
        
        
        // Do any additional setup after loading the view.
    }


}

