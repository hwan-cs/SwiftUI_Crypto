//
//  CoinModel.swift
//  Swiftful_Crypto
//
//  Created by Jung Hwan Park on 2023/02/26.
//

import Foundation

//CoinGecko API Info
/*
 https://api.coingecko.com/api/v3/coins/markets?vs_currency=krw&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=1h%2C24h%2C7d
 */
//JSON Response
/*
 {
     "id": "bitcoin",
     "symbol": "btc",
     "name": "Bitcoin",
     "image": "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
     "current_price": 30571424,
     "market_cap": 590102178527731,
     "market_cap_rank": 1,
     "fully_diluted_valuation": 642010035023243,
     "total_volume": 29475464448542,
     "high_24h": 30625973,
     "low_24h": 30076913,
     "price_change_24h": 302636,
     "price_change_percentage_24h": 0.99983,
     "market_cap_change_24h": 5923237627226,
     "market_cap_change_percentage_24h": 1.01394,
     "circulating_supply": 19302106,
     "total_supply": 21000000,
     "max_supply": 21000000,
     "ath": 81339064,
     "ath_change_percentage": -62.40651,
     "ath_date": "2021-11-10T14:24:11.849Z",
     "atl": 75594,
     "atl_change_percentage": 40350.66237,
     "atl_date": "2013-07-05T00:00:00.000Z",
     "roi": null,
     "last_updated": "2023-02-26T10:26:07.420Z",
     "sparkline_in_7d": {
       "price": [
         24715.397269922403,
         24611.235455459842,
         24607.19451392114,
         24584.204216706883,
         24597.992219855438,
         24648.182884953752,
         24680.414225768738,
         24688.44420706893,
         24680.35254689371,
         24722.665259136127,
         24941.421348504064,
         24811.629821453404,
         24575.718476823444,
         24447.433277864973,
         24535.41949302992,
         24517.17315319552,
         24525.046094321748,
         24480.53343383269,
         24322.563258356695,
         24228.784427258368,
         24235.936964705368,
         24330.874982208363,
         24429.71005966564,
         24512.16202462863,
         24462.198957935274,
         24515.33843564445,
         24518.962067453507,
         24453.928970153967,
         24885.053417947678,
         24890.781303644144,
         24916.2005783709,
         24803.7650001198,
         24864.151375677426,
         24972.047000210994,
         24923.84236428831,
         24889.483885081165,
         24868.74306697775,
         24791.713150868,
         24843.381417630946,
         24789.91562720742,
         24805.166669568982,
         24694.998348364225,
         24791.174738128513,
         24864.2572921906,
         24865.695679763776,
         24915.141860952826,
         24926.181458989326,
         24886.322731079672,
         24942.411853832433,
         24982.455934648817,
         24977.229588172384,
         24636.826151076795,
         24816.16991202087,
         24705.242314165407,
         24620.09851332096,
         24645.83935100631,
         24645.287313480385,
         24744.2704888648,
         24559.63045996503,
         24425.082151160153,
         24450.200388320085,
         24693.172169194302,
         24597.59208024316,
         24509.00495071723,
         24216.199314938425,
         24370.932550612804,
         24417.38703630947,
         24397.397744182686,
         24267.472839246897,
         24177.122052813782,
         24232.301096992152,
         24155.38913129515,
         24101.95979580724,
         23979.689917033713,
         24076.154678876246,
         23942.239790735774,
         24090.95415007665,
         24169.668962482414,
         24133.42080011329,
         24149.09812906485,
         24130.00537666956,
         24005.60066033856,
         23738.790027126597,
         23688.237675512464,
         23736.359875852024,
         23808.36149127166,
         23790.483047286212,
         23803.33475956488,
         23783.255767107872,
         24090.251960652262,
         24146.101364545222,
         24133.35362458213,
         24180.20245678518,
         24631.74748429756,
         24436.836955097122,
         24451.58460852732,
         24394.100220000757,
         24380.946288873587,
         24369.498250366214,
         24432.24273136602,
         24317.629788564882,
         24271.60002449245,
         23808.482425910828,
         23934.47243987676,
         24024.851566832083,
         24004.616705290737,
         23974.33557167891,
         23849.99341752732,
         23881.687373192664,
         23900.041755065267,
         23970.775585878942,
         23977.499568739844,
         23929.513327250857,
         23807.757150774065,
         23951.11098423326,
         23919.482970980607,
         24021.954249024628,
         23959.09243868054,
         23973.59139864187,
         23949.47472741839,
         23914.698669457153,
         23890.00621849711,
         23855.083614823972,
         23899.64848475247,
         23840.00739801152,
         23859.52393680906,
         23864.36690466105,
         23930.8360848966,
         23825.030154499673,
         23797.466451565513,
         23429.120219028155,
         23200.238165620314,
         23126.905006512574,
         23135.922044345592,
         23176.484691303656,
         23252.486927252023,
         23191.556265978357,
         23095.189800534477,
         23172.286538018925,
         23139.160222769155,
         23202.43048737314,
         23088.251835778472,
         23109.51150691621,
         23140.915581439658,
         23053.64036700261,
         23085.827967925015,
         23096.675565284815,
         23104.538010023964,
         23082.648719604058,
         22967.064972271433,
         22975.2573461622,
         23024.573673214425,
         23008.853820144104,
         23026.772503540607,
         23003.381147184693,
         22998.513037723496,
         23060.895078202837,
         22999.27773644485,
         22962.676435447087,
         22932.89635749938,
         22942.07677135949,
         23140.35565346518,
         23167.204864292522,
         23109.274124527044,
         23111.965294345282,
         23203.12054145884,
         23226.771708108896,
         23199.451796566933
       ]
     },
     "price_change_percentage_1h_in_currency": -0.03417186585029865,
     "price_change_percentage_24h_in_currency": 0.9998277628047385,
     "price_change_percentage_7d_in_currency": -4.26419610721691
   },
 */

