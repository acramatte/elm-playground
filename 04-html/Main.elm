module Main exposing(..)

import Html exposing (..)
import Html.Attributes exposing (..)

type alias Ship =
  { name : String
  , model : String
  , cost : Int
  }

ships =
  [ { name = "X-Wing", cost = 149898}
  , { name = "Falcon Millenium", cost = 1000000}
  , { name = "Death Start", cost = 21008360}
  ]

renderShip ship =
  li []
      [ text ship.name
      , text ", "
      , b []
          [ text <| toString ship.cost]
      ]

renderShips ships =
  div
    [
      style [("font-family", "-apple-system")
        , ("padding", "1em")
        ]
    ]
    [ h1 [] [text "Ships"]
    , ul [] (List.map renderShip ships)
    ]

main =
  renderShips ships
