//
//  HistoryCollectionViewCell.swift
//  UserRating
//
//  Created by 윤대식 on 2022/05/26.
//

import UIKit


class HistoryCollectionViewCell: UICollectionViewCell {


  @IBOutlet weak var tagView: UIView!
  @IBOutlet weak var tagText: UILabel!
  @IBOutlet var tagStarButton: [UIButton]!
  

  override func awakeFromNib() {

    self.tagText.font = UIFont.systemFont(ofSize: 18, weight: .bold)
    self.tagText.textColor = .white
    self.tagView.layer.cornerRadius = 12
  }

}

