//
//  StarCustomVIew.swift
//  UserRating
//
//  Created by 윤대식 on 2022/05/26.
//
import Foundation
import UIKit


@IBDesignable

class StarCustomVIew: UIView {

//  @IBOutlet var starButton: [UIButton]!

  override init(frame: CGRect) {
    super.init(frame: frame)
    xibSetup()
  }

  override func prepareForInterfaceBuilder() {
    super.prepareForInterfaceBuilder()
    xibSetup()
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    xibSetup()
  }

  func xibSetup() {
    guard let view = loadViewFromNib(nib: "CustomView") else {
      return
    }

    view.frame = bounds
    view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    addSubview(view)
  }

  //  @IBAction func starBtnSelected(_ sender: UIButton) {
  //    print("selected: \(sender.tag)")
  //
  //    for button in starButton {
  //
  //      if button.tag <= sender.tag {
  //        button.setImage(UIImage.init(named: "img_star_select"), for: .normal)
  //
  //      } else  {
  //        button.setImage(UIImage.init(named: "img_star_unselect"), for: .normal)
  //      }
  //    }
  //  }

  func loadViewFromNib(nib: String) -> UIView? {
    let bundle = Bundle(for: type(of: self))
    let nib = UINib(nibName: nib, bundle: bundle)
    return nib.instantiate(withOwner: self, options: nil).first as? UIView
  }
}
