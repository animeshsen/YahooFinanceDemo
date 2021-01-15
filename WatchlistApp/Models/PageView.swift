//
//	PageView.swift

import Foundation

struct PageView : Codable {

	let longTermTrend : String?
	let midTermTrend : String?
	let shortTermTrend : String?


	enum CodingKeys: String, CodingKey {
		case longTermTrend = "longTermTrend"
		case midTermTrend = "midTermTrend"
		case shortTermTrend = "shortTermTrend"
	}
	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		longTermTrend = try values.decodeIfPresent(String.self, forKey: .longTermTrend)
		midTermTrend = try values.decodeIfPresent(String.self, forKey: .midTermTrend)
		shortTermTrend = try values.decodeIfPresent(String.self, forKey: .shortTermTrend)
	}


}
