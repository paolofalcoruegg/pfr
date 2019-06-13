---
title: 'Chess Robot'
subtitle: 'A robot arm that beats every chess master'
date: 2017-01-01 00:00:00
description: Project
featured_image: '/images/chess/hero.png'
tags: [Robotics, Machine Vision]
---

<iframe width="560" height="315" src="https://player.vimeo.com/video/291377091" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

*Please check out code base on the GitHub repository <a href="https://github.com/nebbles/DE3-ROB1-CHESS">here </a>.*

The objective of this project was to teach a **FRANKA robot arm how to play chess**. It could determine the state of the board, query a chess engine for the best next move, and then physically make the move. This was a team project, in which **I worked on the perception module**. It was concerned with sensing the chess moves that were made by the person and the robot. We used a RBG-D camera and OpenCV (an open-source machine vision library), while the code was all written in Python. Check out the demonstration of the chess robot below, where **I am playing a game that I am doomed to lose**.

This project is **very well documented on a 'Read The Docs' page**, detailing all the different modules, videos and, of course, source code. We stuck to current Python standards such as PEP257 and would very much like to see someone else pick up on this. EDIT: Someone has! If you are interested I highly recommend you have a look through it <a href="http://de3-rob1-chess.readthedocs.io/en/latest/">here</a>.

<div class="gallery" data-columns="3">
	<img src="/images/chess/1.jpg" />
	<img src="/images/chess/2.jpg" />
	<img src="/images/chess/3.jpg" />
</div>

