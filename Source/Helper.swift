import UIKit
import AVFoundation

struct Helper {

  static func rotationTransform() -> CGAffineTransform {
    switch UIApplication.shared.statusBarOrientation {
    case .landscapeLeft:
      return CGAffineTransform(rotationAngle: CGFloat.pi * 2.0)
    case .landscapeRight:
      return CGAffineTransform(rotationAngle: -(CGFloat.pi * 2.0))
    case .portraitUpsideDown:
      return CGAffineTransform(rotationAngle: CGFloat.pi)
    default:
      return CGAffineTransform.identity
    }
  }

  static func videoOrientation() -> AVCaptureVideoOrientation {
    switch UIApplication.shared.statusBarOrientation {
    case .portrait: return .portrait
    case .landscapeLeft: return .landscapeLeft
    case .landscapeRight: return .landscapeRight
    case .portraitUpsideDown: return .portraitUpsideDown
    default: return .portrait
    }
  }
}
