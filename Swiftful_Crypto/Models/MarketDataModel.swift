//
//  MarketDataModel.swift
//  Swiftful_Crypto
//
//  Created by Jung Hwan Park on 2023/03/18.
//

import Foundation

//JSON Data:
/*
 
 URL: https://api.coingecko.com/api/v3/global
 
 JSON Response:
 {
   "data": {
     "active_cryptocurrencies": 11344,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 685,
     "total_market_cap": {
       "btc": 44239729.965335615,
       "eth": 669823939.9495193,
       "ltc": 14002231848.922949,
       "bch": 8982025733.705847,
       "bnb": 3536693799.021882,
       "eos": 1061221769253.831,
       "xrp": 3178208373370.153,
       "xlm": 13838475971411.607,
       "link": 168613519600.9216,
       "dot": 184339103617.13345,
       "yfi": 135756892.66261566,
       "usd": 1217513498056.0054,
       "aed": 4471805327009.887,
       "ars": 243626982171569,
       "aud": 1801322177995.3425,
       "bdt": 128747754596774.44,
       "bhd": 452876060844.8951,
       "bmd": 1217513498056.0054,
       "brl": 6427740761636.8545,
       "cad": 1676698713847.8276,
       "chf": 1123981676108.3464,
       "clp": 992080658952687.1,
       "cny": 8385258963811.324,
       "czk": 27391618679263.973,
       "dkk": 8498609470480.337,
       "eur": 1129471444471.0815,
       "gbp": 999806256928.1158,
       "hkd": 9557541835414.521,
       "huf": 454083834234966.75,
       "idr": 18718052519113004,
       "ils": 4415257912592.688,
       "inr": 100484615405331.98,
       "jpy": 160523067151193.7,
       "krw": 1593420790580794.8,
       "kwd": 368398886782.27985,
       "lkr": 406978418404691.75,
       "mmk": 2520974242237691.5,
       "mxn": 23028050302231.277,
       "myr": 5461156795530.21,
       "ngn": 552711460310145.8,
       "nok": 13030401687539.459,
       "nzd": 1941188911138.5159,
       "php": 66628426181114.95,
       "pkr": 338237741448447.94,
       "pln": 5367225629155.17,
       "rub": 93726982056315.67,
       "sar": 4572637359891.919,
       "sek": 12952986091765.572,
       "sgd": 1633294357642.128,
       "thb": 41054729258878.68,
       "try": 23158202495173.43,
       "twd": 37296090985949.57,
       "uah": 44336667166833.15,
       "vef": 121909626560.34782,
       "vnd": 28727230986631410,
       "zar": 23095451849483.633,
       "xdr": 904509040408.276,
       "xag": 53878259575.42293,
       "xau": 612397114.3871893,
       "bits": 44239729965335.62,
       "sats": 4423972996533561.5
     },
     "total_volume": {
       "btc": 7553772.719275847,
       "eth": 114369997.47225194,
       "ltc": 2390830075.8672404,
       "bch": 1533648171.0956151,
       "bnb": 603877581.4503523,
       "eos": 181199750902.01532,
       "xrp": 542667501039.1962,
       "xlm": 2362869356370.636,
       "link": 28790144186.2443,
       "dot": 31475230366.2327,
       "yfi": 23179994.8383963,
       "usd": 207885994199.59842,
       "aed": 763544468095.7024,
       "ars": 41598419634321.56,
       "aud": 307569199392.2537,
       "bdt": 21983210049048.008,
       "bhd": 77326937490.43604,
       "bmd": 207885994199.59842,
       "brl": 1097513317777.3566,
       "cad": 286290196911.9769,
       "chf": 191915776353.19678,
       "clp": 169394158210051.44,
       "cny": 1431752419251.475,
       "czk": 4677019097502.56,
       "dkk": 1451106605311.4573,
       "eur": 192853134301.04288,
       "gbp": 170713275918.78546,
       "hkd": 1631915448766.5537,
       "huf": 77533160396682.06,
       "idr": 3196039274824622,
       "ils": 753889203095.1044,
       "inr": 17157381999177.49,
       "jpy": 27408728905246,
       "krw": 272070794908724.06,
       "kwd": 62902767782.89701,
       "lkr": 69490082256112.84,
       "mmk": 430447167555800.25,
       "mxn": 3931955694291.203,
       "myr": 932472626982.2985,
       "ngn": 94373468233040.6,
       "nok": 2224893616341.377,
       "nzd": 331450934519.90894,
       "php": 11376561032573.035,
       "pkr": 57752862098948.87,
       "pln": 916434222529.7961,
       "rub": 16003540723955.754,
       "sar": 780761170363.33,
       "sek": 2211675185400.196,
       "sgd": 278879061218.76074,
       "thb": 7009945452107.621,
       "try": 3954178707071.135,
       "twd": 6368171660316.291,
       "uah": 7570324393274.056,
       "vef": 20815624599.20579,
       "vnd": 4905070033139519,
       "zar": 3943464262930.0884,
       "xdr": 154441623380.79446,
       "xag": 9199516535.51656,
       "xau": 104564576.22245587,
       "bits": 7553772719275.847,
       "sats": 755377271927584.8
     },
     "market_cap_percentage": {
       "btc": 43.67330002949629,
       "eth": 17.98340845337287,
       "usdt": 6.289528336200871,
       "bnb": 4.465404834378152,
       "usdc": 2.987770318810703,
       "xrp": 1.6051415647510305,
       "ada": 1.025191763525448,
       "matic": 0.9211141362975852,
       "doge": 0.8865689395643018,
       "steth": 0.8658236863859223
     },
     "market_cap_change_percentage_24h_usd": 2.181933115060975,
     "updated_at": 1679142563
   }
 }
 
 */

import Foundation

// MARK: - GlobalData
struct GlobalData: Codable
{
    let data: MarketDataModel?
}

// MARK: - MarketDataModel
struct MarketDataModel: Codable
{
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey
    {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String
    {
        if let items = totalMarketCap.first(where: {  $0.key == "usd" })
        {
            return "$\(items.value.formattedWithAbbreviations())"
        }
        return ""
    }
    
    var volume: String
    {
        if let items = totalVolume.first(where: {  $0.key == "usd" })
        {
            return "$\(items.value.formattedWithAbbreviations())"
        }
        return ""
    }
    
    var btcDominance: String
    {
        if let items = marketCapPercentage.first(where: {  $0.key == "btc" })
        {
            return "\(items.value.asPercentString())"
        }
        return ""
    }
}

