//
//  Constant.swift
//  recruitment-sdd_study_case_2
//
//  Created by Jonathan Kristian on 04/04/24.
//

import Foundation

let BASE_URL = "https://demo5853970.mockable.io"
let TOKEN_BEARER = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjc1OTE0MTUwLCJleHAiOjE2Nzg1MDYxNTB9.TcIgL5CDZYg9o8CUsSjUbbUdsYSaLutOWni88ZBs9S8"

enum RequestError: Error {
    case networkFailure
    case invalidReturnedJSON
    case unknownError
}
