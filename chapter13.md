---
author: Slava & Brandon
title: Chapter 13 Managing Identity and Authentication
---
# Chapter 13
## Managing Identity and Authentication

[//]: # (This is how we do comments, later to be reformatted as presentation notes)
---
# Assets

- information
- systems
- devices
- facilities
- personnel

[//]: # (Chapter about controlling access to assets, e.g. above. Draw diagram on board to expand on later?)

[//]: # (Information: organization's data)
[//]: # (Systems: org's IT systems that provide services)
[//]: # (Devices: any computing system)
[//]: # ( - BYOD: not org's, but data is)
[//]: # (Facilities: org's physical locations)
[//]: # (Personnel: people working for org)
---
# Access control

## Subjects vs Objects

[//]: # (# Access is the transfer of information from an object to a subject, which makes it important to understand the definition of both subject and object.)
[//]: # (Draw a diagram next to above: subject -> object, subject above access)

[//]: # (Subject: active entity to access an object)
[//]: # (Object: passive entity that provides information to subject)
[//]: # (Explain how both roles interchange often)

[//]: # (# You can often simplify the access control topics by substituting the word user for subject and the word file for object. For example, instead of a subject accesses an object, you can think of it as a user accesses a file. However, it’s also important to remember that subjects include more than users and objects include more than just files.)
[//]: # (Draw a diagram next to above: user -> file, explain that it's not always the case but makes it easier)
---
## Access control types

[//]: # (# Access control includes the following overall steps: Identify and authenticate users or other subjects attempting to access resources. Determine whether the access is authorized. Grant or restrict access based on the subject’s identity. Monitor and record access attempts.)
[//]: # (# The three primary control types are preventive, detective, and corrective.)

- Preventive
    - Deterrent
    - Directive

[//]: # (Prevent unwanted activity from occuring: don't allow and deter/discourage)
[//]: # (Fences, presence of cameras)
[//]: # (Directive: attempt to encourage compliance: security policy requirements, monitoring)
- Detective

[//]: # (Detect activity: audit trails, cameras, IDS)
- Corrective
    - Recovery

[//]: # (Modify environment to return to normal, fix resulting problems: antivirus, backups)
[//]: # (Recovery is more extensive than Corrective)

- Compensation
[//]: # (Compensate for some inability or ineffectiveness of primary controls: temporary hardware tokens while smart cards are getting ready)

---
## Access control implementations

- Administrative
- Logical/Technical
- Physical

[//]: # (admin: Policies, procedures, background checks)
[//]: # (logical/tech: hardware/software mechanisms: passwords, biometric scanners, IDS/IPS)
[//]: # (physical: ones you can touch: guards, fences, swipe cards, alarms)
---
## IT Loss Types & CIA Triad

[//]: # (# There are three categories of IT loss: loss of confidentiality, loss of availability, and loss of integrity.)

- Confidentiality
- Integrity
- Availability

[//]: # (Confidentiality: unauthorized access means loss of it)
[//]: # (Integrity: unauthorized changes cause loss of integrity in data)
[//]: # (Availability: systems are expected to be available)
---
## Identity

- Subject identity must be unique

[//]: # (# A core principle with authentication is that all subjects must have unique identities.)
---
## Authentication

- Authentication verifies identity
[//]: # (# Identification and authentication always occur together as a single two-step process. Providing an identity is the first step, and providing the authentication information is the second step.)

[//]: # (Identification & Authentication is a single two-step process)
[//]: # (Systems maintain secrecy of authentication data)

---
## Authorization

- Grants access to a proven identity
[//]: # (# An effective access control system requires strong identification and authentication mechanisms, in addition to authorization and accountability elements. Subjects have unique identities and prove their identity with authentication. Administrators grant access to subjects based on their identities providing authorization. Logging user actions based on their proven identities provides accountability.)
[//]: # (# Identification and authentication are “all-or-nothing” aspects of access control. Either a user’s credentials prove a professed identity, or they don’t. In contrast, authorization occupies a wide range of variations.)

---
## Accountability
[//]: # (# Accountability relies on effective identification and authentication, but it does not require effective authorization.)

- Logging of activity
- Audit trail
[//]: # (Must log activity to be able to hold identities liable)
[//]: # (Must have identification and authentication but not authorization)
[//]: # (Logs create audit trails that can be followed by researchers and investigators)

---
# Authentication factor types
[//]: # (# The three basic methods of authentication are also known as types or factors.)

1. Something you know
2. Something you have
3. Something you are/do

- Somewhere you are

[//]: # (Types 1, 2, 3. 1 - weakest, 3 - strongest)
[//]: # (1. password/PIN)
[//]: # (2. smartcard/USB drive)
[//]: # (3. biometrics: fingerprints, keystroke dynamics, behavioural biometrics)
[//]: # (4. sometimes used as well: phone number, ip addres, geolocation)

---
# Type 1 factors
## Passwords
[//]: # (# Hardware tokens use dynamic one-time passwords, making them more secure than static passwords. The two types of tokens are synchronous dynamic password tokens and asynchronous dynamic password tokens.)

- Static
- Randomly generated?
- Shared between sites?
- Should be stored as hash

[//]: # (Static for the duration of expiry period, 30, 60, 90 days)
[//]: # (Can be randomly generated by the user, which is a better idea)
[//]: # (May be shared between websites and applications by the user, which is worse )
[//]: # (Attacked by observation, sniffing, stealing)
[//]: # (Generally stored as a hash, not plaintext)
[//]: # ( - Hash: one-way function to turn a string into the same seemingly-random string each time)
[//]: # ( - Each time you authenticate, server computes the has and compares it to the currently stored one)
---
## Password policies

- Maximum age
- History
    - Minimum age
- Complexity
- Length
- Password phrases/passphrases
    - `IP@55edTheC11S$PEx4m`
- Cognitive password

[//]: # (Frequent changes are more secure)
[//]: # (Don't allow reusing old passwords)
[//]: # (Minimum age for disallowing cycling through passwords to avoid history requirements)
[//]: # (Cognitive passwords: Q&A: birthdate, mother's maiden name, etc)

---
# Type 2 factors

- Smartcards
- Hardware tokens
    - Synchronous
    - Asynchronous

[//]: # (Smartcards: Include a microprocessor)
[//]: # ( May require a PIN)
[//]: # ( Provide encryption keys)
[//]: # (Tokens: show dynamic 6-8 digit password)
[//]: # ( Often combined with username & password)
[//]: # ( Synchronous - time-based)
[//]: # ( Asynchronous - based on an algorithm and counter, may require a PIN)

---
# Type 3 factors
[//]: # (# Biometric characteristics are often defined as either physiological or behavioral.)
[//]: # (# the least acceptable biometric scanning method because retina scans can reveal medical conditions, such as high blood pressure and pregnancy.)

## Biometrics

- As identifying
- As authenticating
- As both

- Physiological
- Behavioural

[//]: # (Biometric factors may be used for identification, authentication or both)
[//]: # ( identification: one-to-many match, physical access controls, diagram)
[//]: # ( authentication: one-to-one match, logical access controls, diagram)

[//]: # (Physiological: fingerprints, retina scans, iris scans, voice patterns)
[//]: # ( Retina scans least acceptable, can reveal medical conditions)
[//]: # (Behavioural: keystroke, signature dynamics)
[//]: # (Speech vs voice recognition: one extracts communications from sound, other analyzes voice & tones)

---
## Biometric Factor Error Ratings
[//]: # (# Because most people are basically similar, biometric methods often result in false negative and false positive authentications. Biometric devices are rated for performance by examining the different types of errors they produce.)
[//]: # (# The ratio of Type 1 errors to valid authentications is known as the false rejection rate FRR.)
[//]: # (# The ratio of Type 2 errors to valid authentications is called the false acceptance rate FAR.)
[//]: # (# You can compare the overall quality of biometric devices with the crossover error rate CER, also known as the equal error rate ERR.)
[//]: # (# It’s not necessary, and often not desirable, to operate a device with the sensitivity set at the CER level.)

1. FRR: False Rejection Rate
2. FAR: False Acceptance Rate
3. CER: Crossover Error Rate/ERR: Equal Error Rate

[//]: # (1. false negative)
[//]: # (2. false positive)
[//]: # (3. Point where FAR and FRR cross)
[//]: # (diagram)
[//]: # (CER generally not desirable )

---
## Biometric registration
[//]: # (# In general, enrollment times over 2 minutes are unacceptable. If you use a biometric characteristic that changes over time, such as a person’s voice tones, facial hair, or signature pattern, reenrollment must occur at regular intervals, adding inconvenience.)
[//]: # (# Subjects typically accept a throughput rate of about 6 seconds or faster.)

- Enrollment/registration
    - Reference profile
- Throughput rate
- Acceptance

[//]: # (Enrollment for sampling the subject, acquire a reference profile. In general, over two minutes is unacceptable)
[//]: # (Throughput rate: amount of time to scan and approve/deny. 6s or faster)
[//]: # (Acceptance: whether users accept the inconvenience of the method)

---
# Multifactor Authentication
[//]: # (# Multifactor authentication must use multiple types or factors, such as the something-you-know factor and the something-you-have factor. In contrast, requiring users to enter a password and a PIN is not multifactor authentication because both methods are from a single authentication factor - something you know.)

- Using two or more factors
- Must use different factors for benefit

[//]: # (If using same factors, strength is no greater)

---
# Device Authentication
[//]: # (# These devices aren’t necessarily able to join a domain, but it is possible to implement device identification and authentication methods for these devices.)
[//]: # (# Organizations typically use third-party tools, such as the SecureAuth Identity Provider - IdP - for device authentication.)

- Allow BYOD devices, but not on the domain
- Device fingerprinting
    - IdP - SecureAuth Identity Provider for device authentication

[//]: # (Device fingerprinting: associate with user accounts, capture characteristics: operating system, version, web browser, etc)

---

[//]: # ( )
---
# Identity management techniques generally fall into one of two categories: centralized and decentralized/distributed. Centralized access

[//]: # ( )
---
# The following sections discuss several common SSO mechanisms.

[//]: # ( )
---
# A Public Key Infrastructure (PKI) uses LDAP when integrating digital certificates into transmissions.

[//]: # ( )
---
# Kerberos 5, relies on symmetric-key cryptography (also known as secret-key cryptography) using the Advanced Encryption Standard (AES) symmetric encryption protocol.

[//]: # ( )
---
# Security Assertion Markup Language   Security Assertion Markup Language (SAML) is an XML-based language that is commonly used to exchange authentication and authorization (AA) information between federated organizations.

[//]: # ( )
---
# When using any type of authentication system, it’s important to manage sessions to prevent unauthorized access.

[//]: # ( )
---
# Several protocols provide authentication, authorization, and accounting and are referred to as AAA protocols.

[//]: # ( )
---
# Some common AAA protocols are RADIUS, TACACS+, and Diameter.

[//]: # ( )
---
# three main responsibilities of the identity and access provisioning life cycle: provisioning, account review, and account revocation.

[//]: # ( )
---
# Creating new user accounts is usually a simple process, but the process must be protected and secured via organizational security policy procedures.

[//]: # ( )
---
# Accounts should be reviewed periodically to ensure that security policies are being enforced. This includes ensuring that inactive accounts are disabled and employees do not have excessive privileges.

[//]: # ( )
---
# It’s important to guard against two problems related to access control: excessive privilege and creeping privileges.

[//]: # ( )
---
# When employees leave an organization for any reason, it is important to disable their user accounts as soon as possible. This includes when an employee takes a leave of absence.

[//]: # ( )
---
# Accounts are often deleted within 30 days after an account is disabled,
[//]: # ( )
---
