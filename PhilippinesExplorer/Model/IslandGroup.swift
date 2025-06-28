//
//  IslandGroup.swift
//  PhilippinesExplorer
//
//  Created by Viennarz Curtiz on 6/18/25.
//

import Foundation

struct Region: Identifiable, Codable, Hashable {
    let id: UUID
    let name: String
    let provinces: [String]
    let famousLandmarks: [String]

    init(id: UUID = UUID(), name: String, provinces: [String], famousLandmarks: [String]) {
        self.id = id
        self.name = name
        self.provinces = provinces
        self.famousLandmarks = famousLandmarks
    }
}

struct IslandGroup: Identifiable, Codable, Hashable {
    let id: UUID
    let name: String
    let description: String
    let regions: [Region]
    let heroImageNames: [String]

    init(id: UUID = UUID(), name: String, description: String, regions: [Region], heroImageNames: [String]) {
        self.id = id
        self.name = name
        self.description = description
        self.regions = regions
        self.heroImageNames = heroImageNames
    }
}

extension IslandGroup {
    static let examples: [IslandGroup] = [
        IslandGroup(
            name: "Luzon",
            description: """
            Luzon, the largest and most populous island in the Philippines, is the political and economic center of the country. It is home to the nation’s capital, Manila, and the thriving business hub of Quezon City. This island features a diverse landscape that includes mountains like the Sierra Madre and Cordillera ranges, fertile plains such as Central Luzon’s rice fields, and iconic volcanoes like Mayon and Taal. 

            Luzon plays a critical role in the country's history, being the site of significant battles and events that shaped Philippine independence. Culturally, it boasts a mix of indigenous groups and colonial influences, resulting in a rich heritage evident in its architecture, festivals, and cuisine.
            """,
            regions: [
                Region(name: "Ilocos Region", provinces: ["Ilocos Norte", "Ilocos Sur", "La Union", "Pangasinan"], famousLandmarks: ["Vigan", "Paoay Church"]),
                Region(name: "Central Luzon", provinces: ["Pampanga", "Tarlac", "Zambales", "Bulacan"], famousLandmarks: ["Mount Pinatubo", "Barasoain Church"])
            ], heroImageNames: ["luzon-metromanila","luzon-banaue","luzon-mayon"]
        ),
        IslandGroup(
            name: "Visayas",
            description: """
            The Visayas, located in the heart of the Philippine archipelago, is known for its pristine beaches, vibrant festivals, and resilient communities. Composed of several islands and provinces, this region is a melting pot of languages and traditions that reflect its long and storied past. From the sugar plantations of Negros to the coral-rich waters of Cebu and Bohol, the Visayas offer a wide range of natural wonders and cultural treasures.

            Historically, the region played an essential role during Spanish colonization, as seen in centuries-old churches and forts. Festivals like Sinulog and Ati-Atihan draw tourists and locals alike, showcasing the joyful spirit and deep faith of the Visayan people.
            """,
            regions: [
                Region(name: "Central Visayas", provinces: ["Cebu", "Bohol", "Negros Oriental", "Siquijor"], famousLandmarks: ["Chocolate Hills", "Magellan’s Cross"]),
                Region(name: "Western Visayas", provinces: ["Iloilo", "Aklan", "Capiz", "Antique"], famousLandmarks: ["Boracay", "Miagao Church"])
            ], heroImageNames: ["visayas-bohol", "visayas-iloilo", "visayas-magellan"]
        ),
        IslandGroup(
            name: "Mindanao",
            description: """
            Mindanao, often referred to as the Land of Promise, is the second-largest island in the Philippines and renowned for its rich natural resources and cultural diversity. From the majestic Mount Apo to the lush landscapes of Bukidnon and the pristine beaches of Davao Oriental, Mindanao’s geography is as varied as its people.

            The island is home to numerous indigenous communities, including the Lumad and Moro groups, each with unique traditions, languages, and histories. Despite past and present challenges, Mindanao continues to thrive, showcasing its vibrant cultural identity, agricultural productivity, and immense tourism potential.
            """,
            regions: [
                Region(name: "Northern Mindanao", provinces: ["Bukidnon", "Misamis Oriental", "Misamis Occidental"], famousLandmarks: ["Dahilayan Adventure Park", "Divine Mercy Shrine"]),
                Region(name: "Davao Region", provinces: ["Davao del Sur", "Davao del Norte", "Davao Oriental"], famousLandmarks: ["Mount Apo", "Eden Nature Park"])
            ], heroImageNames: ["mindanao-bukidnon", "mindanao-mtapo", "mindanao-sebu"]
        )
    ]
}



