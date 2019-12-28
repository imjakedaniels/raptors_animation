<h1 style="font-weight:normal" align="center">
    <img src=https://github.com/imjakedaniels/raptors_animation/blob/master/emoji/basketball.png alt="Zhi" width=27>
  &nbsp;Visualizing Baskets&nbsp;
</h1>

<div align="center">

[Twitter][Twitter] :speech_balloon:&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;[LinkedIn][LinkedIn] :necktie:&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;[GitHub :octocat:][GitHub]&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;[Reddit][Reddit] :link:

</div>

<!--
Quick Link 
-->

[Twitter]:https://twitter.com/datajake
[LinkedIn]:https://www.linkedin.com/in/imjakedaniels/
[GitHub]:https://github.com/imjakedaniels
[Reddit]:https://reddit.com/imjakedaniels

## How to scrape & animate a basketball game using `rvest` & `gganimate` 

<p align="center">
  <img src="https://github.com/imjakedaniels/raptors_animation/blob/master/animations/raptors_clippers-201912110.gif">
</p>

**Data**: you will need to use play-by-play data sourced from [basketball-reference.com](https://www.basketball-reference.com/boxscores/pbp/201912260OKC.html).

**Notebook**: see the code [here](https://github.com/imjakedaniels/raptors_animation/blob/master/raptors_animation.Rmd).

**In practice**: One of my [popular posts on reddit](https://www.reddit.com/r/torontoraptors/comments/eemlz4/what_a_comeback_vs_dallas/) with 1500+ upvotes

## Details

I post these animations to NBA subreddits, like [r/TorontoRaptors](https://www.reddit.com/r/torontoraptors/)

This began as a Toronto Raptors only graph. But I realized, people like to watch when their team win, so it has been adjusted to glorify the winning team. Check the issues to see potential improvements I'm working on.

I use `ggplot2` to create the base plot. Emojis were added with `ggimage` to replace the original points in geom_point. I then use `gganimate` to follow the scoring plays and drop basketballs on the winning team's player whenever they get a basket. 

The data is play-by-play data from [basketball-reference.com](https://www.basketball-reference.com/boxscores/pbp/201912250TOR.html). I use `rvest` to scrape the table . I extract player names and filter for scoring plays only. I also use conditional logic so it knows which team wins and prepares the title, logo, and animation accordingly.

I scraped [teamcolorcodes.com](https://teamcolorcodes.com/nba-team-color-codes/) to find the team's hex colour code and add it to the plot title using `ggtext`.

Finally, a script is included to download all the team logos off Wikipedia. I recommend using it. I apply the transparency to the team logo in the plot background with `png`.

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
