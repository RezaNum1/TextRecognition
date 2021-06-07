//
//  ScanDocumentViewController.swift
//  TextRecognize
//
//  Created by Reza Harris on 07/06/21.
//

import UIKit
import Vision

class ScanDocumentViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    var transcript = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView?.text = transcript
    }
}

extension ScanDocumentViewController: RecognizedTextDataSource {
    func addRecognizedText(recognizedText: [VNRecognizedTextObservation]) {
        let maximumCandidates = 1
        for observation in recognizedText {
            guard let candidate = observation.topCandidates(maximumCandidates).first else { continue }
            print(candidate.boundingBox)
            transcript += candidate.string
            transcript += "\n"
        }
        
        textView?.text = transcript
    }
}
