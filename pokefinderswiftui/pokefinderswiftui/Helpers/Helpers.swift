//
//  Helpers.swift
//  pokefinderswiftui
//
//  Created by Justin on 1/29/24.
//

import Foundation

extension Bundle {
    func decode<T: Decodable>(file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Could  not find \(file) in bundle.")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Could not load \(file) from the bundle.")
        }
        
        let decoder = JSONDecoder()
        
        guard let loadedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Could not decode \(file) from the bundle.")
        }
        
        return loadedData
    }
    
    func fetchData<T: Decodable>(url: String, model: T.Type) async throws {
        guard let url = URL(string: url) else { return }
        
        do {
            let data = try await URLSession.shared.data(from: url)
            let serverData = try JSONDecoder().decode(T.self, from: data.0)
        } catch {
            print(error.localizedDescription)
        }
    }
}
