---
title: 'Space'
subtitle: 'Low-cost posture rehabilitation game for CP patients using ubiquitous smartphone sensors'
date: 2018-06-01 00:00:00
description: 
featured_image: '/images/space/hero.jpg'
tags: [Medtech, Ethnographic Research, Unity Development, University]
---

Space is **a low-cost, low-tech and gamified method to train posture control and core strength for wheelchair users**. Rather than relying on complex mechatronic systems, Space uses the motion sensing capabilities available in standard smartphones as a controller. The phone is attached to the player through a harness, the likes of which are available at a cost of around USD 20. The goal of the game is to collect items in different levels by steering a fox with tilt and lean movements, which train the muscles involved to maintain a stable posture.

<iframe width="1526" height="682" src="https://www.youtube.com/embed/4vHmGydFj8g" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

My contributions to the project included **ethnographic research, concept development, motion sensing and game development**. During the research phase, we learned from cerebral palsy (CP) patients that they often suffer from muscual atrophy (the decrease in size of muscle tissue) due to being bound to a wheelchair. This is turn leads to decreased postural stability, increased falls, decreased life quality and potentially life-threatening situations.

Muscular atrophy can be combatted through training the muscles affected. However, training methods are often repetitive and not engaging. For that reason we wanted to create a gamified training method that is both easily accessible and could be done together with friends, family or even an online community. We took inspiration from Mario Kart, which is a super fun multiplayer racing game. In an analogous gameplay concept, we wanted to create **a racing game that you control with your movements** and that you could possibly play with others in a cooperative or competitive fashion.

For our proof of concept, I implemented a mobile app to collect the orientation data on the smartphone and send it to a locally hosted webserver (running on node.js). The game, built with Unity, then requested motion data from the server and mapped it to the game. An additional UI is displayed on the phone controller using the p5.js library. This provides the user with an additional interface to see their performance. Thanks to the webserver approach, multiplayer capability would be relatively easy to add.

This was a very rewarding project to work on, as I believe we discovered a big issue and managed to tackle it with a simple and scalable approach. I really believe gamification could have a massive impact in creating more engaging training routines for people with disabilites.

**Note: Check out the project report, structure and code base [on the GitHub repository](https://github.com/pa17/hcard/).**

**Note: Space has been used in an ETH PhD project to develop a novel type of [upper-body-actuated wheelchair](https://retotogni.com/the-reagiro).**