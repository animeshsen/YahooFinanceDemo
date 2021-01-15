//
//	Yearly.swift

import Foundation

struct Yearly : Codable {

	let date : Int?
	let earnings : Int?
	let revenue : Int?


	enum CodingKeys: String, CodingKey {
		case date = "date"
		case earnings = "earnings"
		case revenue = "revenue"
	}
	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		date = try values.decodeIfPresent(Int.self, forKey: .date)
		earnings = try values.decodeIfPresent(Int.self, forKey: .earnings)
		revenue = try values.decodeIfPresent(Int.self, forKey: .revenue)
	}


}
