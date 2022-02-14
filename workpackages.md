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

## Work package 1: Investigation and choice of AI methods

Work package 1 analyzes and defines the requirements for the Automatized
Penetration Testing System APeT and the Smart Honeypot SHoP, and derives
evaluation criteria for the developed solutions. With the requirements identified,
taking into account the rapidly changing state of the art, PeT-HMR will design
AI approaches for detection of novel attacks and will use the collected attacks
to perform security testing scenarios.
These requirements are used to identify detailed criteria for evaluating the
quality of the solutions found through experiments that simulate real-world
attack scenarios. After the problems behind APeT and SHoP have been formalized
and algorithms for solving them have been designed, they will be implemented
respectively in Work packages 2 and 3.

<a name=wp2></a>

## Work package 2: Smart Honeypot and data collection (SHoP)

This work package focuses on the design and development of a distributed honeypot
technology. The honeypots will be used to collect data with the goal of finding
out which external data streams belong to intrusions and what impact they have
on the analyzed services and systems. The developed Smart Honeypot will be able
to collect data at various layers and observation points, and identify attacks or
suspicious patterns. The collection of attack vectors mapped to their impacts is
essential for the subsequent development of automated penetration tests (WPs 3 and 4)
and the automated patch creation (WP 5).
Also, the collected data allows to reproduce attacks, identify vulnerable
components and to further analyze detected attacks.
Newly detected attacks are reported with information about the underlying
vulnerabilities which enables an detailed impact and root cause analysis
in case of novel attacks.


<a name=wp3></a>

## Work package 3: Automation of penetration testing (APeT)

Work package 3 focuses on the automated implementation of basic
penetration tests. This component of the project is of particular interest
to small and medium-sized enterprises, because it will offer a simpler and more
accessible penetration test process that tries to minimize the involvement
of penetration test experts.

The goal of this work package is to redefine the current limits of
automatization of penteration testing. This is done, among other things, with 
self-learning components that use information from the SHoP module. 
This data augments APeT mechanisms to better understand the testing environment 
and the communication protocol.
Today's tools, such as vulnerability scanners or specialized penetration testing
tools rely on penetration testing experts that have to configure them properly
depending on the specific application context, and then carefully check the
plausibility of the results. PeT-HMR will strive to bridge this gap and bring a
more automated process.

In order to give the automatic penetration test component of the APeT a
practical knowledge advantage, the initial training and also the arming of the
system with appropriate offensive means is carried out by penetration test
experts from the pentesting teams of the partners involved, in particular the
LHIND Business Unit for IT Security & Privacy Consulting and X41 D-Sec GmbH.

For the automated processing and analysis of collected information, a
corresponding data protection agreement and appropriate measures according to
DSGVO will be taken.

<a name=wp4></a>

## Work package 4: Integration of APeT and SHoP

In this work package, automated interaction capabilities of SHoP and APeT
are developed so that both systems are improved through interaction and
information exchange.

In the project context, APeT uses new attack patterns and sequences detected by
the honeypot and vulnerabilities used to improve and complement its own
attack strategies. The honeypot distinguishes attacks from benign accesses and
augments all data. Additionally, SHoP is able to recognize attack patterns and
sequences and create abstracted attack definitions. Through interaction between
APeT and SHoP, the honeypot system learns to better recognize attack patterns and
provide this information to the penetration testing component. Hence APeT can
adapt strategies to learn new attack patterns and minimize detectability of 
existing attack strategies. In the repetitive process, both systems become
more effective in terms of optimized metrics.

Newly found vulnerabilities, attack vectors, or exploits will be communicated
through the interfaces developed in WP 2 and WP 3. Likewise, patch and fix 
generation information may be shared in interaction with WP 5.


<a name=wp5></a>

## Work package 5: Patch generation

Work package 5 focuses on the development of a system component for patch and fix 
generation. Based on the results of APeT and SHoP, a classification is performed
to mitigate vulnerabilities with respect to their severity in the context of 
a system to be protected.

Patches and mitigations are technical or organizational measures to prevent 
exploitation of a vulnerability that can be generated using data from SHoP
and APeT or that can be manually selected.

To select the right mitigation strategy, the system analyzes the recorded
attacks and the results of APeT through a classification strategy. Different
approaches can be chosen here:

- Classify and Filter: analysis and classification of the mitigated traffic
  (payloads) and blocking of the triggering parts (example: blocking of
  specific byte patterns or patterns of characters).
- Root-cause analysis: automated analysis of the causal conditions underlying a
  vulnerability. For example: Tainted data is used in insecure functions.

All generated patches and fixes are checked through a verification step. Here,
the system uses existing unit and integration tests and monitors the system health
of the protected system. If the system functionality is affected by a patch and thus
the patch will be discarded. The system can iteratively apply and test
different patching strategies. The patches and mitigations generated using the
different strategies can be evaluated and optimized in terms of maintaining
system performance and functionality. The patch and fix generation module will
be supported by a supervised-learning strategy from human experts.

<a name=wp6></a>

## Work package 6: Evaluation and demonstrator

Task: In this work package, the solutions developed in the other work packages
will be tested and evaluated as a complete system. In addition to simple
functional tests and an evaluation in artificial scenarios, APeT and SHoP will
also be tested and evaluated for their applicability in commercially used
systems. Furthermore, the capabilities of the system will be implemented beyond
field studies through a demonstrator development.

In the demonstrator context we focus on automated verification of microservice
applications with REST interfaces using the HTTP(S) protocol. These already play
a larger role in the market today and will most likely expand this share in the
future. Microservice architectures with HTTP(S) interfaces are particularly
relevant for SMEs, as lean microservice architectures offer higher efficiency,
harmonize very well with cloud architectures and can be operated
cost-effectively in cloud infrastructures.

