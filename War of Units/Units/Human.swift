//
//  Human.swift
//  War of Units
//
//  Created by Egor Salnikov on 24.02.2021.
//

final class Human: Unit {
    
    //MARK: - Properties
    
    var healthPoints: Int
    var resistanceDamageCoefficient: Int
    
    var damage: Int
    
    var gun: String
    var roar: String
    
    var name: String
    var isResistanceBoosted: Bool
    
    //MARK: - Life Cycle
    
    required init() {
        
        healthPoints = (50 ... 80).randomElement() ?? 0
        resistanceDamageCoefficient = (10 ... 15).randomElement() ?? 0
        
        gun = ["Пистолет", "Автомат"].randomElement() ?? ""
        roar = "Рядовой Куча прибыл!"
        
        name = "Человек"
        
        isResistanceBoosted = [false, true].randomElement()!
        damage = (40 ... 50).randomElement() ?? 0
        
        prepareForBattle()
        makeBattleRoar()
        
        resistanceBoostDetect()
    }
    
    //MARK: - Public Methods
    
    func resistanceBoostDetect() {
        if isResistanceBoosted {
            resistanceDamageCoefficient += (5 ... 10).randomElement() ?? 0
        }
    }
    
}
