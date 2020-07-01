//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

import Logging

internal struct NoOpLogHandler: LogHandler {
    func log(level: Logger.Level, message: Logger.Message, metadata: Logger.Metadata?, file: String, function: String, line: UInt) {}

    subscript(metadataKey _: String) -> Logger.Metadata.Value? {
        get {
            return nil
        }
        set {}
    }

    var metadata: Logger.Metadata {
        get {
            return [:]
        }
        set {}
    }

    var logLevel: Logger.Level {
        get {
            return .critical
        }
        set {}
    }
}
