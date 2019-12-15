# Animating a basketball game with gganimate

![Example](animations/raptors_clippers-201912110.gif)

I post these animations to [r/TorontoRaptors](https://www.reddit.com/r/torontoraptors/)

## Details

I use `gganimate` to drop basketballs — added with `ggimage` — to the corresponding Raptors player when they score.

I then use `rvest` to scrape websites for a lot of miscellenous information. The team logos were scraped off Wikipedia, and the Raptors play-by-play data is scraped off basketball-reference.com.

I applied transparency to the images with `png` and added colour to the plot title using `ggtext`. 

## Requirements

```
library(tidyverse) # for the basics
library(gganimate) # for animation and gifs
library(ggimage) # for inserting the basketball emojis
library(rvest) # for scraping data from websites
library(lubridate) # for date manipulation
library(png) # for image manipulation
library(grid) # for custom plot manipulation
library(ggtext) # for colouring the plot title
library(extrafont) # for nicer fonts
```

## See more 

See more animations in the /animations folder.
