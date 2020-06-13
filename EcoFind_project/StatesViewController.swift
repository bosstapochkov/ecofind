//
//  FindCategoryViewController.swift
//  EcoFind_project
//
//  Created by Надя Мурдашева on 13.05.2020.
//  Copyright © 2020 Надя Мурдашева. All rights reserved.
//

import UIKit

class StatesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let namesImages=["konteiner1","cleaning_arms","recycle_bottle","where_find_mark","musor_kak_mnogo","yellow_and_green"]
    let textImages=["Какую упаковку сдавать в контейнер-сетку?","Как правильно мыть руки, чтобы не навредить природе?","Как подготовить упаковку для переработки?","Где найти маркировку на упаковке?","Сколько вы произвели мусора?","Что сдавать в специализированные контейнеры?"]
    @IBOutlet weak var tableViewStates: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewStates.delegate = self
        tableViewStates.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return namesImages.count
    }

    /*public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        tableView.rowHeight = 100
        let cell = tableViewStates.dequeueReusableCell(withIdentifier: "StatesCell") as! StatesTableViewCell
        cell.labelStates.text = textImages[indexPath.row]
        cell.imageStates.image = UIImage(named: namesImages[indexPath.row])
        return cell
    }*/
    
    /*
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        /*let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "DescriptionFindViewController") as! DescriptionFindViewController
        self.present(newViewController, animated: true, completion: nil)*/
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "DescriptionFindViewController")
        show(vc, sender: self)
    }*/
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableView.rowHeight = 100
        let cell = tableViewStates.dequeueReusableCell(withIdentifier: "StatesCell") as! StatesTableViewCell
        cell.labelStates.text = textImages[indexPath.row]
        cell.imageStates.image = UIImage(named: namesImages[indexPath.row])
        return cell
    }
}


