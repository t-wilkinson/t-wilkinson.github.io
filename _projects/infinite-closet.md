---
layout: page
title: Infinite Closet E-Commerce Platform
description: A full-stack clothing rental platform showcasing end-to-end development lifecycle management.
img: /assets/img/infinite-closet/home-page.png
importance: 1
category: work
giscus_comments: false
github: https://github.com/t-wilkinson/infinite-closet
---

{% include project.liquid %}


<div style="float: right; width: 45%; margin-left: 20px; margin-bottom: 20px;">
{% include figure.liquid
path="/assets/img/infinite-closet/shop-page.png"
alt="Shop Page"
class="img-fluid rounded z-depth-1"
width="100%"
%}
</div>


This repository showcases the e-commerce platform I built for **Infinite Closet**, a clothing rental startup. This project demonstrates my full-stack development expertise and ability to manage the entire development lifecycle.

## Overview

### Tech Stack
- **Frontend:** ReactJS, NextJS, TailwindCSS
- **Backend:** Node.js (Express.js), Strapi (CMS), NGINX
- **Database:** PostgreSQL
- **DevOps:** Docker, Docker Compose, CI/CD (GitHub Actions)
- **Other:** Stripe (Payments), Cypress & Jest (Testing)

<div style="clear: both;"></div>

## Key Features
<div style="float: left; width: 35%; margin-right: 35px; margin-bottom: 20px;">
{% include figure.liquid
path="/assets/img/infinite-closet/strapi-product-schema.png"
alt="Strapi Product Schema"
class="img-fluid rounded z-depth-1"
width="100%"
%}
</div>
- **User Dashboard:** Seamless profile management and receipt/clothing image uploads.
- **Admin Panel:** User-friendly interface designed for non-technical stakeholders to manage inventory and content.
- **Advanced Logic:** Sophisticated filtering and a custom booking engine integrated with delivery providers for precise scheduling.
- **Integrations:** Automated transactional emails and seamless API connections with third-party logistics (Hived, ACS, Bloomino).

<div style="clear: both;"></div>


## Highlights for Recruiters
<div style="float: right; width: 35%; margin-left: 20px; margin-bottom: 20px;">
{% include figure.liquid
path="/assets/img/infinite-closet/why-rent.png"
alt="Why Rent Graphic"
class="img-fluid rounded z-depth-1"
width="100%"
%}
</div>
- **Full ownership:** Responsible for everything from database schema design to frontend user experience.
- **Scalability:** Utilized containerization and automated testing pipelines (Cypress/Jest) to ensure high code quality across 35k+ lines of code.
- **Collaboration:** Translated complex business requirements from stakeholders into technical specifications and maintained the company vision alongside the CEO.

<div style="clear: both;"></div>

## How to Run Locally

To get the environment running, ensure you have **Docker** and **Docker Compose** installed.

```bash
# Clone the repository
git clone [https://github.com/t-wilkinson/infinite-closet](https://github.com/t-wilkinson/infinite-closet)

cd infinite-closet
(cd frontend && yarn install)
(cd backend && yarn install)

# Run the local environment script
scripts/run local up

```

---

*This project is a testament to my ability to build robust, scalable e-commerce platforms and collaborate effectively with diverse stakeholders.*

