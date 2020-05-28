//
//  DescriptionFindViewController.swift
//  EcoFind_project
//
//  Created by Надя Мурдашева on 13.05.2020.
//  Copyright © 2020 Надя Мурдашева. All rights reserved.
//

import UIKit

class DescriptionFindViewController: UIViewController {

    /*@IBAction func buttonBack(_ sender: UIBarButtonItem) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "FindCategoryViewController")
        show(vc, sender: self)
    }*/
    
    /*@IBAction func unwindFromNextVC(unwindSegue: UIStoryboardSegue){
    }*/
    
    @IBAction func buttonToMap(_ sender: Any) {
    }
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
