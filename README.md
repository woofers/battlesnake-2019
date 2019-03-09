
# Table of Contents

-   [Battle Snake 2019](#org4e91cd1)
    -   [Strategy](#orgeab5bd6)
        -   [Drawbacks](#org8332067)
    -   [Battle History](#orgbfe2e4c)
    -   [Game Snippets](#orgd1f662a)
    -   [Usage](#org90ebbb7)
        -   [Prerequisites](#orge89a154)
        -   [Test Server](#orgadc8afd)
        -   [Run Locally](#org9d3375d)
        -   [Deployment](#orgb9d54fa)
    -   [Acknowledgments](#org1f4145d)
        -   [Notable Moments](#org5025f01)



<a id="org4e91cd1"></a>

# Battle Snake 2019

<img height="120" width="120" src="screenshots/advanced.png" />

A simple [BattleSnake](https://www.battlesnake.io) written in Java.

Was entered in the expert divison of 2019's tournament as ****🐍 ‏‏‎ 𝙎𝙐𝙋𝙀𝙍 𝙎𝙇𝙄𝙈𝙀𝙔 ‏‏‎ 🐍****.

Deployed to [https://battlesnake-liquid.herokuapp.com/](https://battlesnake-liquid.herokuapp.com/)


<a id="orgeab5bd6"></a>

## Strategy

Our snake's strategy was aggresive. For each turn, if the snake wasn't
the largest on the board, or if the health was below a specific
threshold, the snake would navigate towards the closest food. Otherwise,
it would try to target the other snakes' heads to either eliminate the
opponent in a head-on collision or trap them by cutting off their path.


<a id="org8332067"></a>

### Drawbacks

Despite efforts to improve the issue from 2018's entry, the snake's biggest
drawback was trapping itself in its own tail. Wedidn't implement an effective
algorithm to calculate dangerous regions of the board, and ultimately the
snake died by going for a food point and boxing itself in.


<a id="orgbfe2e4c"></a>

## Battle History

**Bounty Snakes:**

-   Beat all 3 of [Bambora](https://www.bambora.com/en/ca/)'s bounty snakes
-   Beat all 3 of [Freshworks](https://freshworks.io/)' bounty snake levels
-   Beat both of [Semaphore](https://semaphoresolutions.com/)'s bounty snakes
-   Beat [Workday](https://www.workday.com/)'s bounty snake
-   Beat [Giftbit](https://www.giftbit.com/)'s 3v1 bounty snake match
-   Beat two of four of [Rooof](https://www.rooof.com/)'s bounty snakes
-   Beat one of two of [Redbrick](https://rdbrck.com/)'s bounty snakes
-   Beat both of [Pixel Union](https://www.pixelunion.net/)'s bounty snakes
-   Beat one of [Schneider Electric](https://www.schneider-electric.ca/en/)'s bounty snakes
-   Beat one of [Telmediq](https://www.telmediq.com/)'s bounty snakes
-   Made it to round 6 with [Sendwithus](https://www.sendwithus.com/)' zombie wave style bounty snakes
-   Lost to [CheckFront](https://www.checkfront.com/)'s bounty snake
-   Lost to [GitHub](https://github.com)'s bounty snake

**Tournament:**

The snake came 3rd in the first round of battle, and came 2nd in the second round. There were 29
competitors in the expert tier.  Our games were played on a 11x11 board with 5 food spawned at start.

Timestamp on [Sendwithus' Twitch stream](https://www.twitch.tv/videos/389395340) is [2:52:53-2:55:30](https://www.twitch.tv/videos/389395340?t=02h52m53s).

**[Game 1](https://clips.twitch.tv/SoftDepressedWebDAESuppy)**

**[Game 2](https://clips.twitch.tv/CoyRelentlessFiddleheadsSoBayed)**

At the end of the tournament competition, our snake
was listed #13 of 139 snakes in the **[Arena](https://play.battlesnake.io/leaderboard/)**.


<a id="orgd1f662a"></a>

## Game Snippets

![img](./screenshots/snake-win-1.gif) ![img](./screenshots/snake-win-2.gif)
![img](./screenshots/snake-win-7.gif) ![img](./screenshots/snake-win-6.gif)


<a id="org90ebbb7"></a>

## Usage


<a id="orge89a154"></a>

### Prerequisites

1.  Install Java 11 or higher
2.  Install Docker + Docker compose
3.  Install Heroku
4.  Install .war Heroku deployment plug-in `heroku plugins:install heroku-cli-deploy`
5.  Create a Heroku App `heroku create <name>`


<a id="orgadc8afd"></a>

### Test Server

1.  Run `docker run -it --rm -p 3000:3000 sendwithus/battlesnake-server`
2.  Goto `localhost:3000` in a browser.


<a id="org9d3375d"></a>

### Run Locally

-   Gradle

    1.  Run the project using either `./gradle run` or `gradlew run` for UNIX and Windows platforms respectively.  This will build and run the project as a \`JAR\` using [Webapp Runner](https://github.com/jsimone/webapp-runner).
    2.  Use `http://localhost:8080` as the snake URL.

-   Docker

    1.  Build the project using either `./gradle build` or `gradlew build` for UNIX and Windows platforms respectively.
    2.  Run the Docker Tomcat image in a container with `docker-compose up`.
    3.  Use `http://localhost:8080/battlesnake` as the snake URL.


<a id="orgb9d54fa"></a>

### Deployment

1.  Build .war file `./gradlew build`
2.  Deploy to Heroku `heroku war:deploy build/libs/battlesnake.war --app <name>`
3.  Use `https://[name].herokuapp.com/` as the snake URL.


<a id="org1f4145d"></a>

## Acknowledgments

-   **Built by** [Ben Austin](https://github.com/austinben) and
    [Jaxson Van Doorn](https://github.com/woofers), March 2, 2019
-   **Template Forked from**
    [here](https://github.com/tflinz/BasicBattleSnake2018)
-   **Designed for** [Sendwithus](https://github.com/sendwithus)'
    BattleSnake competition, March 2, 2019


<a id="org5025f01"></a>

### Notable Moments

"Is that a Young Thug reference? You guys are awesome."

"Im just a white guy at a coding convention talking about
Young Thug, don't mind me!"

"Ohhh, *you're* woofers. Your emojis are breaking my logs!"

<img align="left" height="120" width="120" src="screenshots/advanced.png" />
