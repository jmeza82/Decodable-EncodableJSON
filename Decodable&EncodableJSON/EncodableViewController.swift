//
//  EncodableViewController.swift
//  Decodable&EncodableJSON
//
//  Created by Juan Meza on 8/19/19.
//  Copyright © 2019 Juan Meza. All rights reserved.
//

import UIKit
import Foundation




class EncodableViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

   
    @IBAction func actionEncodable(_ sender: Any) {
        
        do {
            
            let people = PersonEnc(address: AddressEnc(street: "Moritel", suite: "1940", city: "Mexicali", zipcode: "21389", geo: GeoEnc(lat: "140000", lng: "-145,000")), company: CompanyEnc(name: "Karmar", catchPhrase: "hello", bs: "he"), id: 3, name: "Juan Meza", username: "jmeza", email: "juan@gmail.com", phone: "6862212643", website: "appsconswift.com")
            
            let encoded = try JSONEncoder().encode(people)
            print(people)
            print(encoded)
            
            
        } catch {
            print("Error")
            print (error)
        }
        
        
    }
    

}
