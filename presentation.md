---
author: Slava & Brandon
title: Chapters 13 & 14 Managing Identity, Authentication and Authorization
---
# Chapters 13 & 14
## Access Management

[](This is how we do comments, later to be reformatted as presentation notes)

---
## Assets

- information
- systems
- devices
- facilities
- personnel

[](Chapter about controlling access to assets, e.g. above.)

[](Information: organization's data)
[](Systems: org's IT systems that provide services)
[](Devices: any computing system)
[]( - BYOD: not org's, but data is)
[](Facilities: org's physical locations)
[](Personnel: people working for org)

---
## Access control
[](# Access is the transfer of information from an object to a subject, which makes it important to understand the definition of both subject and object.)

## Subjects vs Objects

[](Subject: active entity to access an object)
[](Object: passive entity that provides information to subject)
[](Explain how both roles interchange often)

[](# You can often simplify the access control topics by substituting the word user for subject and the word file for object. For example, instead of a subject accesses an object, you can think of it as a user accesses a file. However, it’s also important to remember that subjects include more than users and objects include more than just files.)
[](Draw a diagram next to above: user -> file, explain that it's not always the case but makes it easier)

---
## Access control types

[](# Access control includes the following overall steps: Identify and authenticate users or other subjects attempting to access resources. Determine whether the access is authorized. Grant or restrict access based on the subject’s identity. Monitor and record access attempts.)
[](# The three primary control types are preventive, detective, and corrective.)

- Preventive
    - Deterrent
    - Directive
- Detective
- Corrective
    - Recovery
- Compensation

[](Prevent unwanted activity from occuring: don't allow and deter/discourage)
[](Fences, presence of cameras)
[](Directive: attempt to encourage compliance: security policy requirements, monitoring)

[](Detect activity: audit trails, cameras, IDS)

[](Modify environment to return to normal, fix resulting problems: antivirus, backups)
[](Recovery is more extensive than Corrective)

[](Compensate for some inability or ineffectiveness of primary controls: temporary hardware tokens while smart cards are getting ready)

---
## Access control implementations

- Administrative
- Logical/Technical
- Physical

[](admin: Policies, procedures, background checks)
[](logical/tech: hardware/software mechanisms: passwords, biometric scanners, IDS/IPS)
[](physical: ones you can touch: guards, fences, swipe cards, alarms)

[](Ex: Physical Servers in our IDF)

---
## IT Loss Types

[](# There are three categories of IT loss: loss of confidentiality, loss of availability, and loss of integrity.)

- Confidentiality
- Integrity
- Availability

[](CIA Triad:)
[](Confidentiality: unauthorized access means loss of it)
[](Integrity: unauthorized changes cause loss of integrity in data)
[](Availability: systems are expected to be available)

---
## Identity

[](# A core principle with authentication is that all subjects must have unique identities.)

- Unique

---
## Authentication

[](# Identification and authentication always occur together as a single two-step process. Providing an identity is the first step, and providing the authentication information is the second step.)

- Verifies identity

[](Identification & Authentication is a single two-step process)
[](Systems maintain secrecy of authentication data)

---
## Authorization

[](# An effective access control system requires strong identification and authentication mechanisms, in addition to authorization and accountability elements. Subjects have unique identities and prove their identity with authentication. Administrators grant access to subjects based on their identities providing authorization. Logging user actions based on their proven identities provides accountability.)
[](# Identification and authentication are “all-or-nothing” aspects of access control. Either a user’s credentials prove a professed identity, or they don’t. In contrast, authorization occupies a wide range of variations.)

- Grants access to a proven identity

---
## Accountability
[](# Accountability relies on effective identification and authentication, but it does not require effective authorization.)

- Logging
- Audit trail

[](Must log activity to be able to hold identities liable)
[](Must have identification and authentication but not authorization)
[](Logs create audit trails that can be followed by researchers and investigators)

---
## Authentication factor types
[](# The three basic methods of authentication are also known as types or factors.)

1. Something you know
2. Something you have
3. Something you are/do
4. Somewhere you are

[](Types 1, 2, 3. 1 - weakest, 3 - strongest)
[](1. password/PIN)
[](2. smartcard/USB drive)
[](3. biometrics: fingerprints, keystroke dynamics, behavioural biometrics)
[](4. sometimes used as well: phone number, ip addres, geolocation)

[](# Hardware tokens use dynamic one-time passwords, making them more secure than static passwords. The two types of tokens are synchronous dynamic password tokens and asynchronous dynamic password tokens.)

[](- Static)
[](- Randomly generated?)
[](- Shared between sites?)
[](- Should be stored as hash)

[](Policies)
[](- Maximum age)
[](- History)
[](    - Minimum age)
[](- Complexity)
[](- Length)
[](- Password phrases/passphrases)
[](    - `IP@55edTheC11S$PEx4m`)
[](- Cognitive password)

[](Static for the duration of expiry period, 30, 60, 90 days)
[](Can be randomly generated by the user, which is a better idea)
[](May be shared between websites and applications by the user, which is worse )
[](Attacked by observation, sniffing, stealing)
[](Generally stored as a hash, not plaintext)
[]( - Hash: one-way function to turn a string into the same seemingly-random string each time)
[]( - Each time you authenticate, server computes the has and compares it to the currently stored one)
[](Frequent changes are more secure)
[](Don't allow reusing old passwords)
[](Minimum age for disallowing cycling through passwords to avoid history requirements)
[](Cognitive passwords: Q&A: birthdate, mother's maiden name, etc)

---
## Type 2

- Hardware tokens
    - Synchronous
    - Asynchronous

[](Smartcards: Include a microprocessor)
[]( May require a PIN)
[]( Provide encryption keys)
[](Tokens: show dynamic 6-8 digit password)
[]( Often combined with username & password)
[]( Synchronous - time-based)
[]( Asynchronous - based on an algorithm and counter, may require a PIN)

---
## Biometrics
[](# Biometric characteristics are often defined as either physiological or behavioral.)
[](# the least acceptable biometric scanning method because retina scans can reveal medical conditions, such as high blood pressure and pregnancy.)

[](# Because most people are basically similar, biometric methods often result in false negative and false positive authentications. Biometric devices are rated for performance by examining the different types of errors they produce.)
[](# The ratio of Type 1 errors to valid authentications is known as the false rejection rate FRR.)
[](# The ratio of Type 2 errors to valid authentications is called the false acceptance rate FAR.)
[](# You can compare the overall quality of biometric devices with the crossover error rate CER, also known as the equal error rate ERR.)
[](# It’s not necessary, and often not desirable, to operate a device with the sensitivity set at the CER level.)

- As identifying/authenticating/both
- Physiological/behavioural
- Error Ratings
- Enrollment/registration
    - Reference profile
- Throughput rate
- Acceptance

[](Biometric factors may be used for identification, authentication or both)
[]( identification: one-to-many match, physical access controls, diagram)
[]( authentication: one-to-one match, logical access controls, diagram)

[](Physiological: fingerprints, retina scans, iris scans, voice patterns)
[]( Retina scans least acceptable, can reveal medical conditions)
[](Behavioural: keystroke, signature dynamics)
[](Speech vs voice recognition: one extracts communications from sound, other analyzes voice & tones)

[](diagram)
[](1. FRR: false negative)
[](2. FAR: false positive)
[](3. CER: Point where FAR and FRR cross)
[](CER generally not desirable )

[](# In general, enrollment times over 2 minutes are unacceptable. If you use a biometric characteristic that changes over time, such as a person’s voice tones, facial hair, or signature pattern, reenrollment must occur at regular intervals, adding inconvenience.)
[](# Subjects typically accept a throughput rate of about 6 seconds or faster.)

[](Enrollment for sampling the subject, acquire a reference profile. In general, over two minutes is unacceptable)
[](Throughput rate: amount of time to scan and approve/deny. 6s or faster)
[](Acceptance: whether users accept the inconvenience of the method)

---
## Multifactor Authentication
[](# Multifactor authentication must use multiple types or factors, such as the something-you-know factor and the something-you-have factor. In contrast, requiring users to enter a password and a PIN is not multifactor authentication because both methods are from a single authentication factor - something you know.)

- Using two or more factors
- Must use different factors for benefit

[](If using same factors, strength is no greater)

---
## Device Authentication
[](# These devices aren’t necessarily able to join a domain, but it is possible to implement device identification and authentication methods for these devices.)
[](# Organizations typically use third-party tools, such as the SecureAuth Identity Provider - IdP - for device authentication.)

- Device fingerprinting
    - IdP - SecureAuth Identity Provider for device authentication

[](Allow BYOD devices, but not on the domain)
[](Device fingerprinting: associate with user accounts, capture characteristics: operating system, version, web browser, etc)

---
## Identity Management
[](# Identity management techniques generally fall into one of two categories: centralized and decentralized/distributed. Centralized access)

- Centralized
- Decentralized/distributed

[](Centralized: all authorization performed by a single entity)
[](Decentralized: various entities perform authorization verification)
[](Book basically says Centralized is better due to less administrative overhead in managing systems)

---
## Single Sign On (SSO)

- Centralized
- Increases security

[](Allows user to authenticate once to access many resources)
[](Increases security as users have to remember less passwords, want to write them down)

---
## Lightweight Directory Access Protocol: LDAP

- An SSO mechanism
- Uses Domains and Trusts

[](You can think of LDAP as a phone book for network services and assets. Authentication should be required)
[](Has multiple domains - collections of subjects and objects - with trusts established between them)

---
## Ticket authentication

[](# Kerberos 5, relies on symmetric-key cryptography - also known as secret-key cryptography - using the Advanced Encryption Standard - AES - symmetric encryption protocol.)

- Kerberos
    - Key Distribution Center
    - Kerberos Authentication Server
    - Ticket granting ticket
    - Ticket/Service ticket
- SESAME, KryptoKnight, NetSP
- OAuth, OpenID

[](SSO Mechanism that uses a third-party entity to provide authentication)
[](KRB is most common and well known)
[](uses AES for encrypting its traffic)
[](KDC: all clients and servers are registered here, maintains secret keys for all members)
[](Auth server: hosts TGS - ticket-granting service)
[](TGT: proof of authentication with KDC; having this shows authorization to request tickets. Encrypted, includes a symmetric key, exp time, user's IP)
[](Ticket: encrypted message used as authorization proof for an object)
[](Ensures against credentials, session keys, auth messages transmitting over clear text)
[](KDC is a single point of failure)
[](Time sync is required)

[](SESAME, KryptoKnight: ticket authentication, no longer widely used)

[](OAuth, OpenID: SSO used on the internet between many services/organizations)

---
## Federated Identity Management

[](# Security Assertion Markup Language   Security Assertion Markup Language SAML is an XML-based language that is commonly used to exchange authentication and authorization information between federated organizations.)

- SAML
- XACML

[](SAML: Security Assertion Markup Language)
[](SAML used for exchanging AA information)

[](XACML: Extensible Access Control Markup Language)
[](XACML: define access control policies in XML format)

[](Used when multiple organizations want to join in a federation and share their credentials)
[](Other MLs: HTML, XML, YAML)

---
## Credential Storage Systems

- KeePass
- Windows Credential Manager

[](Tools that store authentication information locally in an encrypted format)

---
## Session management

[](# When using any type of authentication system, it’s important to manage sessions to prevent unauthorized access.)

- Screen savers
- Online session timeouts

---
## AAA Protocols

[](# Several protocols provide authentication, authorization, and accounting and are referred to as AAA protocols.)
[](# Some common AAA protocols are RADIUS, TACACS+, and Diameter.)

- RADIUS
- TACACS+
- Diameter

[](AAA: Authentication, Authorization, Accountability)
[](RADIUS: Remote authentication dial-in user service. Password encrypted, not other data)
[](Terminal Access Controller Acces-control System: unlike radius, separates auth, auth and accounting into separate processes, potentially on separate servers. All is encrypted)

---
## Identity and Access Provisioning Life Cycle

[](# three main responsibilities of the identity and access provisioning life cycle: provisioning, account review, and account revocation.)
[](# Creating new user accounts is usually a simple process, but the process must be protected and secured via organizational security policy procedures.`)
[](# Accounts should be reviewed periodically to ensure that security policies are being enforced. This includes ensuring that inactive accounts are disabled and employees do not have excessive privileges.)
[](# When employees leave an organization for any reason, it is important to disable their user accounts as soon as possible. This includes when an employee takes a leave of absence.)
[](# Accounts are often deleted within 30 days after an account is disabled)

- Provisioning
- Review
- Revocation

[](Provisioning: creation of account)
[]( - proper identity checks, hr, etc)
[](Account review: periodic mangement, privilege checks)
[](Revocation: deletion. Employee leave -> disable -> 30 days -> deletion)

---
## Access control issues

[](# It’s important to guard against two problems related to access control: excessive privilege and creeping privileges.)

- Excessive privilege
- Creeping privileges

[](Excessive: more privileges than the assigned work dictates)
[](Creeping: account accumulated privileges over time as job roles changed/added)

---
## Authorization Mechanisms

- Implicit Deny
- Access Control Matrix
- Compatibility Tables
- Constrained Interface
- Context-Dependent Control
- Least Privilege
- Separation of Duties/Responsibilities

---
## Discretionary Access Controls
- Defined by data custodian

[](Ex: Creating a new Excel spreadsheet)
[](Next slide discusses Non-discretionary Access Controls)

---
## Non-discretionary Access Controls

- Role-based Access Control
- Rule-based Access Control
- Mandatory Access Controls

[](1. RBAC - Discuss roles in our environment and how we use that to assign permissions)
[](2. Rule-BAC Ex: Firewalls)
[](3. MAC)

[](Ex: Users and objects have labels. Military classification of data that allows access based on clearance level)

---
## Risk Elements

- Identify assets
    - Asset Valuation
- Identify threats
    - Threat modeling
- Identify vulnerabilities
    - Vulnerability Analysis

[](A. identify actual value of assets with goal of prioritizing them.)
[](Determines cost-effectiveness of different security controls)
[](B. Threats modeling. Asset focus uses valuation results to identify threats to those assets.)
[](Focused on attackers considers attackers' goals to identify threats. ex: political standpoints)
[](Focused on software considers threats against it's software which presents more threats, especially the more traffic it gets.)
[](C. Vulnerability analysis identifies strengths and weaknesses of diff access control methods and potential of a threat)

---
## Access Control Attacks

- Password Attacks
- Spoofing Attacks
- Social Engineering Attacks
- Smartcard Attacks
    - Side-channel attack
- Denial-of-Service Attacks (DoS)

[](Password:)
[](Dictionary Attacks)
[](Brute-Force Attacks)
[](Rainbow Table Attacks)
[](Sniffer Attacks)

[](Social eng:)
[](Phishing)
[](Spear Phishing)
[](Whaling)


[](A. Mention top 10 passwords used from published account information stolen from a Sony attack)
[](  1. Dictionary - crack password by using every possible password or character combinations from a database of common passwords)
[](  2. Brute-force - crack password by trying all possible combinations of letters, numbers, and symbols. Hybrid attacks)
[](  3. Rainbow table - uses pre-computed hashes to compare every hash in a password database file - would have to steal that.)
[](  4. Sniffer - software that captures packets sent over network. Encrypt data over the network)

[](B. Email spoofing. Phone number spoofing)

[](C. Social engineering can happen in person, over the phone, or over the internet)
[](  1. trick into giving up sensitive info)
[](  2. targets specific users, like employees)
[](  3. specifically targets senior or high-level execs)

[](D. observes operation of device and can learn info contained on card, like encryption key)

[](E. Sends so much traffic to servers it prevents legitimate traffic or processing of requests)
