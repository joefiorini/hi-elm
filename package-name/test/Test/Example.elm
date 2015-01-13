module Test.Example where

import ElmTest.Test (test, Test, suite)
import ElmTest.Assertion (assert, assertEqual)

import Test.Helpers (..)
import Doubler (double)

tests =
  suite "Example Test"
    [ test "Fails to compute - make me pass"
      <| assertEqual failingResult
      <| double 2
    , test "Computes"
      <| assertEqual passingResult
      <| double 2
    ]

