//
//  Task.swift
//  realm-demo
//
//  Created by Taro Altrichter on 30.04.25.
//

import Foundation
import RealmSwift

class Task: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var title = ""
    @Persisted var completed = false
}
