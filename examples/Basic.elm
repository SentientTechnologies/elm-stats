module Main exposing (..)

import Html exposing (Html, b, div, p, text)
import Stats.NormalDistribution exposing (cdfZ)


main : Html msg
main =
    div []
        [ viewCase 2.4
        , viewCase 2.44444444444
        , viewCase -100
        , viewCase 100
        , viewCase 0.0
        , viewCase 3
        , viewCase 3.0
        , viewCase 3.000000000001
        ]


viewCase : Float -> Html msg
viewCase z =
    p []
        [ text "Given an input of "
        , b [] [ text <| toString z ]
        , text " the probability is "
        , b [] [ text <| toString (cdfZ z) ]
        ]
