//: ## Swift is 👑
import Foundation

enum DownloadTask {
    case ready
    case downloading(progress: Int)
    case finished
}

let file1 = DownloadTask.downloading(progress: 0)

switch file1 {
case .downloading(let progress) where (1..<100).contains(progress):
    print("Downloading")
case .ready, .finished:
    print("Not currently downloading")
default:
    print("Not sure what's goin on...")
}
