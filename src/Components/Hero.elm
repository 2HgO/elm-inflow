module Components.Hero exposing (view)

import Html.Styled exposing (Html, section, div, text, img, a, h2, br, p, span)
import Html.Styled.Attributes exposing (css, class, alt, src, style, target, rel, href)
import Svg.Styled exposing (svg, use)
import Svg.Styled.Attributes exposing (xlinkHref)

import Styles.Home exposing (hero, heroWrapper, wrapperX, wrapperMXWidth, forground, downloadLink)

icons : String
icons = "../../public/icons.svg"

heroURL : String
heroURL = "../../public/p.png"

view : Html msg
view =
  section [ css [ hero ], css [ wrapperX ] ]
    [ div [ css [ heroWrapper ], css [ wrapperMXWidth ] ]
        [ div [ class "text-content" ]
            [ h2 [] [ text "Where did ", br [] [], text " your money go?" ]
            , p [] [ text """
                            Inflow is a personal finance app that allows you link all your bank
                            accounts in one place, create budgets and get insights on your
                            spending.
                          """
                    ]
            , div [ css [ downloadLink ] ]
                [ a [ target "_blank", rel "noopener noreferer", href "itms-apps://itunes.apple.com/app/apple-store/id1562191352?mt=8" ]
                    [ svg [ ] [ use [ xlinkHref (icons ++ "#ios") ] [] ] ]
                , a [ target "_blank", rel "noopener noreferer", href "https://play.google.com/store/apps/details?id=com.inflow.android&hl=en" ]
                    [ svg [ ] [ use [ xlinkHref (icons ++ "#android") ] [] ] ]
                ]
            ]
        , div [ class "image-wrapper" ]
            [ span [ style "position" "relative", css [ forground ] ]
                [ img [ src heroURL, alt "Illustration", style "max-height" "100%", style "max-width" "100%" ] [] ] ]
        ]
    ]
