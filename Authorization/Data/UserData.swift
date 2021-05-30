//
//  UserData.swift
//  Authorization
//
//  Created by Алексей on 30.05.2021.
//

import Foundation

let user = User(name: "Alexey",
                lastName: "Belyaev",
                age: 32,
                photo: "imageProfile.png",
                currentCity: "Moscow",
                relationship: "married",
                birthday: "16.01.1989",
                login: "user",
                password: "pass",
                hobby: [Hobby(title: "Lego",
                              description: "Коллекционирую конструкторы Lego Technic, люблю собирать машины и механизмы.",
                              image: "lego.jpg"),
                        Hobby(title: "Гаджеты",
                              description: "В курсе всех новинкок в области компьютерной и мобильной техники.",
                              image: "gadgets.jpg")
                ],
                profession: [Profession(title: "Web-developer",
                                        description: "Сайты на Битрикс",
                                        image: "work.jpg")
                ]
)
