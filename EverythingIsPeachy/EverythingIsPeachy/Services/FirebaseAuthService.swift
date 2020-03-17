//
//  FirebaseAuthService.swift
//  EverythingIsPeachy
//
//  Created by Tanya Burke on 3/16/20.
//  Copyright © 2020 Tanya Burke. All rights reserved.
//

import Foundation
import FirebaseAuth

enum GenericError: Error {
    case unknown
}

class FirebaseAuthService {
    
    // MARK:- Static Properties
    
    static let manager = FirebaseAuthService()
           
    // MARK:- Internal Functions
    
    func loginUser(withEmail email: String, andPassword password: String, onCompletion: @escaping (Result<User, Error>) -> Void) {
        firebaseAuth.signIn(withEmail: email, password: password) { (result, error) in
            if let user = result?.user {
                onCompletion(.success(user))
            } else {
                onCompletion(.failure(error ?? GenericError.unknown))
            }
        }
    }
    
    func createNewUser(withEmail email: String, andPassword password: String, onCompletion: @escaping (Result<User, Error>) -> Void) {
        firebaseAuth.createUser(withEmail: email, password: password) { (result, error) in
            if let createdUser = result?.user {
                onCompletion(.success(createdUser))
            } else {
                onCompletion(.failure(error ?? GenericError.unknown))
            }
        }
    }
    
    // MARK:- Internal Properties
    
    var currentUser: User? {
        return firebaseAuth.currentUser
    }
    
    // MARK:- Private Properties
    
    private let firebaseAuth = Auth.auth()
    
    // MARK:- Private Initializers
    
    private init() {}
}
