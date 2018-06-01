//
//  Sources/Resolver.swift
//  SwinjectAutoregistration
//
//  Generated by Swinject AutoRegistration generator.
//  Copyright © 2017 Swinject Contributors. All rights reserved.
//


 import Swinject 


extension Resolver {


    func resolve<Service>() -> Service? {
       return self.resolve(Service.self)
    }

    func resolve<Service, Arg1>(argument  arg1: Arg1) -> Service? {
       return (arg1 as? Service)
        ?? self.resolve(Service.self)
        ?? self.resolve(Service.self, argument: arg1)
    }

    func resolve<Service, Arg1, Arg2>(arguments  arg1: Arg1, _ arg2: Arg2) -> Service? {
       return (arg1 as? Service)
        ?? (arg2 as? Service)
        ?? self.resolve(Service.self)
        ?? self.resolve(Service.self, argument: arg1)
        ?? self.resolve(Service.self, arguments: arg1, arg2)
    }

    func resolve<Service, Arg1, Arg2, Arg3>(arguments  arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3) -> Service? {
       return (arg1 as? Service)
        ?? (arg2 as? Service)
        ?? (arg3 as? Service)
        ?? self.resolve(Service.self)
        ?? self.resolve(Service.self, argument: arg1)
        ?? self.resolve(Service.self, arguments: arg1, arg2)
        ?? self.resolve(Service.self, arguments: arg1, arg2, arg3)
    }
}

