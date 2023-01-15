---
title: 'Chess Robot'
subtitle: 'A robot arm that beats every chess master'
date: 2015-06-01 00:00:00
description: Project
featured_image: '/images/chess/hero.png'
tags: [Robotics, Machine Vision, University]
---



**Note: The GitHub repository is available [here](https://github.com/nebbles/DE3-ROB1-CHESS).**

The objective of this project was to teach a **FRANKA robot arm how to play chess**. We taught it to determine the state of the board, query a chess engine for the best next move, and then physically execute that move. This was a team project in which I worked on the perception module. 

The perception module was concerned with sensing the chess moves that were made by the person and the robot. I used a RBG-D camera for the visual information and OpenCV, a Python library for signal processing. Check out the demonstration of the chess robot below, where **I am playing a game that I am doomed to lose**.

<iframe width="560" height="315" src="https://player.vimeo.com/video/291377091" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

The project is well documented on a ['Read The Docs' page](http://de3-rob1-chess.readthedocs.io/en/latest/), which describes all the different modules, videos and, of course, the source code. We stuck to current Python standards such as PEP257 and would very much like to see someone else pick this up (EDIT: Several people have done so in the meantime!).

<div class="gallery" data-columns="3">
	<img src="/images/chess/1.jpg" />
	<img src="/images/chess/2.jpg" />
	<img src="/images/chess/3.jpg" />
</div>

