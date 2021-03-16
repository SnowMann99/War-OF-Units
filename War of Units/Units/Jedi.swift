//
//  Jedi.swift
//  War of Units
//
//  Created by Egor Salnikov on 24.02.2021.
//

final class Jedi: Unit {
        
    //MARK: - Properties
    
    var healthPoints: Int
    var resistanceDamageCoefficient: Int
    
    var damage: Int
    
    var gun: String
    var roar: String
    
    var name: String
    var isDamageBoosted: Bool
    
    //MARK: - Life Cycle
    
    required init() {
        healthPoints = (80 ... 100).randomElement() ?? 0
        resistanceDamageCoefficient = (1 ... 10).randomElement() ?? 0
        
        name = "Джедай 🥷🏻"
        
        gun = ["Световой меч", "Магия"].randomElement() ?? ""
        roar = "Да прибудет с тобой сила!"
        
        damage = (15 ... 20).randomElement() ?? 0
        isDamageBoosted = [true, false].randomElement()!
        
        damageBoostDetect()
    }
    
    //MARK: - Public Methods
    
    func damageBoostDetect() {
        if isDamageBoosted {
            damage += (3 ... 5).randomElement() ?? 0
        }
    }
    
}
