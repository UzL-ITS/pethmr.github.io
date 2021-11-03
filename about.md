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


## Work package 1: Requirements analysis, research and selection of AI methods, evaluation criteria

The work package analyzes the requirements for the penetration testing system
APeT and the smart honeypot SHoP to be developed and derives evaluation
criteria for the developed solutions. With the requirements identified, taking
into account the rapidly changing state of the art, the AI approaches to be
used for both systems are designed, e.g., simulation of adversarial agents in
the honeypot system, detection of attacks by the agents taking into account
constraints (e.g., an attacker wants to remain undetected). First, the
requirements for APeT and SHoP that must be met in order to be effectively
deployed in a wide range of corporate IT systems are analyzed. In addition,
these requirements are used to identify detailed criteria for evaluating the
quality of the solutions found. After the problems behind APeT and SHoP have
been formalized and algorithms for solving them have been designed, procedures
will be realized as programs and software systems, respectively, in the further
work packages 2 and 3.

**WP Lead:** This work package is led by IFIS.

**Result:** Provision of modeling techniques as well as architectures and
algorithms for WP 2 and 3; metrics for evaluating the results of vulnerability
tests performed with the algorithms.

## Work package 2: Set-up of the Smart Honeypot (SHoP) and data collection

This work package focuses on the design and development of the honeypot
technology. The honeypots will be used to collect data with the goal of finding
out which external data streams belong to intrusions and what impact they have
on the analyzed services and systems. The collection of data sets that allow
correlating attack vectors with impacts is essential for the subsequent
development of automated penetration tests (WPs 3 and 4) and an automated patch
creation (WP 5), as the data allows reproducing the attacks, identifying the
vulnerable components and finding out why an attack is successful. Newly
detected attacks are reported with information about the underlying
vulnerabilities. Furthermore, an assessment can be made of what impact
(severity) an attack has and how effective (precision) it is.

Work plan: The first step is to collect traffic at various layers and
observation points, and identify which techniques and data can be effectively
used to track an attack. These techniques may include, for example: Network
traffic monitoring, sandbox-based dynamic analysis, hypervisor instrumentation,
kernel and compiler-based taint analysis, and data collection via HTTP reverse
proxy. To measure the impact of an attack, the various activities on the
honeypot are monitored and logged. These can be: File system accesses, network
activity, memory accesses, program flow and the system calls. Lastly, metrics
are developed that combine the collected data and map the impact of an attack
on a numerical value. In the technical implementation, a suitable framework and
system components will be created to enable the aforementioned actions.

**WP Lead:** This work package is led by X41 D-Sec GmbH.

**Result:** Honeypot with reporting function and interfaces for WP 4; first
functional evaluation of the honeypot.


## Work package 3: Automation of penetration testing (APeT)

Task: Work package 3 focuses on the automated implementation of basic
penetration tests. This subcomponent of the project is of particular interest
to small and medium-sized enterprises, since constantly optimizing basic
protection means significantly lower economic outlay than the usual penetration
tests today. For specific penetration test components, penetration test experts
are to be supported in the best possible way so that the manual work components
can be minimized.

A clear goal of the work package is to redefine the limits of what is possible
by machine. This is done, among other things, with self-learning components
that use information from the SHoP module. This data helps the APeT to
characterize the environment and the communication behavior of the test object
so that it understands the test context better and better. Today's tools, such
as vulnerability scanners or specialized penetration testing tools, have their
core deficit precisely at this point, because they rely on a penetration
testing expert to select them for the specific testing application, configure
them correctly in relation to the current environmental situation, and then
check the plausibility of the results.

In order to give the automatic penetration test component of the APeT a
practical knowledge advantage, the initial training and also the arming of the
system with appropriate offensive means is carried out by penetration test
experts from the pentesting teams of the partners involved, in particular the
LHIND Business Unit for IT Security & Privacy Consulting and X41 D-Sec GmbH.

For the automated processing and analysis of collected information, a
corresponding data protection agreement and appropriate measures according to
DSGVO will be taken.

**WP Lead:** This work package is led by LHIND.

**Result:** Automated AI-based pentesting platform with reporting function in
structured and natural language.


## Work package 4: Coupling of APeT and SHoP (KAS) for automated improvement

Task: In this work package, automated interaction capabilities of SHoP and APeT
are developed so that both systems are improved through interaction and
information exchange.

This approach has been successfully applied in Adversarial Learning scenarios
such as GANs to generate new results. Thus, the performance of the individual
systems is significantly improved when two neural networks can train each
other.

