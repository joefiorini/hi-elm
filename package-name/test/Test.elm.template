module Main where

import String

import IO.IO (..)
import IO.Runner (Request, Response, run)

import ElmTest.Test (Test, suite)
import ElmTest.Runner.Console (runDisplay)

import Test.Example as Example

tests : Test
tests = suite "$moduleName Tests"
        [ Example.tests
        ]

port requests : Signal Request
port requests = run responses (runDisplay tests)

port responses : Signal Response
