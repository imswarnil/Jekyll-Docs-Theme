---
layout: home
title: Welcome to CourseDocs
# You can add more front matter variables for the hero section
hero_title: The Modern Documentation Theme
hero_subtitle: Build beautiful, fast, and feature-rich documentation sites with CourseDocs. Easy to set up and a joy to use.
hero_cta_text: Get Started
hero_cta_url: /docs/getting-started/ # Change this to your first doc page
---

<div class="home-hero">
  <div class="home-hero-content">
    <h1>{{ page.hero_title }}</h1>
    <p class="subtitle">{{ page.hero_subtitle }}</p>
    <a href="{{ page.hero_cta_url | relative_url }}" class="button-primary">
      {{ page.hero_cta_text }} <i class="ph-duotone ph-arrow-right"></i>
    </a>
  </div>
</div>

<div class="home-features">
  <div class="container">
    <div class="feature-item">
      <i class="ph-duotone ph-rocket-launch"></i>
      <h3>Blazing Fast</h3>
      <p>Built with performance in mind. Your documentation will load instantly for a great user experience.</p>
    </div>
    <div class="feature-item">
      <i class="ph-duotone ph-paint-brush"></i>
      <h3>Easily Themed</h3>
      <p>Customize colors, fonts, and more using simple CSS variables for light and dark modes.</p>
    </div>
    <div class="feature-item">
      <i class="ph-duotone ph-magnifying-glass"></i>
      <h3>Powerful Search</h3>
      <p>Instant, client-side search helps your users find exactly what they're looking for, right away.</p>
    </div>
  </div>
</div>

<div class="home-cta">
  <div class="container">
    <h2>Ready to Dive In?</h2>
    <p>Explore the documentation to see everything you can do with CourseDocs.</p>
    <a href="{{ page.hero_cta_url | relative_url }}" class="button-secondary">Read the Docs</a>
  </div>
</div>