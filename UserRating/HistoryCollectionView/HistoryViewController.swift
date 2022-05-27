//
//  HistoryViewController.swift
//  UserRating
//
//  Created by 윤대식 on 2022/05/26.
//

import UIKit


class HistoryViewController: UIViewController,
                             UICollectionViewDelegate,
                             UICollectionViewDataSource {


  @IBOutlet weak var collectionView: UICollectionView!

  @IBOutlet weak var reportView: UIView!
  @IBOutlet weak var myReport: UIButton!

  var cellProperties: [HistoryCollectionViewCellProperty] = []


  func collectionView(_ collectionView: UICollectionView,
                      numberOfItemsInSection section: Int) -> Int {
//    return cellProperties.count
    return 10
  }


  func collectionView(_ collectionView: UICollectionView,
                      cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
            as? HistoryCollectionViewCell else { return HistoryCollectionViewCell () }

    let historyProperty = makeUser[indexPath.item]
    cell.tagText.text = historyProperty.nickname


    return cell
  }

  @IBAction func myReportButton(_ sender: UIButton) {
    self.navigationController?.popViewController(animated: true)
  }

  override func viewDidLoad() {
    self.reportView.layer.cornerRadius = 14
    super.viewDidLoad()
  }
}
