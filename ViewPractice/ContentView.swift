//
//  ContentView.swift
//  ViewPractice
//
//  Created by Ryuga on 2024/01/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }

        InsideMultiView()
        OutSideMultiView()
    }
///    ViewBuilderがないと以下のエラーが出る。
///    Function declares an opaque return type, but has no return statements in its body from which to infer an underlying type
    @ViewBuilder
    private func InsideMultiView() -> some View {
        Image(systemName: "plus")
        Image(systemName: "plus")
        Image(systemName: "plus")
    }
}

struct OutSideMultiView: View {
    // bodyプロパティに暗黙的にViewBuilderが使われているので、
    // 複数のViewを記載することができる。
    var body: some View {
        Image(systemName: "plus.circle")
        Image(systemName: "plus.circle")
        Image(systemName: "plus.circle")
    }
}

#Preview {
    ContentView()
}
