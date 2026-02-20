# 🚦 Basic 2 – Optimized Single Traffic Light Module

## 📌 Overview

This project focuses on optimizing a single traffic light module designed for future expansion to a 4-way intersection.

The goal is to design a reusable and scalable module structure while maintaining clean RTL architecture.

---

## 🎯 Mission Objective

* Design a **single traffic light module**
* Ensure the design can be expanded into a **4-way intersection**
* Improve modularity and scalability compared to Basic Mission 1

---

## 🏗 Design Rules

* The intersection must be implemented by **instantiating four identical traffic light modules**
* The **Top module must NOT include an additional control module**
* A **single module must NOT directly control the entire intersection**
* Each module should operate independently while supporting system-level expansion

---

## 🛠 Design Concept

* Fully modular RTL structure
* FSM-based traffic signal control
* Designed for clean instantiation and scalable hierarchy
* No centralized global controller in the Top level

---

## 🎯 Purpose of This Mission

* Practice hierarchical RTL design
* Improve module reusability
* Understand scalable hardware architecture
* Prepare for full 4-way intersection implementation

---

This mission emphasizes designing a clean and expandable single traffic light module suitable for multi-instance system integration.