In the project context, the automated penetration tester uses new attack
patterns and sequences detected by the honeypot and the vulnerabilities used to
improve and complement its own attack strategies. The honeypot distinguishes
attacks from benign accesses and augments all data. Additionally, SHoP is able
to recognize attack patterns and sequences and ideally create abstracted attack
definitions. Through interaction, the honeypot system learns to better
recognize attack patterns. Through feedback, this information is provided to
the penetration testing component, which can adapt strategies to learn new
attack patterns and minimize detectability of existing attack strategies. In
the repetitive process, both systems become more effective in terms of
optimized metrics. Another metric that can be optimized in this way is the
indistinguishability of honeypot systems and real systems.

Work plan: In order to be able to connect APeT and SHoP, the interfaces
developed in WP 2 and WP 3 will be addressed and extended so that both systems
can interact and learn to improve their individual performance. To do this,
APeT must be adapted to accept new attack definitions. In addition, the systems
will also be modified to allow automated improvement of the AI platforms in
APeT and SHoP. The system will be run in various real or virtual test scenarios
and the success of the self-training will be evaluated. Possible newly found
vulnerabilities, attack vectors, or exploits will be communicated through the
interfaces developed in WP 2 and WP 3. Likewise, patch and fix generation
information may be shared in interaction with WP 5.

**WP Lead:** This work package is led by ITS.

**Result:** System that enables autonomous further development of automatic
pentration testing and honeypot; effectiveness analysis.

## Work package 5: Patch generation

Task: This work package focuses on the development of a system component for
patch and fix generation. Based on the results of APeT and SHoP, a
classification is performed to mitigate vulnerabilities with respect to their
severity in the context of a system to be protected. Here, the characteristics
of a system to be protected (network or service application) are taken as the
basis for creating a protection profile.

The system must further ensure that the functionality of the protected system
is not affected by the patches or mitigations created.

Work plan: Patches and mitigations (technical or organizational measures to
prevent exploitation of a vulnerability) can be generated using data from SHoP
and APeT or selected in the simple case.

To select the right mitigation strategy, the system analyzes the recorded
attacks and the results of APeT through a classification strategy. Different
approaches can be chosen here:

- Classify and Filter: analysis and classification of the mitigated traffic
  (payloads) and blocking of the triggering parts (example: blocking of
  shellcode or blocking of specific characters).
- Root-cause analysis: automated analysis of the causal conditions underlying a
  vulnerability. For example: Tainted data is used in insecure functions.

All generated patches and fixes are checked through a verification step. Here,
the system uses existing unit and integration tests and monitoring data that
measure the current level of functionality (system health) of the protected
system. If functionality is affected by a patch and thus the patch is
discarded, the system can iteratively apply different patching and
classification strategies. The patches and mitigations generated using the
different strategies can be evaluated and optimized in terms of maintaining
system performance and functionality. The patch and fix generation module will
be supported by a supervised-learning strategy from human experts.

**WP Lead:** This work package is led by X41 D-Sec GmbH.

**Result:** Patch generator


## Work package 6: Evaluation and integration as well as demonstrator

Task: In this work package, the solutions developed in the other work packages
will be tested and evaluated as a complete system. In addition to simple
functional tests and an evaluation in artificial scenarios, APeT and SHoP will
also be tested and evaluated for their applicability in commercially used
systems. Furthermore, the capabilities of the system will be implemented beyond
field studies through a demonstrator development.

In the context of this demonstrator we focus on automated verification of (web)
applications with REST interfaces in the HTTP(S) protocol. These already play a
larger role in the market today and will most likely expand this share in the
future. Microservice architectures with HTTP(S) interfaces are particularly
relevant for SMEs, as lean microservice architectures offer higher efficiency,
harmonize very well with cloud architectures and can be operated
cost-effectively in cloud infrastructures.  The honeypot is interpreted as part
of a real overall system in the context of the demonstrator, as realistic
attacks on duplicates of the real web application are considered unrealistic.

Work Plan: Functional tests will initially be conducted in simplified test
environments before being tested in realistic environments and corporate
networks of varying sizes and configurations. A demonstrator will be derived
from these scenarios. The goal is to build the demonstrator in stages so that
it initially contains initial functionalities and proofs-of-concept after WP
6.1 and fully tests and represents the developed technologies at the end of WP
6.3.

**WP Lead:** This work package is led by NetUSE AG.

**Result:** Evaluation results and their publication; demonstrator.

