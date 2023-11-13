//
//  ModelData.swift
//  Landmarks
//
//  Created by Shreyas Basavatia on 10/10/23.
//

import Foundation

@Observable
class ModelData {
    var landmarks: [Landmark] = load("landmarkData.json")
}

var landmarks: [Landmark] = load("landmarkData.json")

// Load method fetches JSON data
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    // Get the file
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    // Retrieve contents of the file
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    // Decode the contents
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't part \(filename) as \(T.self):\n\(error)")
    }
}
