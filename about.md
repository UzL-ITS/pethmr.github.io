---
layout: post
title: About
nav-menu: true
---

## Motivation

In the process of the digital transformation, computer networks are increasingly evolving into more and more complex systems. Despite all the benefits of this interconnected world, it also results in a vast amount of systems which are constantly exposed to potential attacks which in turn can cause large scale damages. To avoid
this, regular security testing, along with secure design paradigms and
functional testing, is essential – but still not sufficient. In addition,
offensive testing methods like penetration testing help to find the latest holes
in your defense mechanisms.

Penetration testing is a very effective and widely used method for evaluating
system security. Here, a team of security experts evaluates a system and tries
to find vulnerabilities that can be used to compromise the system. Doing this
the penetration tester acts as an attacker, using the same tools and mindset.

The biggest challenge of penetration testing is its high cost, as the work must
be performed by highly experienced security professionals, while also being
very time and manpower intensive. With the increasing proliferation of systems
requiring protection and at the same time increasing system complexity, there
is a growing discrepancy between the rapidly growing need for penetration
testers and the limited number of experienced experts.


## Scientific and Technological Goals

Qualitative penetration testing requires deep expert knowledge and creativity.
Since expert time is expensive, simple automation techniques such as scripting
and the use of vulnerability databases such as CVE are already being used
today. The use of techniques developed in AI is already actively promoted by
some companies, but neither are these methods scientifically analyzed nor is it 
clear how well current approaches work in practice. Exceptions
are simulated penetration testing and initial AI approaches such as Stackelberg
Planning with direct penetration testing applications. This project goes far
beyond these approaches.

Honeypot systems are used to lure attackers on the wrong track and analyze 
these attacks with the goal to deploy defences. Machine Learning methods 
have already been used to improve attack classification or prevent attack
detection in context of malicious programs and detection mechanism evasion. 
Modern AI techniques as well as the interactive (incremental) approach, in which
the honeypot trains with an automated pentest, have not yet been investigated.


## Plan

The main goal of this project is to automate the penetration test process by using
artificial intelligence to such an extent that widespread and cost-effective
testing is possible even with advancing digitization. The developed system should
improve itself and automatically integrate new vulnerabilities into the tests.
By using context-based analysis techniques, the system can be effectively
trained without the need for huge training datasets. Once the automated
penetration tester has been trained, it can be largely automated and deployed
without the need for personnel, thus enabling the continuous use of testing
that constantly improves and keeps the security of the systems under
examination up to date.

In summary, the goals of the PeT-HMR project are the following:

- An automated and self-learning penetration testing system shall allow the
  continuous execution of penetration tests (pentests) with little supervision
  by experts.
- New types of attacks shall be learned by the honeypot. The attacks will be fed
  into the penetration testing system. Additionally, the honeypot and the attacker system shall train each other incrementally and feedback-driven.
- The system shall be able to generate and test patches and as well as penetration prevention plans.

The system developed in PeT-HMR achieves these goals by combining a Smart
Honeypot (SHoP) with an Automated Penetration Tester (APeT).

The APeT first analyzes the target system, thereby identifying the topology of
the customer environment under investigation. Vulnerability analysis follows to
identify vulnerabilities in services and setup. APeT uses AI reasoning
techniques to detect successful attack probes and improve penetration testing results. 
The penetration test is completed by the automated generation of reports on the vulnerabilities found.

The system is developed by experienced penetration testers and AI experts.
Thus, the system benefits from expert knowledge, data collected in the Honeypot
(SHoP) and attack definitions from external databases such as CVE, CWE and
OWASP guidelines to develop and execute effective attack strategies. Continuous learning of new attack patterns and sequences and automated execution of attacks makes
APeT applicable in areas where there is little or no pentesting personnel. The
accumulated knowledge can be applied across environments, so even customers/networks with only a small footprint can still benefit from the full knowledge of the automated pentest solution. Through automation, APeT enables continuous security testing and assessment, not just snapshots a few times a year as it is often the case in traditional pentesting.

As a second component of the overall system, a smart honeypot system SHoP is
being developed to observe and learn the behavior of new attacks. The honeypot
is adapted to the infrastructure of the system to be protected. In the SHoP,
attacks can be observed and thus information about new attacks can be collected
as well as conclusions about remaining system vulnerabilities can be detected.

Another added value arises from the interaction between APeT and SHoP. Through
continuous interaction, the systems can train each other and thus significantly
improve the performance of the overall system. For example, new attack vectors
discovered in the SHoP can be automatically adopted in the APeT. In addition,
the APeT can analyze the vulnerabilities found and further improve them in
interaction with the SHoP and analyze their applicability to other systems.
Furthermore, the honeypot will be extended in such a way that the collected data 
about the users' behavior will enable the detection of new attacks and producing patches or fixes for real systems. The effectiveness of which will be tested in 
interaction with the APeT.
