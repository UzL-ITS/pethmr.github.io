---
layout: post
title: Pet-HMR Demonstrator 2
author: X41 D-Sec
date: 2023-07-03
tags: news
---

On the 31st of May and the 1st of June, the PeT-HMR partners reunited for the second Demonstrator in Aachen. This gathering was an opportunity for all the partners to showcase the systems on which they have diligently worked last year and discuss new results and findings. Partners had also discussed new ideas, progress in the field of security and the future direction of the project. 

# Automated penetration testing (APeT) and HTTP anomaly detection  

During the last year, LHIND has been mainly working on the development of their Automated Penetration Testing Tool (APeT), which represents an important milestone in the offensive part of the PeT-HMR project as well as the development of their AI Anomaly detection model, responsible for classifying HTTP requests as being malicious or benign.  

The essence of the PeT-HMR project revolves around the interaction between SHoP (Smart Honeypot Systems) and APeT. By leveraging the attack description language Snitch, both components can interact with one another and therefore mutually improve their capabilities, e.g., the detection capabilities for SHoP and the attack strategies for APeT. A first demonstration of this interaction has been shown during this demonstrator where LHIND ran APeT against a machine monitored by SHoP and running an intentionally vulnerable application - Juiceshop. As the automated scan was running and progressed through the stages of reconnaissance, enumeration and vulnerability scan, the issued requests were processed by the Cental Collection System, which generated detections upon processing attacks. Later X41 showed the resulting detections and what was happening during the scan. On one hand, the embedded use of Snitch template inside APeT was demonstrated by replaying a variation of an attack detected on SHoP’s side. On the other hand, LHIND showed the results that APeT delivers after the scan was over. It consisted of many different information related to the scanned machine, such as the services running on it, potential vulnerabilities enriched with some context information such as CVEs and CVSS scores.  

The progress as well as the future plans for LHIND's offensive AI engine have been presented, namely the integration of REST API Discovery through the reconstruction of the Open API specification and the finalization of Snitch integration. Additionally, plans for researching endpoints, parameter identification and prototyping malicious requests have been mentioned for the AI offensive engine. 

On the machine learning side, a first version of the anomaly detection API has been shown. This AI model processes a given HTTP request in different parts, (I.e. URI, the headers and body) and detects if one of the analyzed parts is anomalous by assigning a particular score that exceeds a precomputed threshold. Based on the scoring, given HTTP requests are considered malicious (an anomaly) or benign. By providing an API to the AI model, the detection engine can easily be integrated by the partners of the project to complement their solutions. 

# APeT - Java Instrumentation for finding vulnerabilities 

In this second demonstrator, ITS also had the opportunity to present two of the tools that they developed during the last year, namely HyJaVu and Vulpex.  

HyJaVu is a tool that uses hybrid program traces to find Java vulnerabilities. The main motivation behind the development of this tool is that most of the static code analysis scanners are rule-based and have no real understanding of the underlying code. AI models can however, to some extent, understand the code. To this end, HyJaVu’s scope revolves around the static analysis of Java web applications with a focus on injection attacks. Their approach is to extract the so-called traces, or code paths, which represent a single execution path within a given source code and feed them to an AI model, that is then responsible for classifying the trace (or execution path) as malicious or benign. Results of their work showed that HyJaVu performs very well in comparison to other popular AI models dedicated to the static vulnerability discovery of Java Applications such as Achilles or ISVSF. Other results have shown that in comparison with other popular static scanners such as FindSecBugs, ShiftLeft Scan and Semgrep, HyJaVu had the highest true positives rate. Future works to improve HyJaVu consist of finding better and bigger datasets for training as well as improving the stability of the engine. 

