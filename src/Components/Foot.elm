module Components.Foot exposing (view)

import Html.Styled exposing (Html, section, div, text, img, a, span, h2)
import Html.Styled.Attributes exposing (css, class, target, rel, href, alt, src, style)
import Svg.Styled exposing (svg, use)
import Svg.Styled.Attributes exposing (xlinkHref)

import Styles.Home exposing (inflow, wrapperX, wrapperYT, wrapperMXWidth, downloadLink)

icons : String
icons = "../../public/icons.svg"

mobile : String
mobile = "../../public/mobile.png"

view : Html msg
view =
  section [ css [ inflow ], css [ wrapperX ], css [ wrapperYT ] ]
    [ div [ class "deco-wrapper" ]
        [ div [ css [ wrapperMXWidth ], class "inflow-wrapper" ]
            [ div [ class "text-content" ]
                [ h2 [] [ text "Manage money better with Inflow" ]
                , div [ css [ downloadLink ] ]
                    [ a [ target "_blank", rel "noopener noreferer", href "itms-apps://itunes.apple.com/app/apple-store/id1562191352?mt=8" ]
                        [ svg [ ] [ use [ xlinkHref (icons ++ "#ios") ] [] ] ]
                    , a [ target "_blank", rel "noopener noreferer", href "https://play.google.com/store/apps/details?id=com.inflow.android&hl=en" ]
                        [ svg [ ] [ use [ xlinkHref (icons ++ "#android") ] [] ] ]
                    ]
                ]
            , div [ class "image-wrapper" ]
                [ span [ ] [ img [ src mobile, alt "Illustration", style "min-width" "100%", style "max-width" "100%" ] [] ] ]
            ]
        ]
    ]
