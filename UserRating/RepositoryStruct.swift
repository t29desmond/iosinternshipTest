//
//  RepositoryStruct.swift
//  UserRating
//
//  Created by 윤대식 on 2022/05/26.
//

import UIKit

struct RepositoryStruct {
  let location: String
  let age: String
  let thumbnailImage: UIImage
  let job: String
  let nickname: String
  var button: UIButton?

}

var makeUser: [RepositoryStruct] = [
  RepositoryStruct(location: "서울",
                   age: "30대 중반",
                   thumbnailImage: #imageLiteral(resourceName: "08f41f3c0213a118b2f5bc.jpeg"),
                   job: "Procurement Manager",
                   nickname: "Izx2y"),

  RepositoryStruct(location: "서울",
                   age: "30대 초반",
                   thumbnailImage: #imageLiteral(resourceName: "f13a367f6a7f919fc48fab.jpeg" ),
                   job: "회사원",
                   nickname: "무화과향"),

  RepositoryStruct(location: "서울",
                   age: "30대 초반",
                   thumbnailImage: #imageLiteral(resourceName: "b638954a6c0e34bdd05b8d.jpeg"),
                   job: "회사원",
                   nickname: "효깽"),

  RepositoryStruct(location: "안양",
                   age: "30대 중반",
                   thumbnailImage: #imageLiteral(resourceName: "87e84dbd2319ee838bbb5b.jpeg"),
                   job: "회사원",
                   nickname: "슈퍼럭키"),

  RepositoryStruct(location: "서울",
                   age: "30대 중반",
                   thumbnailImage: #imageLiteral(resourceName: "b602056007a6b50be6537a.jpeg"),
                   job: "회사원",
                   nickname: "여름17"),

  RepositoryStruct(location: "서울",
                   age: "30대 중반",
                   thumbnailImage: #imageLiteral(resourceName: "f2ac0a59644bd87f75cde3.jpeg"),
                   job: "회사원",
                   nickname: "763601"),

  RepositoryStruct(location: "안양",
                   age: "30대 초반",
                   thumbnailImage: #imageLiteral(resourceName: "8dc43092d2fa3b4b353688.jpeg"),
                   job: "간호사",
                   nickname: "여니츄잉"),

  RepositoryStruct(location: "수원",
                   age: "30대 중반",
                   thumbnailImage: #imageLiteral(resourceName: "8e23b14d53b9f2f90a04f3.jpeg"),
                   job: "직장인",
                   nickname: "여름@"),

  RepositoryStruct(location: "서울",
                   age: "30대 중반",
                   thumbnailImage: #imageLiteral(resourceName: "fb5d468dd73fb7cf3e46e5.jpeg"),
                   job: "직장인",
                   nickname: "spllll"),
  RepositoryStruct(location: "서울",
                   age: "30대 중반",
                   thumbnailImage: #imageLiteral(resourceName: "87e84dbd2319ee838bbb5b.jpeg"),
                   job: "미인",
                   nickname: "9명이라 한 명 추가")

  
]
