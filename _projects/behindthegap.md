---
title: 'Behind the Gap'
subtitle: 'Using VR to reduce deaths on the railway'
date: 2019-05-01 00:00:00
description: Thesis
featured_image: '/images/behindthegap/hero.jpg'
tags: [VR, Unity, Research]
---

![](/images/behindthegap/hero.jpg)

*Note: This is largely adapted from the project report that you can find [here](https://www.github.com/pa17/spr).*

In the UK alone, around 300 people die on the railway network every year. **Nine out of ten of these fatalities are suicides.** The emotional, human and financial costs are shockingly high, as they can take place in view of passengers, station staff and drivers. Newspaper articles like the ones shown below pop up all the time, everywhere around the world. I wanted to find out **how we can use new technologies to discourage people from taking their own lives** and destroying others. 

<div class="gallery" data-columns="1">
	<img src="/images/behindthegap/0.png" />
	<img src="/images/behindthegap/1.png" />
	<img src="/images/behindthegap/2.png" />
</div>

The objective of this project was to **develop a number of anti-suicide measures whose impact could be quantitatively evaluated**. I started from scratch with an intense research phase; some key findings are shown below. 

<div class="gallery" data-columns="2">
	<img src="/images/behindthegap/i1.png" />
	<img src="/images/behindthegap/i2.png" />
	<img src="/images/behindthegap/i3.png" />
	<img src="/images/behindthegap/i4.png" />
</div>

In response, three solution concepts were developed for application in an underground train station environment. The selected concept aimed at using illusion and obstruction approaches to delay the localisation of an approaching train. The concept was largely based on the research insight that **many suicides attempts already fail (30% - 50% depending on country and source)**. Interviews with the Heads of Health and Safety at major railway operators revealed that this is often because the individuals midjudge the train’s speed and jump ‘too late’, and instead hit the side of the train. The hypothesis was therefore that **the later an individual localises a train, the less likely he or she it to have enough time to jump in front of it**.

<div class="gallery" data-columns="3">
	<img src="/images/behindthegap/6.png" />
	<img src="/images/behindthegap/7.png" />
	<img src="/images/behindthegap/8.png" />
</div>

I chose **Virtual Reality as a development framework** with which it was possible to quickly create various anti-suicide measures, which I called interventions. They all aimed at increasing the time it takes for someone to localise the train, i.e. know its origin direction and position. I implemented a full test environment as well as all the player interactions using the Unity game engine.

![](/images/behindthegap/hero.jpg)

In total, I designed four audio-visual interventions including **directional audio and light illusions, as well as visual obstructions**. A study with a sample size of 20 was conducted, measuring the impression of train origin direction (Where do you think the train is coming from?) and the response time (When do you see the train?). Below is a demo video for some of the interventions; please note that the directional audio will only work with headphones. **Have a look at the project report to find out more**.

<iframe src="https://player.vimeo.com/video/344584955" width="640" height="279" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>

The results laid **strong evidence that audio-visual interventions can significantly delay the localisation** of an approaching train. In summary:

* Directional audio effectively inverted the perception of the train’s origin **with 85% efficiency**.
* The combined audio and light illusion delayed the localisation by **1.2 seconds on average, corresponding to 24 metres covered by the train**.
* The visual obstructions, in particular, delayed localisation by **6 seconds on average, corresponding to 120 metres covered by the train**.

The implications of this study are that these types of interventions could make the time needed to jump in front of the train *longer* than the remaining time until the train passes. As a consequence, **a suicidal individual would not have enough time to jump in front of the train**, or hit the side of the train instead. It can also be speculated that somebody might not attempt the suicide in the first place if there is no possibility of jumping.