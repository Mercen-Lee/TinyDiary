//
//  ContentView.swift
//  TinyDiary
//
//  Created by Mercen on 2022/05/16.
//

import SwiftUI

struct ContentView: View {
    @State private var showModal = false
    var body: some View {
        NavigationView{
            List{
                Text("안뇽")
                Text("안뇽")
                Text("안뇽")
                Text("안뇽")
                    .navigationTitle("일기")
                    .navigationBarItems(trailing: Button(action: {self.showModal = true}) {
                        Image(systemName: "plus.circle.fill") })
                    .sheet(isPresented: self.$showModal) {CreateView()}
            }
        }
    }
}

struct CreateView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            List {
                TextField("제목을 입력하세요", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                TextField("내용을 입력하세요", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            }.listStyle(PlainListStyle())
            .navigationBarTitle("글쓰기")
            .navigationBarItems(trailing: Button("완료", action: {
                self.presentationMode.wrappedValue.dismiss()
            }))
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
