//
//  Repository.swift
//  UserRating
//
//  Created by DeokJun Lee on 2022/05/26.
//

import Foundation


class Repository {

  static func makeUsers() -> [User] {
    return [
      User(
        location: "서울",
        age: "30대 중반",
        thumbnailImage: #imageLiteral(resourceName: "08f41f3c0213a118b2f5bc.jpeg"),
        job: "Procurement Manager",
        nickname: "Izx2y"
      ),
      User(
        location: "서울",
        age: "30대 초반",
        thumbnailImage: #imageLiteral(resourceName: "f13a367f6a7f919fc48fab.jpeg"),
        job: "회사원",
        nickname: "무화과향"
      ),

      User(
        location: "서울",
        age: "30대 초반",
        thumbnailImage: #imageLiteral(resourceName: "b638954a6c0e34bdd05b8d.jpeg"),
        job: "회사원",
        nickname: "효깽"
      ),
      User(
        location: "안양",
        age: "30대 중반",
        thumbnailImage: #imageLiteral(resourceName: "87e84dbd2319ee838bbb5b.jpeg"),
        job: "회사원",
        nickname: "슈퍼럭키 "
      ),
      User(
        location: "서울",
        age: "30대 중반",
        thumbnailImage: #imageLiteral(resourceName: "b602056007a6b50be6537a.jpeg"),
        job: "회사원 ",
        nickname: "여름17"
      ),
      User(
        location: "서울",
        age: "30대 중반",
        thumbnailImage: #imageLiteral(resourceName: "f2ac0a59644bd87f75cde3.jpeg"),
        job: "회사원",
        nickname: "763601"
      ),
      User(
        location: "안양",
        age: "30대 초반",
        thumbnailImage: #imageLiteral(resourceName: "8dc43092d2fa3b4b353688.jpeg"),
        job: "간호사",
        nickname: "여니츄잉"
      ),
      User(
        location: "수원",
        age: "30대 중반",
        thumbnailImage: #imageLiteral(resourceName: "8e23b14d53b9f2f90a04f3.jpeg"),
        job: "직장인",
        nickname: "여름@"
      ),
      User(
        location: "서울",
        age: "30대 중반",
        thumbnailImage: #imageLiteral(resourceName: "fb5d468dd73fb7cf3e46e5.jpeg"),
        job: "직장인",
        nickname: "spllll"
      )
    ]
  }
}
