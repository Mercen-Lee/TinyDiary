//
//  ContentView.swift
//  TinyDiary
//
//  Created by Mercen on 2022/05/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List{
                Text("안뇽")
                    .navigationTitle("일기")
                    .navigationBarItems(trailing: NavigationLink(destination: CreateView()) {
                        Image(systemName: "plus.circle.fill") })
            }
        }
    }
}

struct CreateView: View {
    var body: some View {
        Text("안뇽")
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
