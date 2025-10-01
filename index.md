---
# IMPORTANT: This must be layout: home to use your full-width wrapper
layout: home
title: "CRM Analytics Academy | The Complete Course for Salesforce Builders"
description: "Master Salesforce CRM Analytics. The definitive, end-to-end curriculum covering data recipes, SAQL, security predicates, dynamic dashboard JSON, and Lightning embedding."
hero_image: "/assets/img/academy-hero.png" # Make sure you have an image at this path
---

<!-- This is the main content that goes inside your .home-main wrapper -->
<div class="sf-home-page">

  <!-- ======================= HERO ======================= -->
  <section class="sf-home-hero">
    <div class="sf-home-container sf-home-hero__inner">
      <div class="sf-home-hero__content">
        <p class="sf-home-eyebrow">A Course by Imswarnil</p>
        <h1 class="sf-home-hero__title">Master Salesforce CRM Analytics</h1>
        <p class="sf-home-hero__subtitle">
          The definitive curriculum for builders. Go from data foundations to deploying dynamic, secure, and insightful dashboards that drive real business value.
        </p>
        <div class="sf-home-cta-row">
          <a class="sf-home-btn sf-home-btn--primary sf-home-btn--lg" href="#pricing"><i class="ph-duotone ph-rocket-launch"></i>Enroll Now</a>
          <a class="sf-home-btn sf-home-btn--ghost sf-home-btn--lg" href="#curriculum">View Curriculum</a>
        </div>
        <ul class="sf-home-badges">
          <li>SAQL</li><li>Data Recipes</li><li>Security</li><li>Dashboard JSON</li><li>Lightning</li>
        </ul>
      </div>
      <div class="sf-home-hero__media">
        <img src="{{ page.hero_image | relative_url }}" alt="An illustration of a modern Salesforce analytics dashboard showing charts and KPIs." loading="eager">
      </div>
    </div>
  </section>

  <!-- ======================= WHO THIS COURSE IS FOR ======================= -->
  <section class="sf-home-section">
    <div class="sf-home-container">
      <h2 class="sf-home-section-title">Is This Course For You?</h2>
      <p class="sf-home-section-subtitle">This curriculum is designed for ambitious Salesforce professionals who want to become analytics experts.</p>
      <div class="sf-home-audience-grid">
        <div class="sf-home-audience-card">
          <i class="ph-duotone ph-user-gear"></i>
          <h3>Salesforce Admins</h3>
          <p>Go beyond standard reports and dashboards. Build powerful, custom analytics apps that answer complex business questions.</p>
        </div>
        <div class="sf-home-audience-card">
          <i class="ph-duotone ph-chart-bar"></i>
          <h3>Aspiring Analysts</h3>
          <p>Gain the most in-demand analytics skills in the Salesforce ecosystem and fast-track your career as a data specialist.</p>
        </div>
        <div class="sf-home-audience-card">
          <i class="ph-duotone ph-handshake"></i>
          <h3>Consultants & Architects</h3>
          <p>Confidently design and deliver scalable, secure, and high-performance analytics solutions for your clients.</p>
        </div>
      </div>
    </div>
  </section>

  <!-- ======================= INSTRUCTOR ======================= -->
  <section id="instructor" class="sf-home-section sf-home-section--muted">
    <div class="sf-home-container">
      <h2 class="sf-home-section-title">Meet Your Instructor</h2>
      <div class="sf-home-instructor">
        <div class="sf-home-instructor__media">
          <img src="/assets/img/swarnil.jpg" alt="Swarnil, Instructor at CRM Analytics Academy">
        </div>
        <div class="sf-home-instructor__bio">
          <h3>Swarnil</h3>
          <p class="sf-home-instructor__tagline">Salesforce Architect & Educator</p>
          <p>With years of experience designing and deploying large-scale analytics solutions, Swarnil has distilled his knowledge into this comprehensive curriculum. His focus is on teaching the 'why' behind the 'how', empowering you to solve real business problems.</p>
          <div class="sf-home-instructor__socials">
            <a href="#" class="sf-home-btn sf-home-btn--ghost"><i class="ph-duotone ph-twitter-logo"></i>Twitter</a>
            <a href="#" class="sf-home-btn sf-home-btn--ghost"><i class="ph-duotone ph-linkedin-logo"></i>LinkedIn</a>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- ======================= PROJECT SHOWCASE ======================= -->
  <section class="sf-home-section">
    <div class="sf-home-container">
        <h2 class="sf-home-section-title">Build Real-World Projects</h2>
        <p class="sf-home-section-subtitle">Apply your skills by building portfolio-ready capstone dashboards from scratch.</p>
        <div class="sf-home-projects-grid">
            <div class="sf-home-project-card">
                <img src="/assets/img/project-sales.png" alt="Sales Pipeline Dashboard">
                <div class="sf-home-project-card__overlay"><h3>Sales Pipeline Analysis</h3></div>
            </div>
            <div class="sf-home-project-card">
                <img src="/assets/img/project-service.png" alt="Service Agent Performance Dashboard">
                <div class="sf-home-project-card__overlay"><h3>Service Agent Performance</h3></div>
            </div>
            <div class="sf-home-project-card">
                <img src="/assets/img/project-cpq.png" alt="CPQ Deal Analytics Dashboard">
                <div class="sf-home-project-card__overlay"><h3>CPQ Deal Analytics</h3></div>
            </div>
        </div>
    </div>
  </section>

  <!-- ======================= CURRICULUM ======================= -->
  <section id="curriculum" class="sf-home-section sf-home-section--muted">
    <div class="sf-home-container">
      <h2 class="sf-home-section-title">The Curriculum Path</h2>
      <p class="sf-home-section-subtitle">A structured journey from fundamentals to advanced mastery.</p>
      <ol class="sf-home-steps">
        <li><span class="dot"></span><div><h3>Module 1 — Foundations & Mindset</h3><p>CRM Analytics vs. Reports, core use-cases, mental models, and quick wins.</p></div></li>
        <li><span class="dot"></span><div><h3>Module 2 — Datasets & Recipes</h3><p>Connectors, joins, transforms, incremental loads, and data governance.</p></div></li>
        <li><span class="dot"></span><div><h3>Module 3 — SAQL Deep Dive</h3><p>Group, filter, cogroup, windowing functions, and performance patterns.</p></div></li>
        <li><span class="dot"></span><div><h3>Module 4 — Dashboard JSON + Bindings</h3><p>Selectors, faceting, dynamic queries, templates, and UX best practices.</p></div></li>
        <li><span class="dot"></span><div><h3>Module 5 — Security & Embedding</h3><p>Security predicates, dynamic row-level access, and Lightning embedding.</p></div></li>
      </ol>
    </div>
  </section>

  <!-- ======================= PRICING ======================= -->
  <section id="pricing" class="sf-home-section">
      <div class="sf-home-container">
          <h2 class="sf-home-section-title">Become a CRM Analytics Pro</h2>
          <p class="sf-home-section-subtitle">Choose the plan that's right for your journey. One-time payment, lifetime access.</p>
          <div class="sf-home-pricing-grid">
              <div class="sf-home-price-card">
                  <h3>Starter</h3>
                  <p class="price">₹0</p>
                  <ul><li>Introductory lessons</li><li>Community forum access</li><li>Weekly newsletter</li></ul>
                  <a class="sf-home-btn sf-home-btn--ghost" href="#">Get Started</a>
              </div>
              <div class="sf-home-price-card sf-home-price-card--highlighted">
                  <div class="highlight-badge">Most Popular</div>
                  <h3>Pro Access</h3>
                  <p class="price">₹4,999</p>
                  <ul><li><strong>All 30+ lessons & labs</strong></li><li>All 4 capstone projects</li><li>Private student community</li><li>Direct instructor support</li><li>Templates & JSON files</li></ul>
                  <a class="sf-home-btn sf-home-btn--primary" href="#">Enroll in Pro</a>
              </div>
              <div class="sf-home-price-card">
                  <h3>Teams</h3>
                  <p class="price">Custom</p>
                  <ul><li>5+ team seats</li><li>Dedicated Slack channel</li><li>Private coaching sessions</li><li>Deployment assistance</li></ul>
                  <a class="sf-home-btn sf-home-btn--ghost" href="#">Contact Sales</a>
              </div>
          </div>
      </div>
  </section>

  <!-- ======================= WALL OF LOVE ======================= -->
  <section class="sf-home-section sf-home-section--muted">
    <div class="sf-home-container">
      <h2 class="sf-home-section-title">Wall of Love</h2>
      <div class="sf-home-wall-of-love">
        <blockquote>“Bindings finally clicked. The JSON patterns here are gold.”<footer>— Aakash, Consultant</footer></blockquote>
        <blockquote>“From SAQL fear to SAQL flex. This is the most comprehensive resource out there.”<footer>— Neha, Data Analyst</footer></blockquote>
        <blockquote>“I shipped my first real dashboard in one week. A career accelerator.”<footer>— Vikram, Salesforce Admin</footer></blockquote>
        <blockquote>“The security module alone was worth the price. Essential for enterprise projects.”<footer>— Anjali, Architect</footer></blockquote>
        <blockquote>“Clear, practical, and battle-tested.”<footer>— Sanjay, Project Manager</footer></blockquote>
        <blockquote>“The best investment I've made in my Salesforce career.”<footer>— Meera, Freelancer</footer></blockquote>
      </div>
    </div>
  </section>

  <!-- ======================= FAQ ======================= -->
  <section id="faq" class="sf-home-section">
    <div class="sf-home-container">
      <h2 class="sf-home-section-title">Frequently Asked Questions</h2>
      <div class="sf-home-faq">
        <details><summary>Is this course beginner-friendly?</summary><p>Absolutely. We start with the core foundations, layering on complexity with hands-on labs. No prior experience is assumed.</p></details>
        <details><summary>Do I need a Salesforce org?</summary><p>A free Developer Edition org is highly recommended. We provide a lesson showing you exactly how to get one set up.</p></details>
        <details><summary>How deep does the SAQL section go?</summary><p>Very deep. We cover everything from basic groupings to advanced cogrouping, windowing functions, and performance optimization.</p></details>
        <details><summary>Is this a one-time purchase?</summary><p>Yes. This is a one-time purchase that grants you lifetime access to all current and future course materials.</p></details>
      </div>
    </div>
  </section>

</div>