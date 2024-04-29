//
//  ContentView.swift
//  HierarchicalList
//
//  Created by japsa on 22.04.2024.
//

import SwiftUI

struct ContentView: View {

    @State private var fileItems = FileItem.preview()

    var body: some View {
        List(fileItems, children: \.children) { fileItem in
            if fileItem.isFolder {
                Label(fileItem.title, systemImage: "folder.fill")
            } else {
                Label(fileItem.title, systemImage: "envelope")
            }
        }
    }
}
#Preview {
    ContentView()
}
