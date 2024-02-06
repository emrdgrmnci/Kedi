//
//  RCMeModel.swift
//  Kedi
//
//  Created by Saffet Emin Reisoğlu on 2/3/24.
//

import Foundation

struct RCMeModel: Decodable {
    
    var distinctId: String?
    var email: String?
    var name: String?
    var firstTransactionAt: String?
    var currentPlan: String?
    var billingInfo: RCMeBillingInfoModel?
    
    enum CodingKeys: String, CodingKey {
        case distinctId = "distinct_id"
        case email
        case name
        case firstTransactionAt = "first_transaction_at"
        case currentPlan = "current_plan"
        case billingInfo = "billing_info"
    }
}

struct RCMeBillingInfoModel: Decodable {
    
    var currentMtr: Int?
    var trailing30dayMtr: Int?
    
    enum CodingKeys: String, CodingKey {
        case currentMtr = "current_mtr"
        case trailing30dayMtr = "trailing_30day_mtr"
    }
}