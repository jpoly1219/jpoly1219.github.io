# Personal site

This page is written in Elm, so that's how you know I am a nerd :)

This page used to be written with Hugo, then Astro, then Svelte, and finally Elm.

## Design

The page consists of two panes, the left and right, evenly splitting the screen in half.

The left pane holds an image.

The right pane is a vertical carousel that contains the following right pane items.
- About
- Experiences
- Projects

The vertical carousel should be scrollable. A single scroll action should take the user to the next item.
- A single scroll action is equivalent to a single swipe -- a single continuous span of scrolling time.
- For a mouse, a single scroll could contain many scroll ticks if they are all close together.
- For a trackpad or a touchscreen, a single scroll is a single swipe -- should be until the moment the finger leaves the trackpad/screen.

### Carousel items

There are three carousel items.
Each carousel item should have a top and bottom padding that contains the up and down arrows.

About:
- Holds text.

Experiences:
- A left-to-right, cyclic carousel containing some text that the user can swipe.
- Has a left arrow and right arrow on either side, with the first and last only containing right and left arrows. These should not move.
- Calculate the tallest item, then make the whole container that size so that we don't see the header move when swiping through different experience items of different heights.

Projects:
- A left-to-right, cyclic carousel containing some text that the user can swipe.
- Has a left arrow and right arrow on either side, with the first and last only containing right and left arrows. These should not move.
- Calculate the tallest item, then make the whole container that size so that we don't see the header move when swiping through different experience items of different heights.

## Media query

The page must support mobile devices.
For mobile devices, only show the right pane.
