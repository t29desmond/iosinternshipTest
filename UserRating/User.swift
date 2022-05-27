//
//  User.swift
//  UserRating
//
//  Created by DeokJun Lee on 2022/05/26.
//

import UIKit


class User {

  let location: String
  let age: String
  let thumbnailImage: UIImage
  let job: String
  let nickname: String


  init(
    location: String,
    age: String,
    thumbnailImage: UIImage,
    job: String,
    nickname: String
  ) {
    self.location = location
    self.age = age
    self.thumbnailImage = thumbnailImage
    self.job = job
    self.nickname = nickname
  }
}
