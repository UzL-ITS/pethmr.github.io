---
layout: post
title: Work Packages
nav-menu: true
---

PeT-HMR is divided in six work packages (WPs).

- [Work package 1: Investigation and choice of AI methods](#wp1)
- [Work package 2: Smart Honeypot and data collection](#wp2)
- [Work package 3: Automation of penetration tests](#wp3)
- [Work package 4: Integration of APeT and SHoP](#wp4)
- [Work package 5: Patch generation](#wp5)
- [Work package 6: Evaluation and demonstrator](#wp6)


<a name=wp1></a>
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

<a name=wp2></a>
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


<a name=wp3></a>
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


<a name=wp4></a>
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
penetration testing and honeypot; effectiveness analysis.

<a name=wp5></a>
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


<a name=wp6></a>
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

