//
//	Earning.swift

import Foundation

struct Earning : Codable {

	let earningsChart : EarningsChart?
	let financialCurrency : String?
	let financialsChart : FinancialsChart?
	let maxAge : Int?


	enum CodingKeys: String, CodingKey {
		case earningsChart
		case financialCurrency = "financialCurrency"
		case financialsChart
		case maxAge = "maxAge"
	}
	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		earningsChart = try EarningsChart(from: decoder)
		financialCurrency = try values.decodeIfPresent(String.self, forKey: .financialCurrency)
		financialsChart = try FinancialsChart(from: decoder)
		maxAge = try values.decodeIfPresent(Int.self, forKey: .maxAge)
	}


}
