---
layout: default
---

<div id="contact">
  <h1 class="pageTitle">{% t global.contact.title %}</h1>
  <div class="contactContent">
    <p class="intro">{% t global.contact.intro %}</p>

    <p>The form is provided by <a href="http://formspree.io/">Formspree.</a> Follow the directions on their site to set up the form for use.</p>
    <p>If you have questions about the theme feel free to <a href="mailto:brimaidesigns@gmail.com">email me</a> or create an issue on <a href="https://github.com/brianmaierjr/long-haul">GitHub</a>. Enjoy!</p>
  </div>
  <form action="http://formspree.io/mestrella.1991@gmail.com" method="POST">
    <label for="name">{% t global.contact.name %}</label>    
    <input type="text" id="name" name="name" class="full-width"><br>
    <label for="email">{% t global.contact.email %}</label>
    <input type="email" id="email" name="_replyto" class="full-width"><br>
    <label for="message">{% t global.contact.message %}</label>
    <textarea name="message" id="message" cols="30" rows="10" class="full-width"></textarea><br>
    <input type="submit" value="Send" class="button">
  </form>
</div>
