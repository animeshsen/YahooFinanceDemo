//
//	FinancialsChart.swift

import Foundation

struct FinancialsChart : Codable {

	let quarterly : [Quarterly]?
	let yearly : [Yearly]?


	enum CodingKeys: String, CodingKey {
		case quarterly = "quarterly"
		case yearly = "yearly"
	}
	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		quarterly = try values.decodeIfPresent([Quarterly].self, forKey: .quarterly)
		yearly = try values.decodeIfPresent([Yearly].self, forKey: .yearly)
	}


}
