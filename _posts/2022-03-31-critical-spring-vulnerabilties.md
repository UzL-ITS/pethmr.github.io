---
layout: post
title: Critical vulnerabilities for Spring and Spring Cloud function (aka Springshell) found on Pet-HMR honeypots
author: pethmr
date: 2022-03-31
tags: news
---


During the period from March 29th to 31st multiple vulnerabilities related to Spring,
a popular Java MVC framework that supports inversion of control and fast building of applications emerged.

The vulnerabilities that were found caused a lot of turmoil in the information
security community due to a similar bug in the Java library Log4J (CVE-2021-44228). 
CVE-2021-44228 was found in December 2021 and has affected a lot of critical systems. 
The new vulnerabilities are serious and high impact due to their capabilities, 
ease of use and usage of the Spring framework in bigger enterprises. 

The vulnerabilities in question are the following:
1. CVE-2022-22965 Spring4Shell
2. CVE-2022-22963 Spring Cloud Function
3. Unconfirmed RCE via deserialization (Spring Core <=5.3.17)

On 28th March 2022 around 22:46GMT on Pet-HMR honeypots we have caught requests 
that tried to enumerate Spring Cloud Function vulnerability. 
The scans had been performed from SELECTEL from Russia. 
The attacker tried to enumerate multiple popular vulnerabilities from the 
previous years (CVE-2021-42013, CVE-2021-41773, CVE-2018-1000861, CVE-2021-3129, 
CVE-2021-44832, CVE-2021-2109 and more), besides the above-mentioned Spring
Cloud Function vulnerability.


More details on [X41 blogpost](https://x41-dsec.de/pethmr/springshell/)
