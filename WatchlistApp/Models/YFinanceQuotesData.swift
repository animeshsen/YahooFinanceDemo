//
//	YFinanceQuotesData.swift

import Foundation

struct YFinanceQuotesData : Codable {

	let quoteResponse : QuoteResponse?


	enum CodingKeys: String, CodingKey {
		case quoteResponse = "quoteResponse"
	}
	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
        quoteResponse = try values.decodeIfPresent(QuoteResponse.self, forKey: .quoteResponse)
	}


}
