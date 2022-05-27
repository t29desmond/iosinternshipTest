//
//  MainCollectionViewCell.swift
//  UserRating
//
//  Created by 윤대식 on 2022/05/26.
//

import UIKit


protocol MainCollectionViewCellDelegate: AnyObject {
  func mainCollectionViewCellDidTouch(_ cell: MainCollectionViewCell, _ button: [UIButton])
  func starButtonDidselected(_ cell: MainCollectionViewCell, _ button: [UIButton])

}

class MainCollectionViewCell: UICollectionViewCell {

  @IBOutlet weak var thumbnailImage: UIImageView!
  @IBOutlet weak var nickname: UILabel!
  @IBOutlet weak var userInfo: UITextView!
  @IBOutlet weak var gradientView: UIView!

  @IBOutlet var starButton: [UIButton]!

  weak var delegate: MainCollectionViewCellDelegate?


  override func awakeFromNib() {
    self.delegate?.mainCollectionViewCellDidTouch(self, self.starButton)

    setPropertyUI(self)
    //    gradientView.setGradient(color1: UIColor.white, color2: UIColor.black)
  }


  @IBAction func starBtnSelected(_ sender: UIButton) {

    self.delegate?.starButtonDidselected(self, self.starButton)
    print("selected: \(sender.tag)")

    for button in starButton {

      if button.tag <= sender.tag {

        print("button.tag 값 1: \(button.tag)/ sender.tag 값 1: \(sender.tag)")

        button.setImage(UIImage.init(named: "img_star_select"), for: .normal)
      } else {
        button.setImage(UIImage.init(named: "img_star_unselect"), for: .normal)
      }
    }
  }


  func setPropertyUI(_ property: MainCollectionViewCell) {
    gradientView.layer.cornerRadius = 20
    thumbnailImage.layer.cornerRadius = 20
    nickname.font = UIFont.systemFont(ofSize: 20, weight: .bold)
    nickname.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
    userInfo.font = UIFont.systemFont(ofSize: 15, weight: .medium)
    userInfo.textColor = UIColor(red: 0.821, green: 0.864, blue: 0.892, alpha: 1)
  }


  func setProperites(_ property: RepositoryStruct) {
    self.nickname.text = property.nickname
    self.userInfo.text = property.location + ", " + property.age + "\n" + property.job
    self.thumbnailImage.image = property.thumbnailImage
  }
}


extension UIView {
  func setGradient(color1: UIColor, color2: UIColor){
    let gradient: CAGradientLayer = CAGradientLayer()
    gradient.colors = [color1.cgColor, color2.cgColor]
    gradient.locations = [0.0, 1.0]
    gradient.startPoint = CGPoint(x: 1.0, y: 0.7)
    gradient.endPoint = CGPoint(x: 1.0, y: 1.0)
    gradient.frame = bounds
    layer.addSublayer(gradient)
  }
}
