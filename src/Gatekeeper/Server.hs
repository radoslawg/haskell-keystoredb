module Gatekeeper.Server 
(runServer)
where

import System.IO
import Control.Monad (unless)

runServer :: IO()
runServer = do
    putStrLn "Gatekeeper Ready"
    hFlush stdout
    loop where
        loop = do
          cmd <- getLine
          unless (cmd == "quit") $ loop
