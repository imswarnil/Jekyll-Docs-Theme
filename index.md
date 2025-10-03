---
# IMPORTANT: This must be layout: home to use your full-width wrapper
layout: home
title: "CRM Analytics Academy | The Complete Course for Salesforce Builders"
description: "Master Salesforce CRM Analytics. The definitive, end-to-end curriculum covering data recipes, SAQL, security predicates, dynamic dashboard JSON, and Lightning embedding."
hero_image: "/assets/img/academy-hero.png" # Make sure you have an image at this path
---

<!-- HERO -->
<section class="hero-banner hero-banner--academy">
  <div class="hero-content">
    <div class="hero-text">
      <div class="tableau-logo">CRM ANALYTICS • ACADEMY</div>
      <h1>{{ page.hero_title }}</h1>
      <p class="sf-text--large sf-text-muted hero__subtitle">{{ page.hero_subtitle }}</p>

      <div class="hero-cta">
        <a href="#curriculum" class="btn btn--primary">Browse Curriculum</a>
        <a href="#lessons" class="btn btn--ghost">Latest Lessons</a>
      </div>

      <div class="hero-pills">
        <span class="pill">SAQL</span>
        <span class="pill">Security Predicate</span>
        <span class="pill">Dashboard JSON</span>
        <span class="pill">Lightning Embedding</span>
      </div>
    </div>

    <!-- Optional hero art placeholder; swap with your SVG/PNG if needed -->
    <img class="hero-character" src="/assets/img/crm-analytics-hero.svg" alt="CRM Analytics Academy">
  </div>
</section>

<!-- KPI STRIP -->
<section class="section kpis">
  <div class="sf-container">
    <div class="kpi-grid">
      <div class="kpi-card">
        <div class="kpi-num">30+</div>
        <div class="kpi-label">Hands-on Lessons</div>
      </div>
      <div class="kpi-card">
        <div class="kpi-num">10</div>
        <div class="kpi-label">Real Projects</div>
      </div>
      <div class="kpi-card">
        <div class="kpi-num">4</div>
        <div class="kpi-label">Capstone Dashboards</div>
      </div>
      <div class="kpi-card">
        <div class="kpi-num">∞</div>
        <div class="kpi-label">Career Upside</div>
      </div>
    </div>
  </div>
</section>

<!-- WHAT YOU'LL LEARN -->
<section class="section">
  <div class="sf-container">
    <h2 class="section-title">What you’ll learn</h2>
    <div class="feature-grid">
      <article class="feature-card">
        <i class="ph-duotone ph-database icon"></i>
        <h3>Data Foundations</h3>
        <p>Connect, model, and prep data with Recipes, Dataflows, and Datasets. Nail row/column thinking for Analytics.</p>
      </article>
      <article class="feature-card">
        <i class="ph-duotone ph-code-simple icon"></i>
        <h3>SAQL Mastery</h3>
        <p>Aggregate, filter, group, and cogroup like a pro. Turn business questions into optimized SAQL.</p>
      </article>
      <article class="feature-card">
        <i class="ph-duotone ph-shield-check icon"></i>
        <h3>Security Predicate</h3>
        <p>Design row-level security for enterprise scale. Least privilege without breaking UX.</p>
      </article>
      <article class="feature-card">
        <i class="ph-duotone ph-layout icon"></i>
        <h3>Dashboard JSON</h3>
        <p>Bindings, selectors, and dynamic queries. Build adaptive dashboards users love.</p>
      </article>
      <article class="feature-card">
        <i class="ph-duotone ph-lightning icon"></i>
        <h3>Lightning Embedding</h3>
        <p>Bring dashboards into Salesforce apps with context—reduce clicks, boost adoption.</p>
      </article>
      <article class="feature-card">
        <i class="ph-duotone ph-rocket-launch icon"></i>
        <h3>Real Projects</h3>
        <p>Capstone dashboards for Sales, CPQ, and Support. Ship portfolio pieces employers notice.</p>
      </article>
    </div>
  </div>
</section>

