---
layout: page
permalink: /about/index.html
title: Marco Estrella Cardenas
tags: [Marco, Marco Estrella, jmarkstar]
imagefeature: fourseasons.jpg
chart: true
---
<figure>
  <img src="{{ site.url }}/images/jmarkstar.png" alt="{{site.owner.name}}">
</figure>

{% assign total_words = 0 %}
{% assign total_readtime = 0 %}
{% assign featuredcount = 0 %}
{% assign statuscount = 0 %}

{% for post in site.posts %}
    {% assign post_words = post.content | strip_html | number_of_words %}
    {% assign readtime = post_words | append: '.0' | divided_by:200 %}
    {% assign total_words = total_words | plus: post_words %}
    {% assign total_readtime = total_readtime | plus: readtime %}
    {% if post.featured %}
    {% assign featuredcount = featuredcount | plus: 1 %}
    {% endif %}
{% endfor %}
<br/>
Mi nombre es **{{site.owner.name}}**, y este es mi blog personal, un lugar donde puedo compartir mis experiencias y proyectos en el desarrollo de software con java y en la plataforma android.
