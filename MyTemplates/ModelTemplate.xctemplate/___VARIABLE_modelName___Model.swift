import SwiftUI
import IdentifiableByString

struct ___VARIABLE_modelName:identifier___Model: StringIdentifiable, Codable {
    let id: String
    let value: String?
    
    init(
        id: String,
        value: String? = nil
    ) {
        self.id = id
        self.value = value
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case value
    }
    
    var eventParameters: [String: Any] {
        let dict: [String: Any?] = [
            "___VARIABLE_lowercasedmodelname:identifier____\(CodingKeys.id.rawValue)": id,
            "___VARIABLE_lowercasedmodelname:identifier____\(CodingKeys.value.rawValue)": value
        ]
        return dict.compactMapValues({ $0 })
    }

}
