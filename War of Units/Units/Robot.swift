//
//  Robot.swift
//  War of Units
//
//  Created by Egor Salnikov on 20.02.2021.
//

import Foundation

class Robot: Unit {
    
    required init() {
        
        self.healthPoints = (50 ... 100).randomElement() ?? 0
        self.resistanceDamageCoefficient = (1 ... 3).randomElement() ?? 0
        
        self.gun = ["Ракета", "Бластер"].randomElement() ?? ""
        self.roar = "Im going to kill you!"
        
        self.damage = (35 ... 45).randomElement() ?? 0
        self.isDamageBoosted = [true, false].randomElement()!
        
        prepareForBattle(takeGun: gun)
        battleRoaring(battleRoar: roar)
        
        damageBoostDetect()
        
    }
    
    var healthPoints: Int
    var resistanceDamageCoefficient: Int
    
    var gun: String
    var roar: String
    
    var damage: Int
    var isDamageBoosted: Bool
    
    func hitUnit() {
        print("Робот атакует врага!")
    }
    
    func damageBoostDetect() {
        if isDamageBoosted {
            damage += (5 ... 10).randomElement() ?? 0
        }
    }
    
    func takeDamage(by: Unit) {
        print("Робот получает урон от \(by)")
    }
    
    func prepareForBattle(takeGun: String) {
        print("Робот теперь готов к битве! Его оружие - \(takeGun)")
    }
    
    func battleRoaring(battleRoar: String) {
        print("Робот издает боевой клич - \(battleRoar)")
    }
}

