module Components.Insight exposing (view)

import Html.Styled exposing (Html, section, div, text, img, ul, h2, li, h3, p, span)
import Html.Styled.Attributes exposing (css, class, alt, src, style)

import Styles.Home exposing (wrapperX, wrapperYT, wrapperMXWidth, insight, featureWrapper)
import Styles.Loader exposing (sectionTitle, subTitle)

bank : String
bank = "../../public/insight.png"

smbank : String
smbank = "../../public/insight1.png"

insightimg2 : String
insightimg2 = "../../public/insight2.png"

phonecase : String
phonecase = "../../public/insight-main-1.png"

phonecase2 : String
phonecase2 = "../../public/insight-main-2.png"

view : Html msg
view =
  section [ css [ wrapperX ], css [ wrapperYT ] ]
    [ div [ css [ wrapperMXWidth ], css [ insight ] ]
        [ h2 [ css [ sectionTitle ] ] [ text "Insights" ]
        , div [ css [ featureWrapper ] ]
            [ div [ class "title-content" ]
                [ h3 [ css [ subTitle ] ] [ text "Your week and month in money" ]
                , p [] [ text """
                                Get detailed reports on how much you've spent and where you've
							                  spent it the previous week and month
                              """
                        ]
                , div [ class "title-image-wrapper" ] [ span [] [ img [ src bank, alt "Illustration", style "max-height" "100%", style "max-width" "100%" ] [] ] ]
                ]
            , div [ class "main-content" ]
                [ ul [ class "lists" ]
                    [ li []
                        [ div [ class "img-holder" ] [ span [] [ img [ src smbank, alt "Illustrator", style "max-height" "100%", style "max-width" "100%" ] [] ] ]
                        , h3 [ css [ subTitle ] ] [ text "Personalised notifications" ]
                        , p [] [ text """
                                        Stay on top of your spending with notifications from Inflow to
                                        put you back on track when you exceed your budget or do pass
                                        yourself.
                                      """
                              ]
                        , div [ class "image-wrapper", class "image-wrapper-1" ] [ span [] [ img [ src phonecase, alt "Illustration", style "max-height" "100%", style "max-width" "100%" ] [] ] ]
                        ]
                    , li []
                        [ div [ class "img-holder" ] [ span [] [ img [ src insightimg2, alt "Illustration", style "max-height" "100%", style "max-width" "100%" ] [] ] ]
                        , h3 [ css [ subTitle ] ] [ text "Inflows & Outflows" ]
                        , p [] [ text """
                                        Get a closer look by seeing how much you earned and how much
									                      you spent at the end of each week or each month.
                                      """
                              ]
                        , div [ class "image-wrapper", class "image-wrapper-2" ] [ span [] [ img [ src phonecase2, alt "Illustration", style "max-height" "100%", style "max-width" "100%" ] [] ] ]
                        ]
                    ]
                ]
            ]
        ]
    ]
