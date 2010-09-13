module Paths_c_repl where
import System.Environment(getEnv)

getLibexecDir :: IO FilePath
getLibexecDir = catch (getEnv "something") (\_ -> return "/dummy/path")

getDataFileName :: FilePath -> IO FilePath
getDataFileName = return