<!-- CURRICULUM -->
<section id="curriculum" class="section section--muted">
  <div class="sf-container">
    <h2 class="section-title">Curriculum</h2>

    <div class="steps">
      <div class="step">
        <span class="step-dot"></span>
        <div class="step-content">
          <h3>Module 1 — Foundations & Mindset</h3>
          <p>CRM Analytics vs Reports, use-cases, mental models, and quick wins.</p>
        </div>
      </div>
      <div class="step">
        <span class="step-dot"></span>
        <div class="step-content">
          <h3>Module 2 — Datasets & Recipes</h3>
          <p>Connectors, joins, transforms, incremental loads, and governance.</p>
        </div>
      </div>
      <div class="step">
        <span class="step-dot"></span>
        <div class="step-content">
          <h3>Module 3 — SAQL Deep Dive</h3>
          <p>Group, filter, foreach, order, cogroup, windowing, and performance patterns.</p>
        </div>
      </div>
      <div class="step">
        <span class="step-dot"></span>
        <div class="step-content">
          <h3>Module 4 — Dashboard JSON + Bindings</h3>
          <p>Selectors, facets, dynamic queries, templates, and UX rules.</p>
        </div>
      </div>
      <div class="step">
        <span class="step-dot"></span>
        <div class="step-content">
          <h3>Module 5 — Security & Embedding</h3>
          <p>Security predicate, row-level access, Lightning embedding, and deployment.</p>
        </div>
      </div>
    </div>

    <div class="cta-row">
      <a href="/enroll" class="btn btn--primary btn--lg"><i class="ph-duotone ph-graduation-cap"></i> Enroll Now</a>
      <a href="#faq" class="btn btn--ghost btn--lg">Read FAQs</a>
    </div>
  </div>
</section>

<!-- LATEST LESSONS (Auto) -->
<section id="lessons" class="section">
  <div class="sf-container">
    <h2 class="section-title">Latest lessons</h2>
    <div class="lesson-list">
      {% assign posts = site.posts | where_exp: "p", "p.draft != true" %}
      {% assign ordered = posts | sort: "date" | reverse %}
      {% for post in ordered limit: 6 %}
        <a class="lesson-item" href="{{ post.url | relative_url }}">
          <i class="ph-duotone ph-article"></i>
          <div class="lesson-meta">
            <h3 class="lesson-title">{{ post.title }}</h3>
            <p class="lesson-sub">{{ post.excerpt | strip_html | truncate: 120 }}</p>
            <span class="lesson-date">{{ post.date | date: "%b %d, %Y" }}</span>
          </div>
        </a>
      {% endfor %}
      {% if ordered.size == 0 %}
        <p class="sf-text-muted">Lessons coming soon. Grab popcorn.</p>
      {% endif %}
    </div>
  </div>
</section>

<!-- TESTIMONIALS -->
<section class="section section--muted">
  <div class="sf-container">
    <h2 class="section-title">Creators & Builders speak</h2>
    <div class="testimonial-grid">
      <blockquote class="testimonial">
        <p>“Clear, practical, and battle-tested. I shipped my first Analytics dashboard in a week.”</p>
        <footer>— Aakash, CRM Analyst</footer>
      </blockquote>
      <blockquote class="testimonial">
        <p>“Bindings finally clicked. The JSON patterns here are gold.”</p>
        <footer>— Priya, Salesforce Consultant</footer>
      </blockquote>
      <blockquote class="testimonial">
        <p>“From SAQL fear to SAQL flex. Totally worth it.”</p>
        <footer>— Rohan, Data Engineer</footer>
      </blockquote>
    </div>
  </div>
</section>

<!-- FAQ -->
<section id="faq" class="section">
  <div class="sf-container">
    <h2 class="section-title">FAQ</h2>
    <div class="faq">
      <details>
        <summary>Is this beginner friendly?</summary>
        <p>Yes. We start with foundations and layer complexity with demos and labs.</p>
      </details>
      <details>
        <summary>Do I need Salesforce access?</summary>
        <p>A dev org is recommended for hands-on labs. We show you how to get one.</p>
      </details>
      <details>
        <summary>Will I learn SAQL?</summary>
        <p>Deeply. From groupings to cogroups and performance techniques.</p>
      </details>
    </div>
  </div>
</section>