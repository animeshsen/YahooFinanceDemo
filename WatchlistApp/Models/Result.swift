//
//	Result.swift

import Foundation

struct Result : Codable {

	let ask : Float?
	let askSize : Int?
	let averageDailyVolume10Day : Int?
	let averageDailyVolume3Month : Int?
	let beta : Float?
	let bid : Float?
	let bidSize : Int?
	let bookValue : Float?
	let components : [String]?
	let currency : String?
	let dividendDate : Int?
	let dividendRate : Float?
	let dividendYield : Float?
	let dividendsPerShare : Float?
	let earningsTimestamp : Int?
	let earningsTimestampEnd : Int?
	let earningsTimestampStart : Int?
	let ebitda : Int?
	let epsCurrentYear : Float?
	let epsForward : Float?
	let epsNextQuarter : Float?
	let epsTrailingTwelveMonths : Float?
	let esgPopulated : Bool?
	let exDividendDate : Int?
	let exchange : String?
	let exchangeDataDelayedBy : Int?
	let exchangeTimezoneName : String?
	let exchangeTimezoneShortName : String?
	let fiftyDayAverage : Float?
	let fiftyDayAverageChange : Float?
	let fiftyDayAverageChangePercent : Float?
	let fiftyTwoWeekHigh : Float?
	let fiftyTwoWeekHighChange : Float?
	let fiftyTwoWeekHighChangePercent : Float?
	let fiftyTwoWeekLow : Float?
	let fiftyTwoWeekLowChange : Float?
	let fiftyTwoWeekLowChangePercent : Float?
	let fiftyTwoWeekRange : String?
	let firstTradeDateMilliseconds : Int?
	let floatShares : Int?
	let forwardPE : Float?
	let fullExchangeName : String?
	let gmtOffSetMilliseconds : Int?
	let heldPercentInsiders : Float?
	let heldPercentInstitutions : Float?
	let language : String?
	let longName : String?
	let market : String?
	let marketCap : Int?
	let marketState : String?
	let messageBoardId : String?
	let pageViews : PageView?
	let pegRatio : Float?
	let postMarketChange : Float?
	let postMarketChangePercent : Float?
	let postMarketPrice : Float?
	let postMarketTime : Int?
	let priceEpsCurrentYear : Float?
	let priceEpsNextQuarter : Float?
	let priceHint : Int?
	let priceToBook : Float?
	let priceToSales : Float?
	let quoteSourceName : String?
	let quoteSummary : QuoteSummary?
	let quoteType : String?
	let region : String?
	let regularMarketChange : Float?
	let regularMarketChangePercent : Float?
	let regularMarketDayHigh : Float?
	let regularMarketDayLow : Float?
	let regularMarketDayRange : String?
	let regularMarketOpen : Float?
	let regularMarketPreviousClose : Float?
	let regularMarketPrice : Float?
	let regularMarketTime : Int?
	let regularMarketVolume : Int?
	let revenue : Float?
	let sharesOutstanding : Int?
	let sharesShort : Int?
	let sharesShortPrevMonth : Int?
	let shortName : String?
	let shortPercentFloat : Float?
	let shortRatio : Float?
	let sourceInterval : Int?
	let symbol : String?
	let targetPriceHigh : Float?
	let targetPriceLow : Float?
	let targetPriceMean : Float?
	let targetPriceMedian : Float?
	let totalCash : Float?
	let tradeable : Bool?
	let trailingAnnualDividendRate : Float?
	let trailingAnnualDividendYield : Float?
	let trailingPE : Float?
	let triggerable : Bool?
	let twoHundredDayAverage : Float?
	let twoHundredDayAverageChange : Float?
	let twoHundredDayAverageChangePercent : Float?


