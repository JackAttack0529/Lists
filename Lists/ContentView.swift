//
//  ContentView.swift
//  Lists
//
//  Created by Jack Hyde on 4/26/23.
//

import SwiftUI

struct ContentView: View {
    
    // This struct is used as a template for each item in the list
    //NOTE: In order to use a struct to create instances that are used in a list it must be set to Identifiable so the list can be differentiated between the created items
    struct GreatGuitarist: Identifiable {
        
        // For hte list to be able to differentiate between the items an ID must also be set for each Instance
        // UUID (Universally Unique Identifier) is a data type that represents a random ID/Number
        // UUID() allows for a random UUID number to be created. So in this case a value does NOT need to be set for the ID property each time the GreatGuitarist struct is used to create an instance
        let id: UUID = UUID()
        let name: String
        let band: String
        let biggestHit: String
    }

    // This array contains instances of the GreatGuitarist struct
    // NOTE: Since the items in the array are not simply String or Int values we must specify the Struct/Instance value they are
    let guitarists:[GreatGuitarist] = [
        GreatGuitarist(name: "Jimi Hendrix", band: "The Jimi Hendrix Experience", biggestHit: "All Along The Watchtower"),
        GreatGuitarist(name: "Jeff Beck", band: "Yardbirds", biggestHit: "Freeway Jam"),
        GreatGuitarist(name: "Eddie Van Halen", band: "Van Halen", biggestHit: "Jump"),
        GreatGuitarist(name: "Brian May", band: "Queen", biggestHit: "Bohemian Rhapsody"),
        GreatGuitarist(name: "Jimmy Page", band: "Led Zeppelin", biggestHit: "Stairway To Heaven")
    ]
    
    var body: some View {
        VStack{
            // This first HStack represents headings for the list
            HStack{
                
                Spacer()
                
                Text("Guitarist")
                // Changing the text to bold
                    .fontWeight(.bold)
                // Centering the text
                    .multilineTextAlignment(.center)
                // setting the width
                    .frame(width:100.0)
                
                Spacer()
                
                Text("Band")
                // Changing the text to bold
                    .fontWeight(.bold)
                // Centering the text
                    .multilineTextAlignment(.center)
                // setting the width
                    .frame(width:100.0)
                
                Spacer()
                
                Text("Biggest Hit")
                // Changing the text to bold
                    .fontWeight(.bold)
                // Centering the text
                    .multilineTextAlignment(.center)
                // setting the width
                    .frame(width:100.0)
                
                Spacer()
            }
            
            // Lists in swiftUI allow for an array to be referenced (guitarists in this example) that can be looped through accessing the info for each everytime through the loop
            List(guitarists){person in
                
                //Each time the loop is run an Hstack view is created and the value plugged in for PERSON is one of the GreatGuitarist instances from the guitrarists array
                HStack{
                    Text(person.name)
                        .multilineTextAlignment(.center)
                        .frame(width: 100.0)
                    // Accessing the value for the "name" property for each of the instances in the guitarists array
                    Text(person.band)
                        .multilineTextAlignment(.center)
                        .frame(width: 100.0)
                    // Accessing the value for the "Band" property for each of the instances in the guitarists array
                    Text(person.biggestHit)
                        .multilineTextAlignment(.center)
                        .frame(width: 100.0)
                    // Accessing the value for the "biggestHit" property for each of the instances in the guitarists array
                    
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