The development of Vulpex, an engine for vulnerable path exploration through dynamic symbolic execution, was motivated by the fact that most fuzzers get stuck relatively fast when fuzzing a Java application. To this end, the state-of-the-art RESTler fuzzer is combined with a symbolic execution mechanism, provided by Vulpex, to instrument the Java Byte Code of target web services to find vulnerabilities. As demonstration, the Vulpex instrumentation agent was attached to the Java authentication service of the crAPI project, an intentionally vulnerable web application developed by the OWASP team. The results have shown that Vulpex also performs well in comparison to other similar tools such as ShiftLeft Scans and FindSecBugs.  

# Smart honeypot system (SHoP) detection and blocking capabilities 

X41’s work during the last year mainly revolved around the improvement of the detection capabilities of their Smart Honeypot System (SHoP), the development of an attack description language Snitch, blocking mechanism for network level attacks and finally, the development of the Attack Confirmation component, a piece of software that is responsible of confirming whether an attack attempt succeeded    

To improve their detection capabilities, X41’s team ran five popular web security scanners (SQLmap, Nikto, Wapiti, Nuclei and Arachni) against their honeypot infrastructure and then replayed the same requests against two popular web application firewalls (WAFs), namely ModSecurity [2] with OWASP Common ruleset [3] and Checkpoint WAF. This approach allowed them to compare the results of their detection engine and the two other WAFs and calculate some basic statistics such as the detection coverage, false positive and negative rates etc. The results of this study have shown that X41's detection capabilities were comparable to commercial Web Application Firewalls.  When looking at the different WAFs offered by cloud providers, it is notable that OWASP CRS is a widely adopted gold standard. SHoP technologies, although they do not include any CRS rules, are comparable and in some cases perform better [4]. 

Additionally, X41 has developed two ML models that perform Multiclass classification with regards to OWASP TOP 10 classes (SQL injection, Command injection, XSS, enumeration, path traversal, local and remote file inclusion). The first model is more conservative and the other one is more aggressive. The comparison results have shown that the detection rate of the conservative model is 75% whereas the OWASP CRS’s is 82%, with their anomaly engine turned on. Note that, without the anomaly engine turned on, the detection rate drops to 69%. Combined with Shop detection heuristics, the aggressive model has a detection rate of 99%. The conservative model (v4) works well and doesn’t generate false positive on normal traffic (<0.5%) and the aggressive model needs more fine tuning to achieve those results. X41 has tested independently the false positive rates for ML models on network traffic of popular web sites (like Netflix, Facebook, Twitter, Reddit, Amazon). 

In the commercial WAF and OWASP CRS [3], X41 has found misclassification between attack classes and cases that are problematic to detect by using only rules, this is a good indicator that although the current mechanism works well, there is still room for improvement. 

X41 also presented Snitch, an attack description language that enables to transfer detected attacks from SHoP to APeT, and reuse this attack definition in offensive scenarios. Snitch has been developed in collaboration with Das Institut für Informationssysteme (IFIS) from the University of Lubeck. Snitch is based on a subset of features offered by the Nuclei templating format [1] and is compatible with the Nuclei tool. 

In a real-world web application or network infrastructure exposed to the public internet, a lot of traffic is generated, hundred of thousands of requests can be sent within a very short time window. Having a web application firewall that monitors all this traffic will raise a lot of alerts, which ultimately complicates the life of system administrators because they find themselves submerged with a lot of information that is likely to be irrelevant. This represents the motivation for X41’s team to develop the attack confirmation component. This piece of software is responsible for confirming if a particular attack attempt was successful or not. For now, they support two attack classes: Local File Inclusion and SQL Injection.  

Additionally, a first proof of concept for blocking attacks on the network level has been presented. This PoC serves as the first building block of the work dedicated to the work package 5: Patch Generation and Blocking of Attacks. For blocking attacks X41 has used a known and battle tested solution with a Nginx reverse proxy including the ModSecurity plugin. X41 has shown how to write modsecurity rules and how one can customize the way a request can go through, be redirected or blocked in a network. The concept showed how to efficiently block attacks based on current SHoP detections, and how to automatically generate new WAF rules or virtual patches for unpatched vulnerabilities.  

# Software vulnerability prediction using function and variable analysis 

