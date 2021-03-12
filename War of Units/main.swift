//
//  main.swift
//  War of Units
//
//  Created by Egor Salnikov on 20.02.2021.
//
import Foundation

var spawn = Spawn()
var units = spawn.generateUnits(count: 4)

var war = War(units: units)

war?.startWar()

RunLoop.main.run()
