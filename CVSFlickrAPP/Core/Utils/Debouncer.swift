//
//  Debouncer.swift
//  CVSFlickrAPP
//
//  Created by Taooufiq El moutaoouakil on 1/14/25.
//

import Foundation
 
final class Debouncer {
    private let queue: DispatchQueue
    private var workItem: DispatchWorkItem?
    private let delay: TimeInterval
    
    init(delay: TimeInterval, queue: DispatchQueue = .main) {
        self.delay = delay
        self.queue = queue
    }
    
    func debounce(_ action: @escaping () async -> Void) {
        workItem?.cancel()
        
        let workItem = DispatchWorkItem { [weak self] in
            guard self != nil else { return }
            Task {
                await action()
            }
        }
        
        self.workItem = workItem
        queue.asyncAfter(deadline: .now() + delay, execute: workItem)
    }
    
    func cancel() {
        workItem?.cancel()
        workItem = nil
    }
}
