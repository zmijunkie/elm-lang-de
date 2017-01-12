module Types exposing (..)

import Homepage.Types
import Events.Types
import Profiles.Types exposing (Profile)
import RemoteData exposing (WebData)


type Page
    = HomePage
    | EventsPage
    | ProfilesPage
    | NotFound


type Msg
    = AppBootstrapResponse (WebData AppBootstrapResource)
    | ChangePage Page
    | ProfilesMsg Profiles.Types.Msg
    | EventsMsg Events.Types.Msg
    | HomepageMsg Homepage.Types.Msg
    | Navigate Page


type alias Model =
    { auth : AuthenticationState
    , page : Page
    , homepage : Homepage.Types.Model
    , events : Events.Types.Model
    , profiles : Profiles.Types.Model
    , gitHubClientId : Maybe String
    }


type AuthenticationState
    = SignedIn Profiles.Types.Profile
    | NotSignedIn


type alias AppBootstrapResource =
    { signedIn : Bool
    , profile : Maybe Profile
    , gitHubClientId : Maybe String
    }
