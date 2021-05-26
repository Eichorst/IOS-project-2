//
//  AddViewController.swift
//  TravelTracker
//
//  Created by Leon on 10/24/20.
//  Copyright © 2020 Shiyao Guo. All rights reserved.
//

import UIKit
import CoreData
class AddViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var title_textfield: UITextField!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func save_ontap(_ sender: Any) {
        
        let context = AppDelegate.cdContext
            if let title = title_textfield?.text{
                 
                if let entity = NSEntityDescription.entity(forEntityName: "Item", in: context) {
                    let item = NSManagedObject(entity: entity, insertInto: context)
                    item.setValue(title, forKeyPath: "title")
                    

                    do {
                        try context.save()
                    } catch let error as NSError {
                        print("Could not save the item. \(error), \(error.userInfo)")
                    }
                }
            }

            presentingViewController?.dismiss(animated: true)
        }
    }
    

