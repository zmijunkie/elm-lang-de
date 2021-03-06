{-# LANGUAGE DeriveGeneric #-}

module AppBootstrap.Response where

import           Profile.Response (ProfileResponse)

import           Data.Aeson
import           GHC.Generics


data AppBootstrapResponse =
    NotSignedIn
    { signedIn               :: Bool
    , gitHubClientId         :: Maybe String
    , gitHubOAuthRedirectUrl :: String
    }
    | SignedIn
    { signedIn               :: Bool
    , profile                :: ProfileResponse
    , gitHubClientId         :: Maybe String
    , gitHubOAuthRedirectUrl :: String
    }  deriving (Eq, Show, Generic)


instance ToJSON AppBootstrapResponse

