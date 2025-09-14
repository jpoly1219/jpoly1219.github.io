module Main exposing (main, update, view)

import Browser
import Html exposing (Html, a, div, h1, img, p, text)
import Html.Attributes exposing (class, href, id, src)
import Html.Events exposing (onClick)


main =
    Browser.sandbox { init = init, update = update, view = view }


type ViewType
    = Main
    | Research1


type alias Model =
    { currentView : ViewType
    }


init : Model
init =
    Model Main


update model =
    model


view : Model -> Html msg
view model =
    case model.currentView of
        Main ->
            div [] [ viewMain ]

        Research1 ->
            div [] [ viewMain ]


viewMain : Html msg
viewMain =
    div [ id "page" ]
        [ div [ class "left" ] [ img [ src "static/img3.webp", id "main-img" ] [] ]
        , div [ class "right" ]
            [ h1 [ class "pacifico-regular" ] [ text "Hello!" ]
            , p [ class "merriweather-regular" ] [ text "안녕하세요! I am a PhD student at the UC Irvine Donald Bren School of Information and Computer Science. I did my undergrad at the University of Michigan. Go Blue!" ]
            , p [ class "merriweather-regular" ] [ text "This page is written in Elm. That's how you know I'm a nerd :)" ]
            , p [ class "merriweather-regular" ] [ text "I work at the juncture of software engineering, programming lanugages, and AI to find interesting ways to write code." ]
            , p [ class "merriweather-regular" ]
                [ text "Before my PhD, I worked at "
                , a [ href "https://continue.dev", class "a-bracket" ] [ text "Continue.dev" ]
                , text " delivering "
                , a [ href "https://blog.continue.dev/next-edit-powered-by-mercury-coder/", class "a-bracket" ] [ text "Next Edit" ]
                , text " prediction on VS Code, JetBrains, and Neovim, using an "
                , a [ href "https://blog.continue.dev/instinct/", class "a-bracket" ] [ text "in-house diffusion model" ]
                , text " trained via SFT and DPO."
                ]
            , p [ class "merriweather-regular" ] [ text "I also worked on using static analysis tools to improve LLM eval scores for code generation, working closely with parsers, compiler API, and LSPs for recursive type extraction." ]
            , p [ class "merriweather-regular" ] [ text "Let's keep in touch!" ]
            , div [ id "social-icon-ctnr" ]
                [ div [ class "social-icon" ]
                    [ a [ href "mailto:jacobk13@uci.edu" ] [ img [ src "static/email-icon.webp" ] [] ] ]
                , div [ class "social-icon" ]
                    [ a [ href "https://github.com/jpoly1219" ] [ img [ src "static/github-icon.webp" ] [] ] ]
                , div [ class "social-icon" ]
                    [ a [ href "https://www.linkedin.com/in/june-hyung-jacob-kim" ] [ img [ src "static/linkedin-icon.webp" ] [] ] ]
                , div [ class "social-icon" ]
                    [ a [ href "https://x.com/iamjacobkim" ] [ img [ src "static/x-icon.webp" ] [] ] ]
                , div [ class "social-icon" ]
                    [ a [ href "https://bsky.app/profile/iamjacobkim.bsky.social" ] [ img [ src "static/bsky-icon.webp" ] [] ] ]
                ]
            ]
        ]


viewResearch1 : Html msg
viewResearch1 =
    div [] [ text "Research 1" ]
