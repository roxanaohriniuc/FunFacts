//
//  FactBook.swift
//  FunFacts
//
//  Created by roxana ohriniuc on 3/7/16.
//  Copyright © 2016 roxana ohriniuc. All rights reserved.
//

import Foundation

struct FactBook{
    let factsArray = [
        "Ants stretch when they wake up in the morning.",
        "Ostriches can run faster than horses.",
        "Olympic gold medals are actually made mostly of silver.",
        "You are born with 300 bones; by the time you are an adult you will have 206.",
        "It takes about 8 minutes for light from the Sun to reach Earth.",
        "Some bamboo plants can grow almost a meter in just one day.",
        "The state of Florida is bigger than England.",
        "Some penguins can leap 2-3 meters out of the water.",
        "On average, it takes 66 days to form a new habit.",
        "Mammoths still walked the earth when the Great Pyramid was being built.",
        "When hippos are upset, their sweat turns red.",
        "Bikinis and tampons were invented by men.",
        "In England, in the 1880’s, “Pants” was considered a dirty word.",
        "It snowed in the Sahara desert for 30 minutes on the 18th February 1979.",
        "Every human spent about half an hour as a single cell.",
        "Mel Blanc – the voice of Bugs Bunny – was allergic to carrots.",
        "California has issued 6 drivers licenses to people named Jesus Christ.",
        "According to Genesis 1:20-22 the chicken came before the egg."]
    
    func randomFact(currFact : String) -> String{
        var nextFact = factsArray[0];
        repeat{
            let rand = Int (arc4random_uniform(UInt32(factsArray.count)));
            nextFact = factsArray[rand]
        }while(nextFact == currFact);
        return(nextFact);
    }
}