//
//  RecognizedTextDataSource.swift
//  TextRecognize
//
//  Created by Reza Harris on 07/06/21.
//

import UIKit
import Vision

protocol RecognizedTextDataSource: AnyObject {
    func addRecognizedText(recognizedText: [VNRecognizedTextObservation])
}
