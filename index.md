---
# IMPORTANT: This must be layout: home to use your full-width wrapper
layout: home
title: "CRM Analytics Academy | The Complete Course for Salesforce Builders"
description: "Master Salesforce CRM Analytics. A complete, end-to-end curriculum covering data recipes, SAQL, security predicates, dynamic dashboard JSON, and Lightning embedding."
hero_image: "/assets/img/academy-hero.png" # Make sure you have an image at this path
---

<!-- The .home-main class is from your layout, we'll build inside it -->
<div class="academy-page">

  <!-- ======================= HERO ======================= -->
  <section class="acad-hero">
    <div class="acad-container acad-hero__inner">
      <div class="acad-hero__content">
        <p class="acad-eyebrow">A COURSE BY IMSWARNIL</p>
        <h1 class="acad-hero__title">Master Salesforce CRM Analytics</h1>
        <p class="acad-hero__subtitle">
          The complete curriculum for builders. Go from data foundations to deploying dynamic, secure, and insightful dashboards that drive business value.
        </p>
        <div class="acad-cta-row">
          <a class="acad-btn acad-btn--primary acad-btn--lg" href="#curriculum"><i class="ph-duotone ph-graduation-cap"></i>Explore Curriculum</a>
          <a class="acad-btn acad-btn--ghost acad-btn--lg" href="#instructor">Meet the Instructor</a>
        </div>
        <ul class="acad-badges">
          <li>SAQL</li><li>Data Recipes</li><li>Security</li><li>Dashboard JSON</li><li>Lightning</li>
        </ul>
      </div>
      <div class="acad-hero__media">
        <img src="{{ page.hero_image | relative_url }}" alt="An illustration of a modern Salesforce analytics dashboard showing charts and KPIs." loading="eager">
      </div>
    </div>
  </section>

  <!-- ======================= KPIs ======================= -->
  <section class="acad-kpis">
    <div class="acad-container acad-kpis__grid">
      <div class="acad-kpi"><div class="acad-kpi__num">30+</div><div class="acad-kpi__label">In-Depth Lessons</div></div>
      <div class="acad-kpi"><div class="acad-kpi__num">10</div><div class="acad-kpi__label">Real-World Projects</div></div>
      <div class="acad-kpi"><div class="acad-kpi__num">4</div><div class="acad-kpi__label">Capstone Dashboards</div></div>
      <div class="acad-kpi"><div class="acad-kpi__num">∞</div><div class="acad-kpi__label">Career Upside</div></div>
    </div>
  </section>

  <!-- ======================= MEET YOUR INSTRUCTOR ======================= -->
  <section id="instructor" class="acad-section">
    <div class="acad-container">
      <h2 class="acad-section-title">Meet Your Instructor</h2>
      <div class="acad-instructor">
        <div class="acad-instructor__media">
          <img src="/assets/img/swarnil.jpg" alt="Swarnil, Instructor at CRM Analytics Academy">
        </div>
        <div class="acad-instructor__bio">
          <h3>Swarnil</h3>
          <p class="acad-instructor__tagline">Salesforce Architect & Educator</p>
          <p>With years of experience designing and deploying large-scale analytics solutions on the Salesforce platform, Swarnil has distilled his knowledge into this comprehensive, practical curriculum. His focus is on teaching the 'why' behind the 'how', empowering you to solve real business problems, not just pass exams.</p>
          <div class="acad-instructor__socials">
            <a href="#" class="acad-btn acad-btn--ghost"><i class="ph-duotone ph-twitter-logo"></i>Twitter</a>
            <a href="#" class="acad-btn acad-btn--ghost"><i class="ph-duotone ph-linkedin-logo"></i>LinkedIn</a>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- ======================= CURRICULUM ======================= -->
  <section id="curriculum" class="acad-section acad-section--muted">
    <div class="acad-container">
      <h2 class="acad-section-title">The Curriculum Path</h2>
      <p class="acad-section-subtitle">A structured journey from fundamentals to advanced mastery.</p>
      <ol class="acad-steps">
        <li><span class="dot"></span><div><h3>Module 1 — Foundations & Mindset</h3><p>CRM Analytics vs. Reports, core use-cases, mental models, and quick wins.</p></div></li>
        <li><span class="dot"></span><div><h3>Module 2 — Datasets & Recipes</h3><p>Connectors, joins, transforms, incremental loads, and data governance.</p></div></li>
        <li><span class="dot"></span><div><h3>Module 3 — SAQL Deep Dive</h3><p>Group, filter, cogroup, windowing functions, and performance patterns.</p></div></li>
        <li><span class="dot"></span><div><h3>Module 4 — Dashboard JSON + Bindings</h3><p>Selectors, faceting, dynamic queries, templates, and UX best practices.</p></div></li>
        <li><span class="dot"></span><div><h3>Module 5 — Security & Embedding</h3><p>Security predicates, dynamic row-level access, and Lightning embedding.</p></div></li>
      </ol>
    </div>
  </section>

  <!-- ======================= TRAILBLAZER SPOTLIGHT ======================= -->
  <section class="acad-section">
    <div class="acad-container">
      <h2 class="acad-section-title">Trailblazer Spotlight</h2>
      <p class="acad-section-subtitle">See the success stories from our amazing students.</p>
      <div class="acad-trailblazers">
        <div class="acad-trailblazer-card">
          <img src="/assets/img/student1.jpg" alt="Priya Patel">
          <h4>Priya Patel</h4>
          <span>Consultant → Analytics Architect</span>
          <blockquote>“The deep dive on SAQL and bindings was a game-changer. I landed a promotion within three months of completing the course.”</blockquote>
        </div>
        <div class="acad-trailblazer-card">
          <img src="/assets/img/student2.jpg" alt="Rohan Desai">
          <h4>Rohan Desai</h4>
          <span>Admin → Data Engineer</span>
          <blockquote>“I always struggled with the data layer. The recipes module simplified everything. I now manage our entire analytics data pipeline.”</blockquote>
        </div>
      </div>
    </div>
  </section>

  <!-- ======================= WALL OF LOVE ======================= -->
  <section class="acad-section acad-section--muted">
    <div class="acad-container">
      <h2 class="acad-section-title">Wall of Love</h2>
      <div class="acad-wall-of-love">
        <blockquote>“Bindings finally clicked. The JSON patterns here are gold.”<footer>— Aakash, Consultant</footer></blockquote>
        <blockquote>“From SAQL fear to SAQL flex. This is the most comprehensive resource out there, period.”<footer>— Neha, Data Analyst</footer></blockquote>
        <blockquote>“I shipped my first real analytics dashboard in one week. A career accelerator.”<footer>— Vikram, Salesforce Admin</footer></blockquote>
        <blockquote>“The security predicate module alone was worth the price. Essential for enterprise projects.”<footer>— Anjali, Technical Architect</footer></blockquote>
        <blockquote>“Clear, practical, and battle-tested.”<footer>— Sanjay, Project Manager</footer></blockquote>
        <blockquote>“The best investment I've made in my Salesforce career.”<footer>— Meera, Freelancer</footer></blockquote>
      </div>
    </div>
  </section>

  <!-- ======================= SUPPORT THIS PROJECT ======================= -->
  <section class="acad-section">
    <div class="acad-container">
      <div class="acad-support-box">
        <i class="ph-duotone ph-heart"></i>
        <h2>Support This Project</h2>
        <p>This academy is a passion project. If you find it valuable, consider sponsoring on GitHub to help keep the content up-to-date and accessible.</p>
        <a href="#" class="acad-btn acad-btn--primary acad-btn--lg">Sponsor on GitHub</a>
      </div>
    </div>
  </section>

  <!-- ======================= FAQ ======================= -->
  <section id="faq" class="acad-section acad-section--muted">
    <div class="acad-container">
      <h2 class="acad-section-title">Frequently Asked Questions</h2>
      <div class="acad-faq">
        <details><summary>Is this course beginner-friendly?</summary><p>Absolutely. We start with the core foundations, layering on complexity with hands-on labs. No prior experience is assumed.</p></details>
        <details><summary>Do I need a Salesforce org?</summary><p>A free Developer Edition org is highly recommended. We provide a lesson showing you exactly how to get one set up.</p></details>
        <details><summary>How deep does the SAQL section go?</summary><p>Very deep. We cover everything from basic groupings to advanced cogrouping, windowing functions, and performance optimization.</p></details>
        <details><summary>Is this a one-time purchase?</summary><p>Yes. This is a one-time purchase that grants you lifetime access to all current and future course materials.</p></details>
      </div>
    </div>
  </section>

</div>