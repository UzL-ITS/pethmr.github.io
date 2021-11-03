---
layout: post
title: About
nav-menu: true
---

## Problem

The digital transformation is increasing the dependence of complex computer
systems. Result of that interconnectedness is that systems are constantly
exposed to possible attacks which probably cause large scale damages. To avoid
this regular security testing, along with secure design paradigms and
functional testing, is essential – but still not sufficient. In addition,
offensive testing methods like penetration testing help to find the last holes
in your defense.

Penetration testing is a very effective and widely used method for evaluating
system security. Here, a team of security experts evaluates a system and tries
to find vulnerabilities that can be used to compromise the system. Doing this
the penetration tester acts as an attacker, using same tools and mindset.

The biggest challenge of penetration testing is its high cost, as the work must
be performed by highly experienced security professionals, while also being
very time and manpower intensive. With the increasing proliferation of systems
requiring protection and at the same time increasing system complexity, there
is a growing discrepancy between the rapidly growing need for penetration
testers and the limited number of experienced experts.


## Research

Qualitative penetration testing requires deep expert knowledge and creativity.
Since expert time is expensive, simple automation techniques such as scripting
and the use of vulnerability databases such as CVE are already being used
today. The use of techniques developed in AI is already actively promoted by
some companies , but scientifically deeply analyzed or in practice successful
these approaches in the field of penetration testing are not yet. Exceptions
are simulated penetration testing and initial AI approaches such as Stackelberg
Planning with direct penetration testing applications. This project goes far
beyond these approaches.

Honeypot systems are used to detect and analyze attacks after the fact. Simple
machine learning methods have already been used to improve attack
classification or prevent honeypot detection by the attacker. Modern AI
techniques as well as the interactive (incremental) approach, in which the
honeypot trains with an automated pentest, have not yet been investigated.


## Plan

The aim of this project is to automate the penetration test process by using
artificial intelligence to such an extent that widespread and cost-effective
use is possible even with advancing digitization. The developed system should
improve itself and automatically integrate new vulnerabilities into the tests.
By using context-based analysis techniques, the system can be effectively
trained without the need for large training datasets. Once the automated
penetration tester has been trained, it can be largely automated and deployed
without the need for personnel, enabling the continuous usage of penetration
testing that constantly improves and keeps the security of the systems under
examination up to date.

The aim of this project is to automate penetration testing processes through
the use of artificial intelligence to such an extent that widespread and
cost-effective use is possible even with advancing digitization. The developed
system should improve itself and automatically integrate new vulnerabilities
into the tests. By using context-based analysis techniques, the system can be
effectively trained without the need for huge training datasets. Once the
automated penetration tester has been learned, it can be used in a largely
automated manner without the need for personnel, thus enabling the continuous
use of penetration tests, which consistently improves the security of systems
under investigation and keeps it up to date.

The goals of the PeT-HMR project are the following:

- An automated and self-learning penetration testing system shall allow the
  continuous execution of penetration tests (pentests) with little supervision
  by experts.
- New operations for attacks shall be detected by a honeypot and directly fed
  into the penetration testing system as soon as they are observed.
- The system shall be able to test patches and generate penetration prevention
  plans.

The system developed in PeT-HMR achieves these goals by combining a Smart
Honeypot (SHoP) with an Automated Penetration Tester (APeT).

The APeT first analyzes the target system, thereby identifying the topology of
the customer environment under investigation. Vulnerability analysis follows to
identify vulnerabilities in services and setup. APeT uses AI reasoning
techniques to evaluate the results of the initial penetration tests to identify
false positives and initiate further testing or select reasonable advanced
attack techniques to improve results. The penetration test is completed by the
automated generation of reports on the vulnerabilities found.

The system is developed by experienced penetration testers and AI experts.
Thus, the system benefits from expert knowledge, data collected in the Honeypot
(SHoP) and attack definitions from external databases such as CVE, CWE and
OWASP to develop and execute effective attack strategies. Continuous learning
of new attack patterns and sequences and automated execution of attacks makes
APeT applicable in areas where there is little or no pentesting personnel. The
accumulated knowledge to meet single targets can be applied across
environments, so even customers/networks with only a small footprint can still
benefit from the full experience of the automated pentest solution. Through
automation, APeT enables continuous security testing and assessment, not just
snapshots a few times a year as is often the case in traditional pentest
environments.

As a second component of the overall system, a smart honeypot system SHoP is
being developed to observe and learn the behavior of new malware. The honeypot
is adapted to the infrastructure of the system to be protected. In the SHoP,
attacks can be observed and thus information about new attacks can be collected
as well as conclusions about remaining system vulnerabilities can be detected.

Another added value arises from the interaction between APeT and SHoP. Through
continuous interaction, the systems can train each other and thus significantly
improve the performance of the overall system. For example, new attack vectors
discovered in the SHoP can be automatically adopted in the APeT. In addition,
the APeT can analyze the vulnerabilities found and further improve them in
interaction with the SHoP and analyze their applicability to other systems.
Furthermore, the honeypot will be extended in such a way that the behavior of
the honeypot can be dynamically changed to prevent attacks, allowing patches or
fixes to be developed for real systems, the effectiveness of which will be
tested in interaction with the APeT.

## Further information

Please refer to the [Work Packages page](workpackages.html) for a description
of the six work packages (WPs) that are defined for the project.

