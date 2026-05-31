---
layout: homepage
---

## 👋 About Me {#about}

I am currently a member of the **LongCat Team** at **Meituan**, focusing on large language models, including post-training, model evaluation, and agentic systems.

I received my M.S. degree from **Southeast University** in 2019 and my B.S. degree from **Jiangnan University** in 2016. My research interests span LLMs, deep learning, and knowledge graphs.

Feel free to reach out if you are interested in collaboration!

## 🔥 News {#news}

<ul class="news-list">
{% for item in site.data.news %}
  <li><strong>[{{ item.date }}]</strong> {{ item.content }}</li>
{% endfor %}
</ul>

## 🔬 Research Interests {#research}


- **Large Language Models**: Post Training, Model Evaluation, and Agentic Systems.
- **Deep Learning**: Representation Learning, and Neural Architecture Design.
- **Knowledge Graphs**: Entity Recognition, Information Extraction, and BQA.

{% include publications.md %}

## 🎖 Awards {#awards}

<ul class="awards-list">
{% for item in site.data.awards %}
  <li><em>{{ item.year }}</em> — {{ item.title }}</li>
{% endfor %}
</ul>

## 📖 Education {#education}

<ul class="edu-list">
{% for item in site.data.education %}
  <li>
    <span class="edu-date">{{ item.date }}</span><br>
    <strong>{{ item.degree }}</strong>, {{ item.school }}{% if item.info and item.info != "" %}<br>{{ item.info }}{% endif %}
  </li>
{% endfor %}
</ul>
