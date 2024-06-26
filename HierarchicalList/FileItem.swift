//
//  FileItem.swift
//  HierarchicalList
//
//  Created by japsa on 22.04.2024.
//

import SwiftUI

struct FileItem: Hashable, Identifiable {
 var title: String
 let isFolder: Bool
 var children: [FileItem]? = nil
 let id = UUID()
    
 static func preview() -> [FileItem] {
     [FileItem(title: "Inbox",
           isFolder: true,
           children: [FileItem(title: "My first email",
                     isFolder: false),
    FileItem(title: "My second email",
                    isFolder: false)]),
      FileItem(title: "Archived",
               isFolder: true,
               children: [FileItem(title: "work",
                                   isFolder: true,
                                   children: [FileItem(title: "Next Task", isFolder: false)]),
        FileItem(title: "personal",
          isFolder: true,
            children: [FileItem(title: "Your Subscription expired", isFolder: false)])]),
      FileItem(title: "Trash", isFolder: true)]
    }
}
