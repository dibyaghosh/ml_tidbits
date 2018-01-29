{% extends 'basic.tpl'%}

{% block header %}---
layout: post
title: "{{nb.metadata.get('title','Dummy Title')}}"
description: "{{nb.metadata.get('desc','Dummy Description')}}"
date:   "{{nb.metadata.get('date','January 1, 2018')}}"
featured: true
published: true
---

{{ super() }}
{% endblock header %}
{% block in_prompt %}
{% endblock in_prompt %}

{% block input %}
{% if 'HIDDEN' not in cell['source'] %}
<d-code language="python">
{{ cell['source'] }}
</d-code>
{% endif %}
{% endblock input %}
