# 🚦 Basic 3 – 4-Way Intersection Traffic Light Controller

## 📌 Overview

This project extends the single traffic light module into a complete 4-way intersection system.

The design is implemented by instantiating four identical traffic light modules and verifying all intersection cases through a comprehensive testbench.

---

## 🎯 Mission Objective

* Expand the single traffic light module to a **4-way intersection**
* Implement the system using **four module instantiations**
* Develop a **testbench covering all intersection cases**
* Prepare a clear verbal explanation of the design architecture and operation

---

## 🏗 Design Rules

* The intersection must be implemented by **instantiating four identical traffic light modules**
* The **Top module must NOT include an additional control module**
* A **single module must NOT directly control the entire intersection**
* Each traffic light module must operate independently while supporting coordinated intersection behavior

---

## 🛠 Design Concept

* Hierarchical RTL design
* FSM-based traffic light control
* Modular and reusable architecture
* Synchronous design based on system clock
* Clean signal interface between modules

---

## 🧪 Verification

* A dedicated **testbench** verifies:

  * Normal operation sequence
  * State transitions
  * Timing correctness
  * All intersection traffic scenarios
* Simulation ensures proper coordination between the four traffic light modules

---

## 🎯 Purpose of This Mission

* Practice scalable hardware architecture
* Understand multi-module instantiation
* Verify complex traffic scenarios at system level
* Strengthen RTL design and simulation skills

---

This mission completes the expansion from a single traffic light controller to a fully structured 4-way intersection system using modular RTL design principles.
