//
//  BarcodeScannerViewModel.swift
//  SwiftUI-BarcodeScaner-IOS16
//
//  Created by Daniel Felipe on 31/01/24.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
//    @State private var scannedCode = ""
//    @State private var alertItem: AlertItem?
    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?
    
    var statusText: String {
       return scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode
    }
    
    var statusTextColor: Color {
        scannedCode.isEmpty ? .red : .green
    }
}