	enum CodingKeys: String, CodingKey {
		case ask = "ask"
		case askSize = "askSize"
		case averageDailyVolume10Day = "averageDailyVolume10Day"
		case averageDailyVolume3Month = "averageDailyVolume3Month"
		case beta = "beta"
		case bid = "bid"
		case bidSize = "bidSize"
		case bookValue = "bookValue"
		case components = "components"
		case currency = "currency"
		case dividendDate = "dividendDate"
		case dividendRate = "dividendRate"
		case dividendYield = "dividendYield"
		case dividendsPerShare = "dividendsPerShare"
		case earningsTimestamp = "earningsTimestamp"
		case earningsTimestampEnd = "earningsTimestampEnd"
		case earningsTimestampStart = "earningsTimestampStart"
		case ebitda = "ebitda"
		case epsCurrentYear = "epsCurrentYear"
		case epsForward = "epsForward"
		case epsNextQuarter = "epsNextQuarter"
		case epsTrailingTwelveMonths = "epsTrailingTwelveMonths"
		case esgPopulated = "esgPopulated"
		case exDividendDate = "exDividendDate"
		case exchange = "exchange"
		case exchangeDataDelayedBy = "exchangeDataDelayedBy"
		case exchangeTimezoneName = "exchangeTimezoneName"
		case exchangeTimezoneShortName = "exchangeTimezoneShortName"
		case fiftyDayAverage = "fiftyDayAverage"
		case fiftyDayAverageChange = "fiftyDayAverageChange"
		case fiftyDayAverageChangePercent = "fiftyDayAverageChangePercent"
		case fiftyTwoWeekHigh = "fiftyTwoWeekHigh"
		case fiftyTwoWeekHighChange = "fiftyTwoWeekHighChange"
		case fiftyTwoWeekHighChangePercent = "fiftyTwoWeekHighChangePercent"
		case fiftyTwoWeekLow = "fiftyTwoWeekLow"
		case fiftyTwoWeekLowChange = "fiftyTwoWeekLowChange"
		case fiftyTwoWeekLowChangePercent = "fiftyTwoWeekLowChangePercent"
		case fiftyTwoWeekRange = "fiftyTwoWeekRange"
		case firstTradeDateMilliseconds = "firstTradeDateMilliseconds"
		case floatShares = "floatShares"
		case forwardPE = "forwardPE"
		case fullExchangeName = "fullExchangeName"
		case gmtOffSetMilliseconds = "gmtOffSetMilliseconds"
		case heldPercentInsiders = "heldPercentInsiders"
		case heldPercentInstitutions = "heldPercentInstitutions"
		case language = "language"
		case longName = "longName"
		case market = "market"
		case marketCap = "marketCap"
		case marketState = "marketState"
		case messageBoardId = "messageBoardId"
		case pageViews
		case pegRatio = "pegRatio"
		case postMarketChange = "postMarketChange"
		case postMarketChangePercent = "postMarketChangePercent"
		case postMarketPrice = "postMarketPrice"
		case postMarketTime = "postMarketTime"
		case priceEpsCurrentYear = "priceEpsCurrentYear"
		case priceEpsNextQuarter = "priceEpsNextQuarter"
		case priceHint = "priceHint"
		case priceToBook = "priceToBook"
		case priceToSales = "priceToSales"
		case quoteSourceName = "quoteSourceName"
		case quoteSummary
		case quoteType = "quoteType"
		case region = "region"
		case regularMarketChange = "regularMarketChange"
		case regularMarketChangePercent = "regularMarketChangePercent"
		case regularMarketDayHigh = "regularMarketDayHigh"
		case regularMarketDayLow = "regularMarketDayLow"
		case regularMarketDayRange = "regularMarketDayRange"
		case regularMarketOpen = "regularMarketOpen"
		case regularMarketPreviousClose = "regularMarketPreviousClose"
		case regularMarketPrice = "regularMarketPrice"
		case regularMarketTime = "regularMarketTime"
		case regularMarketVolume = "regularMarketVolume"
		case revenue = "revenue"
		case sharesOutstanding = "sharesOutstanding"
		case sharesShort = "sharesShort"
		case sharesShortPrevMonth = "sharesShortPrevMonth"
		case shortName = "shortName"
		case shortPercentFloat = "shortPercentFloat"
		case shortRatio = "shortRatio"
		case sourceInterval = "sourceInterval"
		case symbol = "symbol"
		case targetPriceHigh = "targetPriceHigh"
		case targetPriceLow = "targetPriceLow"
		case targetPriceMean = "targetPriceMean"
		case targetPriceMedian = "targetPriceMedian"
		case totalCash = "totalCash"
		case tradeable = "tradeable"
		case trailingAnnualDividendRate = "trailingAnnualDividendRate"
		case trailingAnnualDividendYield = "trailingAnnualDividendYield"
		case trailingPE = "trailingPE"
		case triggerable = "triggerable"
		case twoHundredDayAverage = "twoHundredDayAverage"
		case twoHundredDayAverageChange = "twoHundredDayAverageChange"
		case twoHundredDayAverageChangePercent = "twoHundredDayAverageChangePercent"
	}
	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		ask = try values.decodeIfPresent(Float.self, forKey: .ask)
		askSize = try values.decodeIfPresent(Int.self, forKey: .askSize)
		averageDailyVolume10Day = try values.decodeIfPresent(Int.self, forKey: .averageDailyVolume10Day)
		averageDailyVolume3Month = try values.decodeIfPresent(Int.self, forKey: .averageDailyVolume3Month)
		beta = try values.decodeIfPresent(Float.self, forKey: .beta)
		bid = try values.decodeIfPresent(Float.self, forKey: .bid)
		bidSize = try values.decodeIfPresent(Int.self, forKey: .bidSize)
		bookValue = try values.decodeIfPresent(Float.self, forKey: .bookValue)
		components = try values.decodeIfPresent([String].self, forKey: .components)
		currency = try values.decodeIfPresent(String.self, forKey: .currency)
		dividendDate = try values.decodeIfPresent(Int.self, forKey: .dividendDate)
		dividendRate = try values.decodeIfPresent(Float.self, forKey: .dividendRate)
		dividendYield = try values.decodeIfPresent(Float.self, forKey: .dividendYield)
		dividendsPerShare = try values.decodeIfPresent(Float.self, forKey: .dividendsPerShare)
		earningsTimestamp = try values.decodeIfPresent(Int.self, forKey: .earningsTimestamp)
		earningsTimestampEnd = try values.decodeIfPresent(Int.self, forKey: .earningsTimestampEnd)
		earningsTimestampStart = try values.decodeIfPresent(Int.self, forKey: .earningsTimestampStart)
		ebitda = try values.decodeIfPresent(Int.self, forKey: .ebitda)
		epsCurrentYear = try values.decodeIfPresent(Float.self, forKey: .epsCurrentYear)
		epsForward = try values.decodeIfPresent(Float.self, forKey: .epsForward)
		epsNextQuarter = try values.decodeIfPresent(Float.self, forKey: .epsNextQuarter)
		epsTrailingTwelveMonths = try values.decodeIfPresent(Float.self, forKey: .epsTrailingTwelveMonths)
		esgPopulated = try values.decodeIfPresent(Bool.self, forKey: .esgPopulated)
		exDividendDate = try values.decodeIfPresent(Int.self, forKey: .exDividendDate)
		exchange = try values.decodeIfPresent(String.self, forKey: .exchange)
		exchangeDataDelayedBy = try values.decodeIfPresent(Int.self, forKey: .exchangeDataDelayedBy)
		exchangeTimezoneName = try values.decodeIfPresent(String.self, forKey: .exchangeTimezoneName)
		exchangeTimezoneShortName = try values.decodeIfPresent(String.self, forKey: .exchangeTimezoneShortName)
		fiftyDayAverage = try values.decodeIfPresent(Float.self, forKey: .fiftyDayAverage)
		fiftyDayAverageChange = try values.decodeIfPresent(Float.self, forKey: .fiftyDayAverageChange)
		fiftyDayAverageChangePercent = try values.decodeIfPresent(Float.self, forKey: .fiftyDayAverageChangePercent)
		fiftyTwoWeekHigh = try values.decodeIfPresent(Float.self, forKey: .fiftyTwoWeekHigh)
		fiftyTwoWeekHighChange = try values.decodeIfPresent(Float.self, forKey: .fiftyTwoWeekHighChange)
		fiftyTwoWeekHighChangePercent = try values.decodeIfPresent(Float.self, forKey: .fiftyTwoWeekHighChangePercent)
		fiftyTwoWeekLow = try values.decodeIfPresent(Float.self, forKey: .fiftyTwoWeekLow)
		fiftyTwoWeekLowChange = try values.decodeIfPresent(Float.self, forKey: .fiftyTwoWeekLowChange)
		fiftyTwoWeekLowChangePercent = try values.decodeIfPresent(Float.self, forKey: .fiftyTwoWeekLowChangePercent)
		fiftyTwoWeekRange = try values.decodeIfPresent(String.self, forKey: .fiftyTwoWeekRange)
		firstTradeDateMilliseconds = try values.decodeIfPresent(Int.self, forKey: .firstTradeDateMilliseconds)
		floatShares = try values.decodeIfPresent(Int.self, forKey: .floatShares)
		forwardPE = try values.decodeIfPresent(Float.self, forKey: .forwardPE)
		fullExchangeName = try values.decodeIfPresent(String.self, forKey: .fullExchangeName)
		gmtOffSetMilliseconds = try values.decodeIfPresent(Int.self, forKey: .gmtOffSetMilliseconds)
		heldPercentInsiders = try values.decodeIfPresent(Float.self, forKey: .heldPercentInsiders)
		heldPercentInstitutions = try values.decodeIfPresent(Float.self, forKey: .heldPercentInstitutions)
		language = try values.decodeIfPresent(String.self, forKey: .language)
		longName = try values.decodeIfPresent(String.self, forKey: .longName)
		market = try values.decodeIfPresent(String.self, forKey: .market)
		marketCap = try values.decodeIfPresent(Int.self, forKey: .marketCap)
		marketState = try values.decodeIfPresent(String.self, forKey: .marketState)
		messageBoardId = try values.decodeIfPresent(String.self, forKey: .messageBoardId)
		pageViews = try PageView(from: decoder)
		pegRatio = try values.decodeIfPresent(Float.self, forKey: .pegRatio)
		postMarketChange = try values.decodeIfPresent(Float.self, forKey: .postMarketChange)
		postMarketChangePercent = try values.decodeIfPresent(Float.self, forKey: .postMarketChangePercent)
		postMarketPrice = try values.decodeIfPresent(Float.self, forKey: .postMarketPrice)
		postMarketTime = try values.decodeIfPresent(Int.self, forKey: .postMarketTime)
		priceEpsCurrentYear = try values.decodeIfPresent(Float.self, forKey: .priceEpsCurrentYear)
		priceEpsNextQuarter = try values.decodeIfPresent(Float.self, forKey: .priceEpsNextQuarter)
		priceHint = try values.decodeIfPresent(Int.self, forKey: .priceHint)
		priceToBook = try values.decodeIfPresent(Float.self, forKey: .priceToBook)
		priceToSales = try values.decodeIfPresent(Float.self, forKey: .priceToSales)
		quoteSourceName = try values.decodeIfPresent(String.self, forKey: .quoteSourceName)
		quoteSummary = try QuoteSummary(from: decoder)
		quoteType = try values.decodeIfPresent(String.self, forKey: .quoteType)
		region = try values.decodeIfPresent(String.self, forKey: .region)
		regularMarketChange = try values.decodeIfPresent(Float.self, forKey: .regularMarketChange)
		regularMarketChangePercent = try values.decodeIfPresent(Float.self, forKey: .regularMarketChangePercent)
		regularMarketDayHigh = try values.decodeIfPresent(Float.self, forKey: .regularMarketDayHigh)
		regularMarketDayLow = try values.decodeIfPresent(Float.self, forKey: .regularMarketDayLow)
		regularMarketDayRange = try values.decodeIfPresent(String.self, forKey: .regularMarketDayRange)
		regularMarketOpen = try values.decodeIfPresent(Float.self, forKey: .regularMarketOpen)
		regularMarketPreviousClose = try values.decodeIfPresent(Float.self, forKey: .regularMarketPreviousClose)
		regularMarketPrice = try values.decodeIfPresent(Float.self, forKey: .regularMarketPrice)
		regularMarketTime = try values.decodeIfPresent(Int.self, forKey: .regularMarketTime)
		regularMarketVolume = try values.decodeIfPresent(Int.self, forKey: .regularMarketVolume)
		revenue = try values.decodeIfPresent(Float.self, forKey: .revenue)
		sharesOutstanding = try values.decodeIfPresent(Int.self, forKey: .sharesOutstanding)
		sharesShort = try values.decodeIfPresent(Int.self, forKey: .sharesShort)
		sharesShortPrevMonth = try values.decodeIfPresent(Int.self, forKey: .sharesShortPrevMonth)
		shortName = try values.decodeIfPresent(String.self, forKey: .shortName)
		shortPercentFloat = try values.decodeIfPresent(Float.self, forKey: .shortPercentFloat)
		shortRatio = try values.decodeIfPresent(Float.self, forKey: .shortRatio)
		sourceInterval = try values.decodeIfPresent(Int.self, forKey: .sourceInterval)
		symbol = try values.decodeIfPresent(String.self, forKey: .symbol)
		targetPriceHigh = try values.decodeIfPresent(Float.self, forKey: .targetPriceHigh)
		targetPriceLow = try values.decodeIfPresent(Float.self, forKey: .targetPriceLow)
		targetPriceMean = try values.decodeIfPresent(Float.self, forKey: .targetPriceMean)
		targetPriceMedian = try values.decodeIfPresent(Float.self, forKey: .targetPriceMedian)
		totalCash = try values.decodeIfPresent(Float.self, forKey: .totalCash)
		tradeable = try values.decodeIfPresent(Bool.self, forKey: .tradeable)
		trailingAnnualDividendRate = try values.decodeIfPresent(Float.self, forKey: .trailingAnnualDividendRate)
		trailingAnnualDividendYield = try values.decodeIfPresent(Float.self, forKey: .trailingAnnualDividendYield)
		trailingPE = try values.decodeIfPresent(Float.self, forKey: .trailingPE)
		triggerable = try values.decodeIfPresent(Bool.self, forKey: .triggerable)
		twoHundredDayAverage = try values.decodeIfPresent(Float.self, forKey: .twoHundredDayAverage)
		twoHundredDayAverageChange = try values.decodeIfPresent(Float.self, forKey: .twoHundredDayAverageChange)
		twoHundredDayAverageChangePercent = try values.decodeIfPresent(Float.self, forKey: .twoHundredDayAverageChangePercent)
	}


}