University of Lübeck’s Institut für Informationssysteme (IFIS) presented their source code analysis for detecting vulnerabilities on the source code level. Their source code analysis solution uses graph theory and tainting between functions and variables to detect vulnerabilities. IFIS presented how they used deep learning methods to efficiently classify these traces and how they can reduce the whole analysis space more efficiently than comparable solutions. Currently the system works on programming languages C/C++/Java but will be adopted to analyze modern web development programming languages in the future.  

In the demonstration, IFIS presents several new techniques: a new type of edge called name dependence, a type of abstract syntax graph based on the name dependence, and an efficient node representation method named 3-property encoding scheme. These techniques not only allow us to represent the semantics of software code without using its variable names, but also allow us to encode all nodes in a consistent way. These characteristics will help deep learning models capture the commons and differences between nodes and learn the intrinsic functionality of code more easily.  

To evaluate the new techniques, IFIS develops two deep learning models and baselines based on the existing graph structures and node encoding scheme, and all the models are built on the gated graph neural network and convolution neural network. These models are trained and evaluated on several real-world datasets from widely used open-source projects and libraries (Chromium, Debian, FFmpeg, and Qemu). The results of the evaluation show that the models based on the IFIS's techniques outperform the ones based on existing approaches.  

Besides leading to better prediction performance, the techniques from IFIS have two further advantages. One of them is that they naturally lead to the mitigation of the problem of vocabulary explosion. The other is that they have very low memory needs. Given a certain dimension of embeddings, the memory requirement of the 3-property encoding is linearly proportional to the number of nodes. For example, the IFIS's techniques can process graphs with 7 million nodes with 8 GB of main memory given 100-dimension embeddings. The memory footprint of the code-based encoding is N/3 times the memory need of the 3-property encoding, where N is the maximal number of tokens in a code graph and this N could sometimes be very large. Specific to the datasets used in the evaluation, to be able to process them, the existing code-based encoding scheme needs up to 468 GB of main memory, whereas the IFIS's techniques consume only 14.5 MB of main memory. The difference in memory requirements is on the order of 32,000. 


# Future steps  

In the next phase of the Pet-HMR project, partners will focus on work package 5 whose purpose is to generate patches and blocking mechanisms to stop attacks. On one hand, X41 will focus on the network blocking part, while ITS who has already worked on source code analysis will focus on patching on the source code level. On the other hand, ITS, IFIS and LHIND will continue improving their systems – LHIND will continue the development of their AI offensive engine – as well as designing and performing new tests to benchmark their abilities.  

As has been shown during these two days, ML and AI methods have a lot potential when it comes to detecting new attacks and beating state of the art technologies, the goal is to keep improving these models but also to keep an eye and test new large language models possibilities. Future plans consist of mutually using these ML models, such as the anomaly detection model from LHIND and ML model from X41 to improve their counterparts and integrate them in the whole PeT-HMR workflow. These advances represent a great step forward when it comes to early detection and virtually patching new vulnerabilities of previously unseen attack patterns. 

As the demonstrator was held in X41's headquarters, you can find a few pictures from the presentations.
 {% include image-gallery.html folder="/assets/images/demo2" %}

 <!---
 ![image1](/assets/images/demo2/demo2-scr1.jpeg){:height="50%" width="50%"}
 ![image2](/assets/images/demo2/demo2-scr2.jpeg){:height="50%" width="50%"}
 --->


# References 

- [https://github.com/projectdiscovery/nuclei-templates/](https://github.com/projectdiscovery/nuclei-templates/)

- [https://www.modsecurity.org/](https://www.modsecurity.org/)

- [https://owasp.org/www-project-modsecurity-core-rule-set/](https://owasp.org/www-project-modsecurity-core-rule-set/)

- [https://blog.fraktal.fi/cloud-waf-comparison-using-real-world-attacks-acb21d37805e](https://blog.fraktal.fi/cloud-waf-comparison-using-real-world-attacks-acb21d37805e)