struct CoinModel: Identifiable, Codable
{
    let id, symbol, name: String
    let image: String
    let currentPrice: Double
    let marketCap, marketCapRank, fullyDilutedValuation: Double?
    let totalVolume, high24H, low24H, priceChange24H: Double?
    let priceChangePercentage24H: Double?
    let marketCapChange24H: Double?
    let marketCapChangePercentage24H: Double?
    let circulatingSupply, totalSupply, maxSupply, ath: Double?
    let athChangePercentage: Double?
    let athDate: String?
    let atl: Double?
    let atlChangePercentage: Double?
    let atlDate: String?
    let lastUpdated: String?
    let sparklineIn7D: SparklineIn7D?
    let priceChangePercentage24HInCurrency: Double?
    let currentHoldings: Double?
    
    enum CodingKeys: String, CodingKey
    {
        case id, symbol, name, image
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case marketCapRank = "market_cap_rank"
        case fullyDilutedValuation = "fully_diluted_valuation"
        case totalVolume = "total_volume"
        case high24H = "high_24h"
        case low24H = "low_24h"
        case priceChange24H = "price_change_24h"
        case priceChangePercentage24H = "price_change_percentage_24h"
        case marketCapChange24H = "market_cap_change_24h"
        case marketCapChangePercentage24H = "market_cap_change_percentage_24h"
        case circulatingSupply = "circulating_supply"
        case totalSupply = "total_supply"
        case maxSupply = "max_supply"
        case ath
        case athChangePercentage = "ath_change_percentage"
        case athDate = "ath_date"
        case atl
        case atlChangePercentage = "atl_change_percentage"
        case atlDate = "atl_date"
        case lastUpdated = "last_updated"
        case sparklineIn7D = "sparkline_in_7d"
        case priceChangePercentage24HInCurrency = "price_change_percentage_24h_in_currency"
        case currentHoldings
    }
    
    func updateHoldings(amount: Double) -> CoinModel
    {
        return CoinModel(id: id, symbol: symbol, name: name, image: image, currentPrice: currentPrice, marketCap: marketCap, marketCapRank: marketCapRank, fullyDilutedValuation: fullyDilutedValuation, totalVolume: totalVolume, high24H: high24H, low24H: low24H, priceChange24H: priceChange24H, priceChangePercentage24H: priceChangePercentage24H, marketCapChange24H: marketCapChange24H, marketCapChangePercentage24H: marketCapChangePercentage24H, circulatingSupply: circulatingSupply, totalSupply: totalSupply, maxSupply: maxSupply, ath: ath, athChangePercentage: athChangePercentage, athDate: athDate, atl: atl, atlChangePercentage: atlChangePercentage, atlDate: atlDate, lastUpdated: lastUpdated, sparklineIn7D: sparklineIn7D, priceChangePercentage24HInCurrency: priceChangePercentage24HInCurrency, currentHoldings: amount)
    }
    
    var currentHoldingValue: Double
    {
        return (currentHoldings ?? 0) * currentPrice
    }
    
    var rank: Int
    {
        return Int(marketCapRank ?? 0)
    }
}

struct SparklineIn7D: Codable
{
    let price: [Double]?
}
