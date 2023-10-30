//
//  ContentView.swift
//  SwiftBlockchain Demo
//
//  Created by R. Kukuh on 14/10/23.
//

import SwiftUI
import SwiftBlockchain

struct ContentView: View {
    
    @State private var genesisBlock = Block.genesis
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
            print("=== Genesis Block ===")
            print("Index: \(genesisBlock.index)")
            print("Nonce: \(genesisBlock.nonce)")
            print("Previous Hash: \(genesisBlock.previousHash)")
            print("Current Hash: \(genesisBlock.hash)")
            print("Timestamp: \(genesisBlock.timestamp)")
            print("Data: \(genesisBlock.data)")
        }
    }
    
}

#Preview {
    ContentView()
}
