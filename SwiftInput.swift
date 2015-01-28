//
//  SwiftInput.swift
//  SwiftInput
//
//  Created by Guillaume DIDIER on 28/01/2015.
//
//

import Foundation

func SIInput(prompt: String? = nil) -> String? {
    if (prompt != nil) {
        print(prompt!) // Some sources state that this may bug
    }
    let stdin = NSFileHandle.fileHandleWithStandardInput()
    let data = stdin.availableData
    let retVal = NSString(data: data, encoding: NSUTF8StringEncoding)?.stringByTrimmingCharactersInSet(
        NSCharacterSet.newlineCharacterSet())
    return retVal
}

func SIAskString(prompt: String? = nil, errorMessage: String = "You did not enter a String, or an error occured.") -> String {
    var retVal : String? = SIInput(prompt: prompt)
    while(retVal == nil){
        println(errorMessage)
        retVal = SIInput(prompt: prompt)
    }
    return retVal!
}