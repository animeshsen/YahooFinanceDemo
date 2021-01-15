//
//	QuoteResponse.swift

import Foundation

struct QuoteResponse : Codable {

	let error : String?
	let result : [Result]?


	enum CodingKeys: String, CodingKey {
		case error = "error"
		case result = "result"
	}
	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		error = try values.decodeIfPresent(String.self, forKey: .error)
		result = try values.decodeIfPresent([Result].self, forKey: .result)
	}


}
