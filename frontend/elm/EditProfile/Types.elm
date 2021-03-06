module EditProfile.Types exposing (..)

import Notification exposing (Notification)
import RemoteData exposing (WebData)
import Profiles.Types exposing (Profile)


type alias Model =
    { profile : Profile
    , showBiographyPreview : Bool
    }


type InternalMsg
    = Name String
    | Job String
    | Bio String
    | City String
    | Country String
    | EMail String
    | HomePage String
    | GitHubUsername String
    | TwitterHandle String
    | Available Bool
    | SwitchToBiographyEdit
    | SwitchToBiographyPreview
    | UpdateProfile
    | UpdateProfileResponse (WebData Profile)


type ParentMsg
    = ShowNotification Notification


type Msg
    = ForSelf InternalMsg
    | ForParent ParentMsg
