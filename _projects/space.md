---
title: 'Space'
subtitle: 'Low-cost posture rehabilitation game for CP patients using ubiquitous smartphone sensors'
date: 2018-06-01 00:00:00
description: 
featured_image: '/images/space/hero.jpg'
tags: [Game Dev, Medtech, Unity]
---

<img src='/images/space/hero.jpg' style='display:none' />
<iframe width="1526" height="682" src="https://www.youtube.com/embed/4vHmGydFj8g" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

*Please check out the project report, structure and code base on the GitHub repository <a href="https://github.com/pa17/hcard/">here </a>.*

Space is **a low-cost and easily accessible game that trains posture control and core strength**. It is designed specifically **for cerebral palsy (CP) patients**, but can be used by anybody with access to a smartphone and computer. Rather than relying on complex mechatronic systems, **Space uses the motion sensing capabilities in smartphones as a controller**. The phone is attached to the player through a harness, the likes of which are available at a cost of around USD 20. The goal of the game is **to collect collectables in different levels by steering a fox** with tilt and lean movements.  

My responsibilities in the project included the **concept, motion sensing and game development. I implemented the back-end** to collect the orientation data on the phone, send it to a locally hosted webserver (running on node.js). The game, built with Unity, then requested motion data from the server and mapped it to the game. An added benefit was that **this architecture allowed for an easy implementation of a UI on the phone controller** using the p5.js library. You can see this in the demo video, and it provides the user with an additional canvas about their performance. As an added benefit, multiplayer capability would be relatively easy to add thanks to the webserver approach.
