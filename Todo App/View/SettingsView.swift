//
//  SettingsView.swift
//  Todo App
//
//  Created by Farrel hasyidan on 22/02/21.
//

import SwiftUI

struct SettingsView: View {
  
  
  @Environment(\.presentationMode) var presentationMode
    var body: some View {
      NavigationView{
        VStack(alignment: .center, spacing: 8){
          
          Form{
            Section(header: Text("Folow us on sosial media")){
              FormRowLinkView(icon: "globe", color: Color.pink, text: "webbsite", link: "https://github.com/Farrelhasyidan")
              
              FormRowLinkView(icon: "link", color: Color.blue, text: "Twitter", link: "https://github.com/Farrelhasyidan")
              
              FormRowLinkView(icon: "play.ractangle", color: Color.green, text: "course", link: "https://github.com/Farrelhasyidan")
            }
            .padding(.vertical, 3)
            
            Section(header: Text("About the aplication")){
              FormRowStaticView(icon: "gear",firstText: "Application", secondText: "Todo")
              FormRowStaticView(icon: "checkmark.seal",firstText: "Compatibility", secondText: "Iphone, Ipad")
              FormRowStaticView(icon: "keyboard",firstText: "Developer", secondText: "Farrel / great")
              FormRowStaticView(icon: "paintbrush",firstText: "Disigner", secondText: "Edi sunardi")
              FormRowStaticView(icon: "flag",firstText: "Version", secondText: "1.0.0")
            }
            .padding(.vertical, 3)
          }
          .listStyle(GroupedListStyle())
          .environment(\.horizontalSizeClass, .regular)
          
          Text("Copyright ©️ Allright reserved.\nBetter Apps ❤️ less code")
            .multilineTextAlignment(.center)
            .font(.footnote)
            .padding(.top, 6)
            .padding(.bottom, 8)
            .foregroundColor(Color.secondary)
        }
        navigationBarItems(trailing:
                            Button(action: {
                              self.presentationMode.wrappedValue.dismiss()
                            }){
                              Image(systemName: "xmark")
                            }
        )
        .navigationBarTitle("Settings", displayMode: .inline)
        background(Color("ColorBackground").edgesIgnoringSafeArea(.all))
      }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
