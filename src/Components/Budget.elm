module Components.Budget exposing (view)

import Css exposing (..)
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (..)

import Styles.Home exposing (wrapperX, wrapperYT, wrapperMXWidth, budget, track1, featureWrapper)
import Styles.Loader exposing (..)

bank : String
bank = "../../public/budget.png"

smbank : String
smbank = "../../public/img.svg"

chart : String
chart = "../../public/budget1.svg"

phonecase : String
phonecase = "../../public/budget-main.png"

view : Html msg
view =
  section [ css [ wrapperX ], css [ wrapperYT ] ]
    [ div [ css [ wrapperMXWidth ], css [ budget ] ]
        [ h2 [ css [ sectionTitle ] ] [ text "Budget" ]
        , div [ css [ featureWrapper ] ]
          [ div [ class "title-content" ]
            [ h3 [ css [ subTitle ] ] [ text "Stay in control of your money" ]
            , p [] [ text """
                              Create smart budgets for your expenses on Inflow to see where your
							                money is going. Now, money no go lost.
                          """
                    ]
            , div [ class "title-image-wrapper" ] [ img [ src bank, alt "Illustration" ] [] ]
            ]
          , div [ class "main-content", class "budget-content" ]
              [ ul [ class "lists" ]
                  [ li  [ css [ track1 ] ]
                      [ div [ class "img-holder" ] [ span [] [ img [ src smbank, alt "Illustration", height (pct 100), width (pct 100) ] [] ] ]
                      , h3 [ css [ subTitle ] ] [ text "Intelligent Categorization" ]
                      , p [] [ text """
                                      Inflow's machine learning models automatically sort your
                                      transactions into expense categories like transport, airtime
                                      or food so you don't have to do any work.
                                    """
                              ]
                      ]
                  , li  []
                      [ div [ class "img-holder" ] [ span [] [ img [ src chart, alt "Illustration", height (pct 100), width (pct 100) ] [] ] ]
                      , h3 [ css [ subTitle ] ] [ text "Create custom categories" ]
                      , p [] [ text """
                                      Need to know exactly how much you're spending on car repairs
                                      monthly? Or you want to create a budget for your
                                      subscriptions? We've got you covered.
                                    """
                              ]
                      ]
                  ]
              , div [ class "image-wrapper" ] [ img [ src phonecase, alt "Illustration" ] [] ]
              ]
          ]
        ]
    ]
