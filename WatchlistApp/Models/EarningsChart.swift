//
//	EarningsChart.swift

import Foundation

struct EarningsChart : Codable {

	let currentQuarterEstimate : Float?
	let currentQuarterEstimateDate : String?
	let currentQuarterEstimateYear : Int?
	let earningsDate : [Int]?
	let quarterly : [Quarterly]?


	enum CodingKeys: String, CodingKey {
		case currentQuarterEstimate = "currentQuarterEstimate"
		case currentQuarterEstimateDate = "currentQuarterEstimateDate"
		case currentQuarterEstimateYear = "currentQuarterEstimateYear"
		case earningsDate = "earningsDate"
		case quarterly = "quarterly"
	}
	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		currentQuarterEstimate = try values.decodeIfPresent(Float.self, forKey: .currentQuarterEstimate)
		currentQuarterEstimateDate = try values.decodeIfPresent(String.self, forKey: .currentQuarterEstimateDate)
		currentQuarterEstimateYear = try values.decodeIfPresent(Int.self, forKey: .currentQuarterEstimateYear)
		earningsDate = try values.decodeIfPresent([Int].self, forKey: .earningsDate)
		quarterly = try values.decodeIfPresent([Quarterly].self, forKey: .quarterly)
	}


}
