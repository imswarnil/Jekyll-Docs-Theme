---
layout: home
title: "CRM Analytics Academy | Master Salesforce Analytics"
permalink: /
description: "Go from zero to job-ready with a hands-on curriculum covering datasets, recipes, SAQL, security predicates, dashboard JSON, and Lightning embedding."
hero_title: "Master Salesforce CRM Analytics"
hero_subtitle: "The complete, end-to-end curriculum for builders. Go from data foundations to deploying dynamic, secure, and insightful dashboards that drive business value."
---

<main>
    <!-- HERO -->
    <section class="hero-banner hero-banner--academy">
      <div class="sf-container">
        <div class="hero-text">
          <div class="eyebrow-text">CRM ANALYTICS • ACADEMY</div>
          <h1>{{ page.hero_title }}</h1>
          <p class="hero__subtitle">{{ page.hero_subtitle }}</p>
          <div class="hero-cta">
            <a href="#curriculum" class="btn btn--primary btn--lg">Browse Curriculum</a>
            <a href="#lessons" class="btn btn--ghost btn--lg">Explore Lessons</a>
          </div>
          <div class="hero-pills">
            <span class="pill">SAQL</span>
            <span class="pill">Security Predicates</span>
            <span class="pill">Dashboard JSON</span>
            <span class="pill">Data Recipes</span>
            <span class="pill">Lightning Embedding</span>
          </div>
        </div>
        <div class="hero-media">
          <img class="hero-character" src="/assets/img/academy-hero.png" alt="An illustration of a Salesforce analytics dashboard showing charts and KPIs.">
        </div>
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
            <div class="kpi-label">Real-World Projects</div>
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
        <h2 class="section-title">What You’ll Master</h2>
        <div class="feature-grid">
          <article class="feature-card">
            <i class="ph-duotone ph-database icon"></i>
            <h3>Data Foundations</h3>
            <p>Connect, model, and prep data with Recipes. Nail row-level thinking for enterprise analytics.</p>
          </article>
          <article class="feature-card">
            <i class="ph-duotone ph-code-simple icon"></i>
            <h3>SAQL Mastery</h3>
            <p>Aggregate, filter, group, and cogroup like a pro. Turn complex business questions into optimized SAQL.</p>
          </article>
          <article class="feature-card">
            <i class="ph-duotone ph-shield-check icon"></i>
            <h3>Security Predicates</h3>
            <p>Design dynamic, row-level security for enterprise scale. Achieve least privilege without breaking the user experience.</p>
          </article>
          <article class="feature-card">
            <i class="ph-duotone ph-layout icon"></i>
            <h3>Dashboard JSON</h3>
            <p>Master bindings, selectors, and dynamic queries. Build adaptive, interactive dashboards that users love.</p>
          </article>
          <article class="feature-card">
            <i class="ph-duotone ph-lightning icon"></i>
            <h3>Lightning Embedding</h3>
            <p>Bring dashboards directly into Salesforce apps with context to reduce clicks and boost user adoption.</p>
          </article>
          <article class="feature-card">
            <i class="ph-duotone ph-rocket-launch icon"></i>
            <h3>Real-World Projects</h3>
            <p>Build capstone dashboards for Sales, Service, and CPQ. Ship portfolio pieces that employers will notice.</p>
          </article>
        </div>
      </div>
    </section>
    <!-- CURRICULUM -->
    <section id="curriculum" class="section section--muted">
      <div class="sf-container">
        <h2 class="section-title">The Curriculum Path</h2>
        <div class="steps">
          <div class="step">
            <span class="step-dot"></span>
            <div class="step-content">
              <h3>Module 1 — Foundations & Mindset</h3>
              <p>CRM Analytics vs. Reports, core use-cases, mental models, and quick wins.</p>
            </div>
          </div>
          <div class="step">
            <span class="step-dot"></span>
            <div class="step-content">
              <h3>Module 2 — Datasets & Recipes</h3>
              <p>Connectors, joins, transforms, incremental loads, and data governance.</p>
            </div>
          </div>
          <div class="step">
            <span class="step-dot"></span>
            <div class="step-content">
              <h3>Module 3 — SAQL Deep Dive</h3>
              <p>Group, filter, foreach, order, cogroup, windowing functions, and performance patterns.</p>
            </div>
          </div>
          <div class="step">
            <span class="step-dot"></span>
            <div class="step-content">
              <h3>Module 4 — Dashboard JSON + Bindings</h3>
              <p>Selectors, faceting, dynamic queries from user input, templates, and UX best practices.</p>
            </div>
          </div>
          <div class="step">
            <span class="step-dot"></span>
            <div class="step-content">
              <h3>Module 5 — Security & Embedding</h3>
              <p>Security predicates, dynamic row-level access, Lightning embedding, and deployment.</p>
            </div>
          </div>
        </div>
        <div class="cta-row">
          <a href="/enroll" class="btn btn--primary btn--lg"><i class="ph-duotone ph-graduation-cap"></i> Enroll Now</a>
          <a href="#faq" class="btn btn--ghost btn--lg">Read FAQs</a>
        </div>
      </div>
    </section>
    <!-- LATEST LESSONS -->
    <section id="lessons" class="section">
      <div class="sf-container">
        <h2 class="section-title">Latest Lessons</h2>
        <div class="lesson-list">
          {%- assign posts = site.posts | where_exp: "p", "p.draft != true" -%}
          {%- assign ordered = posts | sort: "date" | reverse -%}
          {% for post in ordered limit: 4 %}
            <a class="lesson-item" href="{{ post.url | relative_url }}">
              <i class="ph-duotone ph-article"></i>
              <div class="lesson-meta">
                <h3 class="lesson-title">{{ post.title }}</h3>
                <p class="lesson-sub">{{ post.excerpt | strip_html | truncate: 120 }}</p>
                <time class="lesson-date">{{ post.date | date: "%b %d, %Y" }}</time>
              </div>
            </a>
          {% endfor %}
          {% if ordered.size == 0 %}
            <p style="text-align:center; color: var(--docs-muted-foreground);">New lessons are being crafted. Stay tuned!</p>
          {% endif %}
        </div>
      </div>
    </section>
    <!-- TESTIMONIALS -->
    <section class="section section--muted">
      <div class="sf-container">
        <h2 class="section-title">What Builders Are Saying</h2>
        <div class="testimonial-grid">
          <blockquote class="testimonial">
            <p>“Clear, practical, and battle-tested. I shipped my first real analytics dashboard in one week. This course is a career accelerator.”</p>
            <footer>— Aakash, CRM Analyst</footer>
          </blockquote>
          <blockquote class="testimonial">
            <p>“The concepts of bindings and dashboard JSON finally clicked for me. The patterns taught here are pure gold for any consultant.”</p>
            <footer>— Priya, Salesforce Consultant</footer>
          </blockquote>
          <blockquote class="testimonial">
            <p>“I went from SAQL fear to SAQL flex. This is the most comprehensive resource out there, period. Totally worth the investment.”</p>
            <footer>— Rohan, Data Engineer</footer>
          </blockquote>
        </div>
      </div>
    </section>
    <!-- FAQ -->
    <section id="faq" class="section">
      <div class="sf-container">
        <h2 class="section-title">Frequently Asked Questions</h2>
        <div class="faq">
          <details>
            <summary>Is this course beginner-friendly?</summary>
            <div class="faq__content"><p>Absolutely. We start with the core foundations of data and analytics, layering on complexity with hands-on labs and demos. No prior experience is assumed.</p></div>
          </details>
          <details>
            <summary>Do I need access to a Salesforce org?</summary>
            <div class="faq__content"><p>A free Salesforce Developer Edition org is highly recommended to follow along with the hands-on labs. We provide a lesson showing you exactly how to get one set up.</p></div>
          </details>
          <details>
            <summary>How deep does the SAQL section go?</summary>
            <div class="faq__content"><p>Very deep. We cover everything from basic groupings and filters to advanced cogrouping, windowing functions, and query performance optimization techniques.</p></div>
          </details>
          <details>
            <summary>Is this a one-time purchase or a subscription?</summary>
            <div class="faq__content"><p>This is a one-time purchase that grants you lifetime access to all current and future course materials, including video lessons, project files, and code templates.</p></div>
          </details>
        </div>
      </div>
    </section>
</main>