/*
 Photo credits: add to github readme later
 
 1. Photo by <a href="https://unsplash.com/@imgeraldescamos?utm_content=creditCopyText&utm_medium=referral&utm_source=unsplash">Gerald Escamos</a> on <a href="https://unsplash.com/photos/a-city-skyline-with-clouds-05r6nBARl2A?utm_content=creditCopyText&utm_medium=referral&utm_source=unsplash">Unsplash</a>
       
       
 2. Photo by <a href="https://unsplash.com/@taylorkeeran?utm_content=creditCopyText&utm_medium=referral&utm_source=unsplash">Taylor Keeran</a> on <a href="https://unsplash.com/photos/a-palm-tree-in-the-foreground-with-a-mountain-in-the-background-AeonZEmbHxU?utm_content=creditCopyText&utm_medium=referral&utm_source=unsplash">Unsplash</a>
 
 3. Photo by <a href="https://unsplash.com/@omridcohen?utm_content=creditCopyText&utm_medium=referral&utm_source=unsplash">Omri D. Cohen</a> on <a href="https://unsplash.com/photos/a-view-of-a-rice-field-with-mountains-in-the-background-n0cIllz0s08?utm_content=creditCopyText&utm_medium=referral&utm_source=unsplash">Unsplash</a>
 
 4. Photo by <a href="https://unsplash.com/@beiayson?utm_content=creditCopyText&utm_medium=referral&utm_source=unsplash">Bei Ayson</a> on <a href="https://unsplash.com/photos/brown-cross-on-white-wall-kD0ApmKkAOc?utm_content=creditCopyText&utm_medium=referral&utm_source=unsplash">Unsplash</a>
 
 5. Photo by <a href="https://unsplash.com/@namu_photograph?utm_content=creditCopyText&utm_medium=referral&utm_source=unsplash">Hitoshi Namura</a> on <a href="https://unsplash.com/photos/green-grass-field-under-blue-sky-during-daytime-MyiYvI-EKis?utm_content=creditCopyText&utm_medium=referral&utm_source=unsplash">Unsplash</a>
 6. Photo by <a href="https://unsplash.com/@jun03man?utm_content=creditCopyText&utm_medium=referral&utm_source=unsplash">Jvn Mangyao</a> on <a href="https://unsplash.com/photos/a-large-white-building-with-a-fountain-in-front-of-it--UeZaET49EY?utm_content=creditCopyText&utm_medium=referral&utm_source=unsplash">Unsplash</a>
 7. Photo by <a href="https://unsplash.com/@renesansz?utm_content=creditCopyText&utm_medium=referral&utm_source=unsplash">Rene Padillo</a> on <a href="https://unsplash.com/photos/a-river-running-through-a-lush-green-valley-J5QkB8IAg-k?utm_content=creditCopyText&utm_medium=referral&utm_source=unsplash">Unsplash</a>
 
 8. https://www.rappler.com/tachyon/r3-assets/4DD6A77DBC5B4C338DEC96105ABF79FB/img/C01AF679DB4749CBBE4C9D20CF736974/MT.-APO-REFLECTION-scaled.jpg?resize=2560%2C1707&zoom=1
 
 9. By Herbertkikoy - Own work, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=136654000
 
 */
