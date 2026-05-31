## 📝 Publications {#publications}

<ol class="pub-list">
{% for pub in site.data.publications %}
<li class="pub-entry">
  <div class="pub-title">{% if pub.pdf and pub.pdf != "" %}<a href="{{ pub.pdf }}" target="_blank">{{ pub.title }}</a>{% else %}{{ pub.title }}{% endif %}</div>
  <div class="pub-authors">{{ pub.authors }}</div>
  <div class="pub-meta">
    <span class="pub-venue-tag">{{ pub.conference }}</span>
    {% if pub.pdf and pub.pdf != "" %}<a class="pub-link" href="{{ pub.pdf }}" target="_blank"><i class="fas fa-file-pdf"></i> Paper</a>{% endif %}
    {% if pub.code and pub.code != "" %}<a class="pub-link" href="{{ pub.code }}" target="_blank"><i class="fab fa-github"></i> Code</a>{% endif %}
  </div>
</li>
{% endfor %}
</ol>
