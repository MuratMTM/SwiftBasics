//
//  DownloadImageAsync.swift
//  SwiftConcurrency
//
//  Created by Murat Işık on 23.05.2024.
//

import SwiftUI

struct DownloadImageAsync: View {
    @StateObject private var viewModel = DownloadAsyncImageViewModel()
    
    var body: some View {
        VStack(alignment: .center){
            if let image = viewModel.image{
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    
                
               
            }
            Text("New Folder")
                .bold()
                .font(.subheadline)
                
        }.onAppear{
            viewModel.fetchImage()
        }
    }
}

#Preview {
    DownloadImageAsync()
}


class DownloadAsyncImageViewModel: ObservableObject {
    @Published var image: UIImage? = nil
    
    func fetchImage() {
       self.image = UIImage(systemName:"folder.fill.badge.plus")
   }
    
}
