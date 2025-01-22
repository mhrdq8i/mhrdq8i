// Set up the page
#set page(paper: "a4", numbering: "1")
#set text(font: "Arial", size: 10pt)

// Header Section
#grid(
  columns: (1fr, 1fr),
  gutter: 50pt,
  align(left)[
    #text(size: 18pt, weight: "bold")[Mehrdad Qasemkhani] \
    #text(size: 12pt)[Senior DevOps Engineer] \
    #text(size: 10pt)[Asia/Tehran +3:30] \
  ],
  align(right)[
    \
    #text(size: 10.2pt)[📞 +98 (938) 5200 818] \
    #text(size: 10.2pt)[🔗 #link("https://linkedin.com/in/mq8i/")] \
    #text(size: 10.2pt)[✉️ #link("mailto:qasemkhani.mehrdad@gmail.com")]
  ]
)

// About Section
#heading[About Me]
#include "about-me.typ"

// Function to create a work experience entry
#let experience(
  company: none,
  title: none,
  duration: none,
  location: none,
  responsibilities: ()
) = {
  grid(
    columns: (1fr, 1fr),
    gutter: 10pt,
    align(left)[
      #text(size: 12pt, weight: "bold")[#company] \
      #text(size: 10pt, weight: "bold")[#title] \
      #text(size: 8pt)[#duration] \
      #text(size: 9pt, fill: gray)[#location] \
    ]
  )
  text(size: 10pt)[
    #for responsibility in responsibilities [
      - #responsibility
    ]
  ]
}

// Work Experience Section
#set heading(level: 1, numbering: none)
#heading[Experience] \

// Fanap Infrastructure
#experience(
  company: "Fanap Infrastructure",
  title: "DevOps Engineer",
  duration: "May 2021 – Present",
  location: "Tehran, Iran",
  responsibilities: (

    "Led a team of 4 engineers, focusing on DevOps/SRE practices, infrastructure management, tooling, and methodologies.",
    "Finding innovative solutions, brainstorming ideas, and solving complex challenges.",
    "Proposing and implementing solutions for an HPC (High-Performance Computing) project.",
    "Created virtualization packages via Packer, including Ubuntu cloud-init installation and provisioning via Ansible.",
    "Full automation of builds using GitLab CI & GitLab Runner.",
    "Fully automated deployments using Ansible.",
    "Fully provision services and Infrastructure as Code (IaC) using Ansible. ",
    "Migrated CI pipelines from Atlassian Bamboo to GitLab CI.",
    "Docker containerization of applications.",
    "Nexus repository to store packages and Docker images.",
    "Produce and consume large volumes of messages using Kafka.",
    "Gather a large number of log messages using Promtail and push to Loki.",
    "Gather monitoring metrics using Prometheus agents (node-exporter, push gateway, etc.) to pull by Prometheus.",
    "Visualize metrics and log messages in Grafana.",
    "Synchronize PostgreSQL databases using Bucardo in active/active mode.",
    "Load-balance HTTP (Layer 7) & TCP (Layer 4) traffic using HAProxy.",
    "Use Kubernetes as the container orchestration platform.",
    "Use Ingress to handle HTTP requests in the Kubernetes cluster"

  )
) \

// Respina DevOps
#experience(
  company: "Respina Network & Beyond",
  title: "DevOps Engineer",
  duration: "Feb 2020 - Apr 2021",
  location: "Tehran, Iran",
  responsibilities: (

    "Expertise in VoIP & Cloud Telecommunication Technologies.",
    "Developed Communications Platform as a Service (CPaaS) solutions.",
    "Proficient in Session Initiation Protocol (SIP).",
    "Configured and maintained Kamailio SIP-Server using the signaling section.",
    "Deployed and managed Asterisk & FreeSWITCH soft-switch platforms.",
    "Maintained Respina SIP-Trunk services and HostedPBX solutions.",
    "Implemented SIP & HTTP Load Balancing.",
    "Achieved High-Availability over SIP & HTTP protocols via VRRP.",
    "Dockerized services using Docker Compose.",
    "Automated the entire build process using GitLab CI (Continuous Integration).",
    "Persisted objects using MinIO object storage."

  )
)

// Respina Python
#experience(
  title: "Python Developer",
  duration: "Jun 2019 - Feb 2020",
  location: "Tehran, Iran",
  responsibilities: (

    "Developed Asterisk RESTful Interface (ARI) applications using Python and the Django framework.",
    "Developed Asterisk Call-App-Manager using pure Python over the Asterisk RESTful Interface (ARI)."

  )
) \

// Kara
#experience(
  company: "Kara Hooshmand Tadbir Kish",
  title: "Python Developer",
  duration: "Sep 2016 - May 2019 ",
  location: "Tehran, Iran",
  responsibilities: (

  "Analyzed, designed, and developed RESTful API applications using Python, Flask, Neo4j, PostgreSQL, and Kong to serve a ton of subscribers.",
  "Developed comprehensive Unit-tests and Integration-tests."

  )
) \

// Work Experience Section
#set heading(level: 1, numbering: none)
#heading[Education] \

// Shamsipour
#experience(
  company: "Shamsipour Technical College",
  title: "Associate's Degree in Software Engineer",
  duration: "2010",
  location: "Tehran, Iran",
)
// Raja
#experience(
  company: "Raja",
  title: "Bachelor of Software Engineer",
  duration: "2013",
  location: "Qazvin, Iran",
)
