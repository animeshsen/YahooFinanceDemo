//
//	QuoteSummary.swift

import Foundation

struct QuoteSummary : Codable {

	let earnings : Earning?


	enum CodingKeys: String, CodingKey {
		case earnings = "earnings"
	}
	init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        earnings = try values.decodeIfPresent(Earning.self, forKey: .earnings)

	}


}
