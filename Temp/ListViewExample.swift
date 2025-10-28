//
//  ListViewExample.swift
//  Temp
//
//  Created by next on 25/10/25.
//

import SwiftUI

struct ListViewExample: View {



    
    let items = ["First","Second","Third","First","Second","Third","First","Second","Third","First","First","Second","Third","new","Second","Third","First","Second","Third","First","Second","Third","First","First","Second","Third","new","Second","Third","First","Second","Third","First","Second","Third","First","First","Second","Third","new","Second","Third","First","Second","Third","First","Second","Third","First","First","Second","Third","new"]
    var body: some View {
        
          //MARK: - Here We are using id to so that the perticular item will use as id of that same item so use "\.self" else we can declare a struct as a modal which implement the protocol i.e Identifiable in which we must need to provide id 
        List(items, id: \.self) { item in
            HStack{
                    Image(systemName: "pencil")
                    Text(item)
                }
            }
        }
    }


struct ListViewExample_Previews: PreviewProvider {
    static var previews: some View {
        ListViewExample()
    }
}
