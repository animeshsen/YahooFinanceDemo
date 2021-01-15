//
//	Quarterly.swift

import Foundation

struct Quarterly : Codable {

	let actual : Float?
	let date : String?
	let estimate : Float?
	let earnings : Int?
	let revenue : Int?


	enum CodingKeys: String, CodingKey {
		case actual = "actual"
		case date = "date"
		case estimate = "estimate"
		case earnings = "earnings"
		case revenue = "revenue"
	}
	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		actual = try values.decodeIfPresent(Float.self, forKey: .actual)
		date = try values.decodeIfPresent(String.self, forKey: .date)
		estimate = try values.decodeIfPresent(Float.self, forKey: .estimate)
		earnings = try values.decodeIfPresent(Int.self, forKey: .earnings)
		revenue = try values.decodeIfPresent(Int.self, forKey: .revenue)
	}


}
