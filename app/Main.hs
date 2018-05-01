{-# LANGUAGE OverloadedStrings #-}

module Main where

import Web.Scotty
import Network.Wai.Middleware.RequestLogger

main :: IO ()
main = scotty 3000 router

router = do
  middleware logStdoutDev
  get "/" $ do
    text "hello there\n"

