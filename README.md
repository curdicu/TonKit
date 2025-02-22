# TonKit.Swift





### Initialization

First you need to initialize an `TonKit.Kit` instance

```swift
import TonKit

//from TonSwift library
let address = try FriedlyAddress(string: "0x...")


let TonKit = try Kit.instance(
    type: .watch(address), 
    network: .mainnet, 
    walletId: "unique_wallet_id", 
    minLogLevel: .error
)
```

### Starting and Stopping

`TonKit.Kit` instance requires to be started with `start` command. This start the process of synchronization with the blockchain state.

```swift
TonKit.start()
TonKit.stop()
```

## Installation

### Swift Package Manager


```swift
dependencies: [
    .package(url: "https://github.com/curdicu/TonKit.Swift.git", .upToNextMajor(from: "1.0.0"))
]
```

## Prerequisites

* Xcode 10.0+
* Swift 5.5+
* iOS 15+

