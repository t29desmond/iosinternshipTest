//
//  ViewController.swift
//  UserRating
//
//  Created by DeokJun Lee on 2022/05/25.
//

import UIKit


class ViewController: UIViewController,
                      UICollectionViewDelegate,
                      UICollectionViewDataSource {


  @IBOutlet weak var collectionView: UICollectionView!
  @IBOutlet weak var progressView: UIProgressView!
  @IBOutlet weak var progressButton: UIButton!

  var indexPoint: IndexPath?


  func collectionView(_ collectionView: UICollectionView,
                      numberOfItemsInSection section: Int) -> Int {
    return makeUser.count
  }


  func collectionView(_ collectionView: UICollectionView,
                      cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
            as? MainCollectionViewCell else { return MainCollectionViewCell() }

    let property = makeUser[indexPath.item]
    cell.delegate = self
    cell.setProperites(property)

    print("cell item : \(indexPath.item)")

    return cell
  }

  

  @IBAction func progressCheckButton(_ sender: UIButton) {
    guard let viewController = storyboard?
      .instantiateViewController(withIdentifier: "HistoryViewController")
            as? HistoryViewController else { return }
    print("Push segue")
    self.navigationController?.pushViewController(viewController, animated: true)
    
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    self.progressButton.isEnabled = false
    self.progressView.progress = 0.0
    self.progressView.layer.cornerRadius = 14
  }
}


extension ViewController: MainCollectionViewCellDelegate {

  func mainCollectionViewCellDidTouch(_ cell: MainCollectionViewCell, _ button: [UIButton]) {

    guard let selectedItem = self.collectionView.indexPath(for: cell) else { return }
    indexPoint = selectedItem

        guard let selectedItem = self.collectionView.cellForItem(at: indexPoint!)
                as? MainCollectionViewCell else { return }
    
        selectedItem.starButton = button
        selectedItem.delegate = self
  }

  func starButtonDidselected(_ cell: MainCollectionViewCell, _ button: [UIButton]) {

    self.progressView.progress += 0.1

    if progressView.progress == 1.0 {
      self.progressButton.isEnabled = true

    } else {
      self.progressButton.isEnabled = false
    }
    print(" +\(progressView.progress) ")

  }
}
