//
//  main.swift
//  War of Units
//
//  Created by Egor Salnikov on 20.02.2021.
//

var spawn = Spawn()
var units = spawn.generateUnits(count: 10)

var war = War(units: units)

war?.startWar()
