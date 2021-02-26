//
//  Unit.swift
//  War of Units
//
//  Created by Egor Salnikov on 20.02.2021.
//

protocol Unit {
    
//MARK: - Protocol Properties
    
    var healthPoints: Int { get set }
    var resistanceDamageCoefficient: Int { get set }
    
    var gun: String { get set }
    var roar: String { get set }
    
 //MARK: - Protocol Methods
    
    func takeDamage(by: Unit)
    
    func prepareForBattle(takeGun: String)
    func battleRoaring(battleRoar: String)
    
//MARK: - Init
    
    init()
}
