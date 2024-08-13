//
//  LockerView.swift
//  OOTD
//
//  Created by ♔ Temi Anjorin on 8/12/24.
//

import SwiftUI

struct LockerView: View {
    @EnvironmentObject var lockerViewModel: LockerViewModel
    @State private var selectedCategory: ItemCategory = .hats

    // Define the layout for the grid
    let gridLayout = [GridItem(.adaptive(minimum: 150))]

    var body: some View {
        NavigationView {
            VStack {
                // Grid of Category Boxes
                ScrollView {
                    LazyVGrid(columns: gridLayout, spacing: 20) {
                        ForEach(ItemCategory.allCases, id: \.self) { category in
                            CategoryBox(category: category)
                                .onTapGesture {
                                    selectedCategory = category
                                }
                        }
                    }
                    .padding()
                }

                // Display items for the selected category
                if !lockerViewModel.items(for: selectedCategory).isEmpty {
                    VStack(alignment: .leading) {
                        Text("\(selectedCategory.rawValue) Items")
                            .font(.headline)
                            .padding(.leading)

                        ScrollView {
                            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))], spacing: 20) {
                                ForEach(lockerViewModel.items(for: selectedCategory)) { item in
                                    LockerItemView(item: item)
                                }
                            }
                            .padding()
                        }
                    }
                }
            }
            .navigationTitle("Locker")
        }
    }
}

struct CategoryBox: View {
    var category: ItemCategory

    var body: some View {
        VStack {
            Text(category.rawValue)
                .font(.title)
                .bold()
                .padding()
            
            // You can add an icon or image here for each category if desired
            Image(systemName: "box")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .padding()
        }
        .frame(height: 150)
        .background(Color.gray.opacity(0.1))
        .cornerRadius(15)
        .shadow(radius: 5)
    }
}

struct LockerItemView: View {
    var item: LockerItem

    var body: some View {
        VStack {
            Image(uiImage: item.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
                .padding(5)

            Text(item.name)
                .font(.caption)
                .lineLimit(1)
                .padding(.top, 5)
        }
        .frame(width: 100, height: 120)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

struct LockerView_Previews: PreviewProvider {
    static var previews: some View {
        LockerView()
            .environmentObject(LockerViewModel())
    }
}
