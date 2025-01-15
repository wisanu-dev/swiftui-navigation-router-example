//
//  StoreDataObject.swift
//  navigation-router-example
//
//  Created by Wisanu Paunglumjeak on 15/1/2568 BE.
//

import Foundation

class StoreDataObject: ObservableObject {
    
    @Published var someInteger: Int? = nil
    @Published var someString: String? = nil
    
    init(someInteger: Int? = nil, someString: String? = nil) {
        self.someInteger = someInteger
        self.someString = someString
    }
    
}
