---
title: 'Bionic Soft Hand'
subtitle: 'Sensitive robot hand with artifical intelligence'
date: 2019-06-01 00:00:00
description: Placement
featured_image: '/images/softhand/hero.jpg'
tags: [Interaction Engineering, Bionic Robotics, Wearables]
---

> Whether grasping, holding or turning, touching, typing or pressing – in everyday life, we use our hands for the most diverse tasks. The human hand is a true miracle of nature. What could be more logical than equipping robots in collaborative working spaces with a gripper that is based on this natural model and can learn through artificial intelligence to solve a wide variety of gripping and turning tasks?

Bionic Soft Hand was the main project I was involved in at FESTO Bionics. My focus was  **developing a sensing system for the soft robotic hand in order to build advanced interactions such as teleoperation**. I conceptualised and developed three iterations of wearable sensor gloves that could determine the current pose of the hand. My early-stage prototypes were later miniaturised and incorporated into the hand. Meanwhile, I was able to use the sensor glove to prototype physical interactions with the robotic hand based on human input i.e. hand movements.

<iframe width="560" height="315" src="https://www.youtube.com/embed/5e0F14IRxVc" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<div class="gallery" data-columns="2">
	<img src="/images/softhand/1.jpg" />
	<img src="/images/softhand/3.jpg" />
	<img src="/images/softhand/4.jpg" />
	<img src="/images/softhand/5.jpg" />
</div>

Using the data from the sensor glove I designed, I implemented a **digital twin of the physical hand (visualisation) wearing the glove** as well as **PID position control and teleoperation of the Bionic Soft Hand**. The robot hand was running on ROS, so the bulk of the code was written in Python and C++. Unfortunately, I had to return return to university before the project was completed, but left the team with a thorough documentation of my work and code. Other things I contributed to included:

* Working with TensorFlow to teach the hand movement patterns.
* PCB design and manufacture using EAGLE
* Data collection using my sensor system for subsequent reinforcement learning

<div class="gallery" data-columns="1">
	<img src="/images/softhand/12.gif" />
	<img src="/images/softhand/13.gif" />
	<img src="/images/softhand/14.gif" />
	<img src="/images/softhand/6.jpg" />
	<img src="/images/softhand/7.jpg" />
	<img src="/images/softhand/8.jpg" />
	<img src="/images/softhand/9.jpg" />
	<img src="/images/softhand/10.jpg" />
	<img src="/images/softhand/11.jpg" />
</div>