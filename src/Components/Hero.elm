module Components.Hero exposing (view)

import Svg.Styled exposing (svg, use)
import Svg.Styled.Attributes as SVGAttributes
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (..)

import Styles.Home as HomeStyles

icons : String
icons = "../../public/icons.svg"

hero : String
hero = "../../public/p.png"

view : Html msg
view =
  section [ css [ HomeStyles.hero ], css [ HomeStyles.wrapperX ] ]
    [ div [ css [ HomeStyles.heroWrapper ], css [ HomeStyles.wrapperMXWidth ] ]
        [ div [ class "text-content" ]
            [ h2 [] [ text "Where did ", br [] [], text " your money go?" ]
            , p [] [ text """
                            Inflow is a personal finance app that allows you link all your bank
                            accounts in one place, create budgets and get insights on your
                            spending.
                          """
                    ]
            , div [ css [ HomeStyles.downloadLink ] ]
                [ a [ target "_blank", rel "noopener noreferer", href "itms-apps://itunes.apple.com/app/apple-store/id1562191352?mt=8" ]
                    [ svg [ SVGAttributes.class "" ] [ use [ SVGAttributes.xlinkHref (icons ++ "#ios") ] [] ] ]
                , a [ target "_blank", rel "noopener noreferer", href "https://play.google.com/store/apps/details?id=com.inflow.android&hl=en" ]
                    [ svg [ SVGAttributes.class "" ] [ use [ SVGAttributes.xlinkHref (icons ++ "#android") ] [] ] ]
                ]
            ]
        , div [ class "image-wrapper" ]
            [ img [ src hero, alt "Illustration" ] [] ]
        ]
    ]
