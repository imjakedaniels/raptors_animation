<h1 style="font-weight:normal" align="center">
    <img src=https://github.com/imjakedaniels/raptors_animation/blob/master/emoji/basketball.png alt="Zhi" width=27>
  &nbsp;Visualizing Baskets&nbsp;
</h1>

## Scraping & animating a basketball game using `{rvest}` & `{gganimate}` 

<p align="center">
  <img src="https://github.com/imjakedaniels/raptors_animation/blob/master/animations/Toronto Raptors_Cleveland Cavaliers-20191231.gif">
</p>

**Data**: all you will need is play-by-play data sourced from [basketball-reference.com](https://www.basketball-reference.com/boxscores/pbp/201912260OKC.html).

**Notebook**: the graph is created using RMarkdown. See the code [here](https://github.com/imjakedaniels/raptors_animation/blob/master/raptors_animation.Rmd).

**In practice**: One of my [popular posts on reddit](https://www.reddit.com/r/torontoraptors/comments/eemlz4/what_a_comeback_vs_dallas/) with 1500+ upvotes. This was Version 1.0.

## Details

I post these animations to NBA subreddits, like [r/TorontoRaptors](https://www.reddit.com/r/torontoraptors/)

This began as a Toronto Raptors only graph. But I realized, people like to watch when their team win, so it has been adjusted to take any game's data and glorify the winning team. 

Feel free to check the [issues](https://github.com/imjakedaniels/raptors_animation/issues) to see potential improvements I'm working on.

## Walkthrough

I use `{ggplot2}` to create the base plot. Emojis were added with `{ggimage}` which simply replace the points in a `geom_point` call. I create the sequence of events using `{running_score} + {time}` for `{gganimate}` to follow. The animation will drop basketballs on the winning team's player whenever they get a basket. Three pointers are highlighted with flames. The final frame is added to display point totals from each player and remains still for 5 seconds.

The data is play-by-play (pbp) data from [basketball-reference.com](https://www.basketball-reference.com/boxscores/pbp/201912250TOR.html). I use `rvest` to scrape the pbp table. I extract player names and filter for scoring plays only. I also use conditional logic so it knows which team wins and it prepares the title, logo, and animation accordingly. 

The notebook will then scrape [teamcolorcodes.com](https://teamcolorcodes.com/nba-team-color-codes/) to find the team's hex colour code and add it to the plot title using `{ggtext}`.

Finally, it applies transparency to the team logo in the plot background with `{png}`.

See [notebook](https://github.com/imjakedaniels/raptors_animation/blob/master/raptors_animation.Rmd) for all the code used.

Please leave a star if you like it.

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

[Twitter][Twitter] :speech_balloon:&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;[LinkedIn][LinkedIn] :necktie:&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;[GitHub :octocat:][GitHub]&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;[Reddit][Reddit] :link:

</div>

<!--
Quick Link 
-->

[Twitter]:https://twitter.com/datajake
[LinkedIn]:https://www.linkedin.com/in/imjakedaniels/
[GitHub]:https://github.com/imjakedaniels
[Reddit]:https://www.reddit.com/user/imjakedaniels
