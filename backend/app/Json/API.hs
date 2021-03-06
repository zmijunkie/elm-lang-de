{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

module Json.API (JsonAPI) where

import           AppBootstrap.API (AppBootstrapAPI)
import           Profile.API      (ProfileAPI)
import           SignOut.API      (SignOutAPI)

import           Servant


type JsonAPI =
       "app-bootstrap"
       :> AppBootstrapAPI
  :<|> "profiles"
       :> ProfileAPI
  :<|> "sign-out"
       :> SignOutAPI

