//
//  Dog.swift
//  War of Units
//
//  Created by Egor Salnikov on 20.02.2021.
//

import Foundation

class Dog: Unit {
    
    required init() {
        
        self.healthPoints = (50 ... 80).randomElement() ?? 0
        self.resistanceDamageCoefficient = (10 ... 15).randomElement() ?? 0
        
        self.gun = ["Зубы", "Лапы"].randomElement() ?? "Без оружия"
        self.roar = "WOOF WOOF"
        
        self.damage = (35 ... 40).randomElement() ?? 0
        self.isHealthPointsBoosted = [true, false].randomElement()!
        
        prepareForBattle(takeGun: gun)
        battleRoaring(battleRoar: roar)
        
        healthPointBoostDetect()
    }
    
   
    var healthPoints: Int
    var resistanceDamageCoefficient: Int
    
    var gun: String
    var roar: String
    
    var damage: Int
    var isHealthPointsBoosted: Bool
    
    func hitUnit() {
        print("Собака атакует врага!")
    }
    
    func healthPointBoostDetect() {
        if isHealthPointsBoosted {
            healthPoints += (5 ... 10).randomElement() ?? 0
        }
    }
    
    func takeDamage(by: Unit) {
        print("Собака получает урон от \(by)")
    }
    
    func prepareForBattle(takeGun: String) {
        print("Собака теперь готова к битве! Ее оружие - \(takeGun)")
    }
    
    func battleRoaring(battleRoar: String) {
        print("Собака издает боевой клич - \(battleRoar)")
    }
}
