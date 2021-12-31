module Components.Track exposing (view)

import Html.Styled exposing (Html, section, div, text, img, h3, h2, ul, li, p, span)
import Html.Styled.Attributes exposing (css, class, alt, src, style)

import Styles.Home exposing (wrapperX, wrapperYT, wrapperMXWidth, track, track1, featureWrapper)
import Styles.Loader exposing (sectionTitle, subTitle)

bank : String
bank = "../../public/bank-ill-bg.svg"

pot : String
pot = "../../public/track1.png"

track1URL : String
track1URL = "../../public/track-main1.png"

sub : String
sub = "../../public/track2.png"

track2 : String
track2 = "../../public/track-main2.png"

view : Html msg
view =
  section [ css [ wrapperX ], css [ wrapperYT ] ]
    [ div [ css [ wrapperMXWidth ], css [ track ] ]
        [ h2 [ css [ sectionTitle ] ] [ text "Track" ]
        , div [ css [ featureWrapper ] ]
            [ div [ class "title-content" ]
                [ h3 [ css [ subTitle ] ] [ text "All your accounts in one place" ]
                , p [] [ text """
                                Link your bank accounts on Inflow, to see all your expenses in one
							                  place. From GT Bank to Kuda Bank to Piggyvest, we've got you.
                              """
                        ]
                , div [ class "title-image-wrapper" ] [ span [] [ img [ src bank, alt "Illustration" ] [] ] ]
                ]
            , div [ class "main-content", class "track-content" ]
                [ ul [ class "lists" ]
                    [ li [ css [ track1 ], class "track1" ]
                        [ div [ class "img-holder" ] [ span [] [ img [ src pot, alt "Illustration", style "max-height" "100%", style "width" "100%" ] [] ] ]
                        , h3 [ css [ subTitle ] ] [ text "How you've been spending money" ]
                        , p [] [ text """
                                        See every credit and debit transaction on ALL your accounts as
                                        they happen. Get a complete view of your spending with a
                                        spending categories.
                                      """
                                ]
                        , div [ class "image-wrapper" ] [ span [] [ img [ src track1URL, alt "Illustration" ] [] ] ]
                        ]
                    , li [ css [ track1 ] ]
                        [ div [ class "img-holder" ] [ span [] [ img [ src sub, alt "Illustration", style "max-height" "100%", style "width" "100%" ] [] ] ]
                        , h3 [ css [ subTitle ] ] [ text "Your monthly subscriptions" ]
                        , p [] [ text """
                                        Add your scheduled payments on Inflow to get reminders on when
                                        to renew or cancel your subscription services like Netflix or
                                        Spotify
                                      """
                                ]
                        , div [ class "image-wrapper" ] [ span [] [ img [ src track2, alt "Illustration", style "max-height" "100%", style "width" "100%" ] [] ] ]
                        ]
                    ]
                ]
            ]
        ]
    ]
