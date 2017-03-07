---
layout:   default
---
{% comment%}
Here we generate all the tags.
{% endcomment%}

{% assign rawtags = "" %}
{% for post in site.posts %}
{% assign ttags = post.tags | join:'|' | append:'|' %}
{% assign rawtags = rawtags | append:ttags %}
{% endfor %}

{% assign rawtags = rawtags | split:'|' | sort %}

{% assign tags = "" %}

{% for tag in rawtags %}
{% if tag != "" %}

{% if tags == "" %}
{% assign tags = tag | split:'|' %}
{% endif %}

{% unless tags contains tag %}
{% assign tags = tags | join:'|' | append:'|' | append:tag | split:'|' %}
{% endunless %}
{% endif %}
{% endfor %}

<h1 class="page-title">
  {% t global.tag.title %}
</h1>

<p>
{% for tag in tags %}
<a href="#{{ tag | slugify }}"> {{ tag }} </a> &nbsp;&nbsp;
{% endfor %}

{% for tag in tags %}
<h2 id="{{ tag | slugify }}">{{ tag }}</h2>
<ul class="posts noList">
  {% for post in site.posts %}
  {% if post.tags contains tag %}
  <li>
    <h4>
      {% if site.lang == "es" %}
        <a class="post-link" href="{{ post.url | prepend: site.baseurl_root }}">{{ post.title }}</a>&nbsp;&nbsp;<small><span class="date">{{ post.date | date_to_string }}</span></small>
      {% else %}
        <a class="post-link" href="{{site.baseurl_root}}/{{site.lang}}{{post.url}}">{{ post.title }}</a>&nbsp;&nbsp;<small><span class="date">{{ post.date | date_to_string }}</span></small>
      {% endif %}
    </h4>
  </li>
  {% endif %}
  {% endfor %}
</ul>
{% endfor %}

