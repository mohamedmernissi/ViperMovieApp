//
//  MovieListRouterTests.swift
//  MovieVappTests
//
//  Created by Haiyan Ma on 17/12/2017.
//  Copyright © 2017 Haiyan Ma. All rights reserved.
//

import XCTest
@testable import MovieVapp

class MovieListRouterTests: XCTestCase {
    
    var movieListRouter = MovieListRouter()

    func testTopVCIsMovieDetailVCWhenPresented() {
        movieListRouter.presentMovieDetailView(with: Movie(name: "abc", rating: 1))
        XCTAssertTrue(movieListRouter.topNavController?.viewControllers.last is MovieDetailViewController)
    }
}