---
# IMPORTANT: This must be layout: home to use your full-width wrapper
layout: home
title: "CRM Analytics Academy | The Complete Course for Salesforce Builders"
description: "Master Salesforce CRM Analytics. The definitive, end-to-end curriculum covering data recipes, SAQL, security predicates, dynamic dashboard JSON, and Lightning embedding."
hero_image: "/assets/img/academy-hero.png" # Make sure you have an image at this path
---

<section class="hero-banner hero-banner--academy">
  <div class="hero-content">
    <div class="hero-text">
      <div class="tableau-logo">CRM ANALYTICS • ACADEMY</div>
      <h1>Clarity in Complexity</h1>
      <p class="sf-text--large sf-text-muted hero__subtitle">Go beyond dashboards. Learn to connect disparate data points, uncover hidden patterns, and build a true data culture with our expert-led courses.</p>
      <div class="hero-cta">
        <a href="#curriculum" class="btn btn--primary">Browse Curriculum</a>
        <a href="#lessons" class="btn btn--ghost">Latest Lessons</a>
      </div>
      <div class="hero-pills">
        <span class="pill">SAQL</span>
        <span class="pill">Data Storytelling</span>
        <span class="pill">Predictive AI</span>
        <span class="pill">Advanced Security</span>
      </div>
    </div>
    <!-- The Data Constellation SVG -->
    <div class="hero-svg-wrapper" aria-hidden="true">
      <svg id="hero-constellation-svg" viewBox="0 0 500 400" xmlns="http://www.w3.org/2000/svg">
        <defs>
          <radialGradient id="glow-gradient" cx="50%" cy="50%" r="50%" fx="50%" fy="50%">
            <stop offset="0%" style="stop-color: var(--hero-svg-glow); stop-opacity: 0.3"/>
            <stop offset="100%" style="stop-color: var(--hero-svg-glow); stop-opacity: 0"/>
          </radialGradient>
          <filter id="blur-effect">
            <feGaussianBlur in="SourceGraphic" stdDeviation="1" />
          </filter>
        </defs>
        <!-- Background Elements -->
        <g id="svg-layer-back">
          <rect width="500" height="400" fill="var(--hero-svg-bg)" />
          <circle cx="250" cy="200" r="250" fill="url(#glow-gradient)" />
          <!-- Ambient Data Points -->
          <g class="ambient-data">
            <circle cx="50" cy="50" r="1.5"/><circle cx="120" cy="350" r="1"/><circle cx="450" cy="80" r="2"/><circle cx="380" cy="320" r="1.2"/><circle cx="250" cy="10" r="1.5"/>
          </g>
        </g>
        <!-- Mid-ground Elements -->
        <g id="svg-layer-mid">
          <g class="constellation" id="constellation-chart">
            <path class="constellation-path" d="M358.3,133.3a88,88,0,1,1-119.8-80"/>
            <circle class="constellation-node" cx="238.5" cy="53.3" r="3"/><circle class="constellation-node" cx="358.3" cy="133.3" r="3"/>
          </g>
          <g class="constellation" id="constellation-users">
            <path class="constellation-path" d="M141.7,266.7a48,48,0,1,0,0-96"/>
            <circle class="constellation-node" cx="141.7" cy="170.7" r="3"/><circle class="constellation-node" cx="141.7" cy="266.7" r="3"/>
          </g>
        </g>
        <!-- Foreground Elements -->
        <g id="svg-layer-front">
          <g class="constellation" id="constellation-trend">
            <path class="constellation-path" d="M250,320, 320,250, 380,280, 450,210"/>
            <circle class="constellation-node" cx="250" cy="320" r="3"/><circle class="constellation-node" cx="320" cy="250" r="3"/><circle class="constellation-node" cx="380" cy="280" r="3"/><circle class="constellation-node" cx="450" cy="210" r="3"/>
          </g>
          <!-- The Central Engine -->
          <g class="engine">
            <circle class="engine-pulse" cx="250" cy="200" r="20" />
            <circle class="engine-core" cx="250" cy="200" r="8" />
          </g>
          <!-- The Phosphor Icons (drawn last) -->
          <g class="icon-group" id="icon-chart" transform="translate(350, 125) scale(0.4)">
            <path class="ph-duotone-bg" d="M128,24a104,104,0,0,0-94.6,71.3L128,128Z"/>
            <path class="ph-duotone-fg" d="M128,24V128h94.6A104.3,104.3,0,0,0,128,24ZM224,136H136V43.2a96,96,0,0,1,88,92.8Z"/>
            <path class="ph-duotone-fg" d="M117.8,138.2a104,104,0,1,0,98.8,89.2.8.8,0,0,0-.1.2l-90.3-64.5A8,8,0,0,0,117.8,138.2ZM128,224a88,88,0,1,1,88-88v.8L128.8,144a16.1,16.1,0,0,1-17.6-6.4l-64-89.6A88,88,0,0,1,128,224Z"/>
          </g>
          <g class="icon-group" id="icon-users" transform="translate(133, 258) scale(0.35)">
             <path class="ph-duotone-bg" d="M128,120a40,40,0,1,0-40-40A40,40,0,0,0,128,120Zm80,8a40,40,0,1,0-40-40A40,40,0,0,0,208,128ZM48,128a40,40,0,1,0-40-40A40,40,0,0,0,48,128Z"/><path class="ph-duotone-fg" d="M128,72a48,48,0,1,0,48,48A48,48,0,0,0,128,72Zm0,80a32,32,0,1,1,32-32A32,32,0,0,1,128,152Z"/><path class="ph-duotone-fg" d="M208,80a48,48,0,1,0,48,48A48,48,0,0,0,208,80Zm0,80a32,32,0,1,1,32-32A32,32,0,0,1,208,160Z"/><path class="ph-duotone-fg" d="M48,80a48,48,0,1,0,48,48A48,48,0,0,0,48,80ZM48,160a32,32,0,1,1,32-32A32,32,0,0,1,48,160Z"/><path class="ph-duotone-fg" d="M156,172.9a59.7,59.7,0,0,0-56,0,64,64,0,0,0-47.2,60.5a8,8,0,0,0,15.9,1.2,48,48,0,0,1,87.2-1.3,8,8,0,0,0,15.9-1.2A64,64,0,0,0,156,172.9Z"/><path class="ph-duotone-fg" d="M239.2,234.6a48,48,0,0,0-87.2-1.3,8,8,0,0,0-15.9,1.2,64,64,0,0,0,47.2,60.5,57.1,57.1,0,0,0,24.5,0,64,64,0,0,0,47.2-60.5,8,8,0,1,0-15.8-1.2Z"/><path class="ph-duotone-fg" d="M115.2,233.3a48,48,0,0,0-87.2,1.3,8,8,0,0,0,15.9,1.2A64,64,0,0,0,91.1,174a57.1,57.1,0,0,0-24.5,0,64,64,0,0,0-47.2,60.5,8,8,0,1,0,15.8,1.2A48,48,0,0,0,115.2,233.3Z"/>
          </g>
          <g class="icon-group" id="icon-trend" transform="translate(442, 202) scale(0.3)">
            <path class="ph-duotone-bg" d="M240,56,136,160,72,96,24,144V56Z"/>
            <path class="ph-duotone-fg" d="M248,48a8,8,0,0,0-8,8V128l-61.7-61.7a8,8,0,0,0-11.3,0L136,97.7,77.7,39.3a8,8,0,0,0-11.3,0L24,81.7V56a8,8,0,0,0-16,0V152a8,8,0,0,0,8,8H248a8,8,0,0,0,0-16H42.3l24-24L136,182.3l28.7-28.6a8,8,0,0,0,0-11.3L224,81.7l16,16V56A8,8,0,0,0,248,48Z"/>
          </g>
        </g>
      </svg>
    </div>
  </div>
</section>

<script>
  // Subtle Parallax Effect for Hero SVG
  document.addEventListener('DOMContentLoaded', () => {
    const svg = document.getElementById('hero-constellation-svg');
    if (svg) {
      const backLayer = svg.getElementById('svg-layer-back');
      const midLayer = svg.getElementById('svg-layer-mid');
      const frontLayer = svg.getElementById('svg-layer-front');
      const windowWidth = window.innerWidth;
      const windowHeight = window.innerHeight;

      window.addEventListener('mousemove', (e) => {
        const x = (e.clientX - windowWidth / 2) / windowWidth;
        const y = (e.clientY - windowHeight / 2) / windowHeight;

        backLayer.style.transform = `translate(${x * 5}px, ${y * 5}px)`;
        midLayer.style.transform = `translate(${x * 10}px, ${y * 10}px)`;
        frontLayer.style.transform = `translate(${x * 15}px, ${y * 15}px)`;
      });
    }
  });
</script>

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