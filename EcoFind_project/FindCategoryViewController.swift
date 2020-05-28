//
//  FindCategoryViewController.swift
//  EcoFind_project
//
//  Created by Надя Мурдашева on 13.05.2020.
//  Copyright © 2020 Надя Мурдашева. All rights reserved.
//

import UIKit

class FindCategoryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let namesImages=["1","2","3","4","5","6","7","ABS","PC","SAN","20","21","22","40","41","70","71","72","73","74","81","82","84","90","D2W","TOXIC"]
    let textImages=["Полиэтилентерефталат, ПЭТ, лавсан (ПЭТ, ПЭТ, ПЭТ, ПЭТФ)",
    "Полиэтилен высокой плотности (низкого давления) (PEHD, HDPE, ПЭВП, ПНД)",
    "Поливинилхлорид (ПВХ, ПВХ)",
    "Полиэтилен низкой плотности (высокого давления) (LDPE, PLDE, ПЭНП, ПВД)",
    "Полипропилен (PP, ПП)",
    "Полистирол (PS, ПС)",
    "Другие виды пластика или смесь",
    "Акрилонитрилбутадиенстирол",
    "Поликарбонат",
    "Сополимер стирола и акрилонитрила",
    "Целлюлозная продукция: гофрированный картон",
    "Целлюлозная продукция: картон",
    "Целлюлозная продукция: бумага",
    "Железо",
    "Алюминий",
    "Бесцветное стекло",
    "Зеленое стекло",
    "Коричневое стекло",
    "Темно-коричневое бутылочное стекло",
    "Cветло-коричневое бутылочное стекло",
    "Бумага (картон) + пластик",
    "Бумага (картон) + алюминий",
    "Бумага (картон) + пластик + алюминий",
    "Пластик + алюминий",
    "Оксоразлагаемый пластик",
    "Особая утилизация: электронная техника и элементы питания"]
    @IBOutlet weak var tableViewFind: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewFind.delegate = self
        tableViewFind.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return namesImages.count
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableViewFind.dequeueReusableCell(withIdentifier: "Cell") as! FindCategoryTableViewCell
        cell.labelFind.text = textImages[indexPath.row]
        cell.imageFind.image = UIImage(named: namesImages[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        /*let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "DescriptionFindViewController") as! DescriptionFindViewController
        self.present(newViewController, animated: true, completion: nil)*/
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "DescriptionFindViewController")
        show(vc, sender: self)
    }

}

