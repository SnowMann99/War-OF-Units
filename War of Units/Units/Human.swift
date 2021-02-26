//
//  Human.swift
//  War of Units
//
//  Created by Egor Salnikov on 24.02.2021.
//

class Human: Unit {
    
    required init() {
        
        self.healthPoints = (50 ... 80).randomElement() ?? 0
        self.resistanceDamageCoefficient = (10...15).randomElement() ?? 0
        
        self.gun = ["Пистолет", "Автомат"].randomElement() ?? ""
        self.roar = "Рядовой Куча прибыл!"
        
        self.isResistanceBoosted = [false, true].randomElement()!
        self.damage = (40 ... 50).randomElement() ?? 0
        
        prepareForBattle(takeGun: gun)
        battleRoaring(battleRoar: roar)
        
        resistanceBoostDetect()
    }
    
    
    var healthPoints: Int
    var resistanceDamageCoefficient: Int
    
    var gun: String
    var roar: String
    
    var damage: Int
    var isResistanceBoosted: Bool
    
    func hitUnit() {
        print("Человек атакует врага!")
    }
    
    func resistanceBoostDetect() {
        if isResistanceBoosted {
            resistanceDamageCoefficient += (5 ... 10).randomElement() ?? 0
        }
    }
    
    func takeDamage(by: Unit) {
        print("Человек получает урон от \(by)")
    }
    
    func prepareForBattle(takeGun: String) {
        print("Человек теперь готов к битве! Его оружие - \(takeGun)")
    }
    
    func battleRoaring(battleRoar: String) {
        print("Человек издает боевой клич - \(battleRoar)")
    }
    
}
