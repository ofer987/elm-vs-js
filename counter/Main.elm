module Main exposing (..)

import Html exposing (..)
import Html.Events exposing (..)

main : Program Never Model Msg
main =
  Html.beginnerProgram
    { model = init
    , update = update
    , view = view
    }

type alias Model = Int

type Msg
  = Increment
  | Decrement

init : Model
init = 0

update : Msg -> Model -> Model
update msg model =
  case msg of
    Increment ->
      model + 1
    Decrement ->
      model - 1

view : Model -> Html Msg
view model =
  div []
    [ text ("Value: " ++ toString model)
    , button [ onClick Increment ] [ text "Edith wants to increment" ]
    , button [ onClick Decrement ] [ text "Edith wants to decrement now!" ]
    ]
