---
layout: about
title: about
permalink: /
subtitle: winston.trey.wilkinson@gmail.com; (240) 274-7148

profile:
  align: right
  image: prof_pic.jpg
  image_circular: false # crops the image to make it circular
  more_info: >
    <p>(240) 274-7148</p>
    <p>Manakin-Sabot, Virginia</p>

# news: true # includes a list of news items
# selected_papers: true # includes a list of papers marked as "selected={true}"
# social: true # includes social icons at the bottom of the page
---

**Versatile Full Stack Developer with 6+ Years of Experience**
- Homelab Proficiency: Built reliable homelab server for family members prioritizing reliability, security, and ease-of-use.
- Full-Stack Development Expertise: Proficient in React.js, Vue.js, Node.js, and TypeScript. Led end-to-end development for a high-end clothing rental e-commerce startup ("Infinite Closet"), demonstrating comprehensive skills across the technology stack.
- Technical Leadership & Innovation: Spearheaded technology stack selection, managed databases, and implemented robust DevOps practices including Docker containerization and CI/CD pipelines on AWS and Digital Ocean.
- Client-Centric Approach: Passionate about translating complex business requirements into efficient, scalable web solutions. Extensive freelance experience in delivering tailored websites and digital solutions for small businesses, prioritizing cost-effectiveness and client satisfaction.
- Data-Driven Problem Solver: Contributed to AI model development through precise data annotation, leveraging React.js and Vue.js for data visualization. Applied Python, Pandas, and NumPy for data preprocessing and analysis.
- Proven Track Record: Consistently delivered projects on time and within scope, maintaining transparent communication and adapting to diverse client needs across various industries.

**Key Skills:**
- Frontend: React.js, Vue.js, Next.js, JavaScript, TypeScript
- Backend: Node.js, Express.js, PostgreSQL
- DevOps: Docker, CI/CD, AWS, Linux
- Data Science: Python, Pandas, NumPy
- Soft Skills: Leadership, Strategic Planning, Client Communication, Project Management, Problem-solving

Seeking challenging opportunities to apply my full stack development expertise and client-focused approach to create innovative, business-driving web solutions.

---

## My favorite projects

{% assign sorted_projects = site.projects | sort: "importance" %}

{% for project in sorted_projects %}
  <div style="margin-bottom: 10px;">
    <a href="{{ project.url | relative_url }}" style="font-weight: bold;">
      {{ project.title }}
    </a>
    {% if project.github %}
      <a href="{{ project.github }}" target="_blank" style="margin-left: 10px; color: gray;">
        <i class="fab fa-github"></i>
      </a>
    {% endif %}
  </div>
{% endfor %}
