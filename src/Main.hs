module Main where

import Control.Concurrent as CC
import GHC.Conc as GHC

main :: IO ()
main = do
  ccCapabilities <- CC.getNumCapabilities
  putStrLn $ "Control.Concurrent.getNumCapabilities: " ++ show ccCapabilities
  ghcCapabilities <- GHC.getNumCapabilities
  putStrLn $ "GHC.Conc.getNumCapabilities: " ++ show ghcCapabilities
  ghcProcessors <- GHC.getNumProcessors
  putStrLn $ "GHC.Conc.getNumProcessors: " ++ show ghcProcessors
