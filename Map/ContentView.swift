//
//  ContentView.swift
//  Map
//
//  Created by David Li on 2022-11-16.
//
import MapKit
import SwiftUI


struct ContentView: View {
    @State var showingSheet:Bool = false
    var body: some View {
       
        ZStack{
            Color("White")
            ScrollView{
                
                
                VStack{
                    
                    //create map
                    Map(coordinateRegion: .constant(
                        MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.477806, longitude: 0.0000), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
                    ))
                    .frame(height: 700)
                    .ignoresSafeArea()
                    Button("Open detail"){
                        showingSheet.toggle()
                    }
                    
                    .sheet(isPresented: $showingSheet){
                        SheetView()
                    }
                    
                    
                }
            }
        }
    }}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
