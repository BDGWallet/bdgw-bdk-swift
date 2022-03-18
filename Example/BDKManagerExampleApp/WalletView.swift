//
//  WalletView.swift
//  BDKManagerExampleApp
//
//  Created by Daniel Nordh on 3/18/22.
//

import SwiftUI
import BDKManager

struct WalletView: View {
    @EnvironmentObject var bdkManager: BDKManager
    
    var body: some View {
        Text("Hello, world!")
            .padding()
        switch bdkManager.syncState {
        case .synced:
            Text("Balance: \(bdkManager.balance)")
        case .syncing:
            Text("Syncing node")
        default:
            Text("Node not synced")
        }
    }
}