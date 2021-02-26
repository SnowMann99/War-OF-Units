//
//  Jedi.swift
//  War of Units
//
//  Created by Egor Salnikov on 24.02.2021.
//

class Jedi: Unit {
    
    required init() {
        
        self.healthPoints = (80 ... 100).randomElement() ?? 0
        self.resistanceDamageCoefficient = (5 ... 10).randomElement() ?? 0
        
        self.gun = ["Световой меч", "Магия"].randomElement() ?? ""
        self.roar = "Да прибудет с тобой сила!"
        
        self.damage = (30 ... 40).randomElement() ?? 0
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
        print("Джедай атакует врага!")
    }
    
    func damageBoostDetect() {
        if isDamageBoosted {
            damage += (5 ... 10).randomElement() ?? 0
        }
    }
    
    func takeDamage(by: Unit) {
        print("Джедай получает урон от \(by)")
    }
    
    func prepareForBattle(takeGun: String) {
        print("Джедай теперь готов к битве! Его оружие - \(takeGun)")
    }
    
    func battleRoaring(battleRoar: String) {
        print("Джедай издает боевой клич - \(battleRoar)")
    }
    
}
