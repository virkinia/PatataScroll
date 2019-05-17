//
//  SinderViewController.swift
//  PatataScroll
//
//  Created by Dev2 on 17/05/2019.
//  Copyright © 2019 Dev2. All rights reserved.
//

import UIKit

class SinderViewController: UIViewController {


    let peopleNames = ["Jennifer", "Ruperta", "Brian", "Isidro", "Sandra", "Mario", "Oscar", "Alvaro", "Sofia", "Ingrid", "Francisco"]

    @IBOutlet weak var CollectionPeople: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()

        CollectionPeople.dataSource = self
        CollectionPeople.delegate = self

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
extension SinderViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return peopleNames.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AvatarCollectionViewID", for: indexPath) as? AvatarCollectionViewCell {

             cell.configure(name: peopleNames[indexPath.row], imageName: peopleNames[indexPath.row])

            return cell
            
        }
        return UICollectionViewCell()
        
    }


}
extension SinderViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        debugPrint("Ha pulsado ")
    }
}
