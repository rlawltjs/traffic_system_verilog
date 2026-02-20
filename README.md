# 🚦 RTL Traffic Light Controller Project (Basic 1–4)

## 📌 Project Overview

This project is a step-by-step RTL design practice of a Traffic Light Controller.
From a single basic module to a fully structured 4-way intersection system, the design evolves across four missions.

The overall goal is to strengthen understanding of:

* RTL coding rules
* FSM-based hardware design
* Modular and hierarchical architecture
* Scalable intersection system design
* Verification using testbench

System Clock: **100 MHz**

---

# 🔹 Basic 1 – Initial RTL Design

## 🎯 Mission Objective

* Understand traffic light controller fundamentals
* Practice RTL coding rules
* Learn core hardware concepts
* Prepare for future 4-way expansion (core intersection logic implemented later)

## ⚙️ Operation

* Controller starts when **Start button** is pressed
* Cycle-based timing control

## 🚗 Vehicle Signals (4 Outputs)

* 🔴 Red
* 🟡 Yellow
* ⬅️ Left Turn
* 🟢 Green

### Timing

| State     | Cycles             |
| --------- | ------------------ |
| Green     | 20                 |
| Yellow    | 2                  |
| Left Turn | 10                 |
| Yellow    | 2                  |
| Red       | Designed as needed |

## 🚶 Pedestrian Signals (2 Outputs)

* 🔴 Red
* 🟢 Green
* Green blinks for **6 cycles** before turning Red

---

# 🔹 Basic 2 – Optimized Single Traffic Light Module

## 🎯 Mission Objective

Design a single traffic light module optimized for 4-way intersection expansion.

## 🏗 Design Rules

* The intersection must be implemented by instantiating **four identical modules**
* No additional control module in the **Top module**
* One module must NOT directly control the entire intersection

## 🛠 Focus

* Improved modularity
* Clean interface design
* Scalable architecture
* Reusable RTL structure

---

# 🔹 Basic 3 – 4-Way Intersection

## 🎯 Mission Objective

* Expand to a complete 4-way intersection
* Implement four module instantiations
* Develop a testbench covering all intersection cases
* Prepare verbal explanation of system architecture

## 🏗 Design Rules

* 4 identical traffic light modules must be instantiated
* No additional Top-level control logic
* No centralized full-intersection controller

## 🧪 Verification

* Full scenario-based testbench
* State transition validation
* Timing verification
* Intersection conflict case verification

---

# 🔹 Basic 4 – Moore FSM Design

## 🎯 Mission Objective

Diversify the design approach by implementing a Moore FSM architecture.

## 🏗 Design Rules

* Must strictly follow **Moore FSM concept**

  * Outputs depend only on the current state
* No additional control logic in Top module

## 🛠 Design Concept

* State register (sequential logic)
* Next-state logic (combinational logic)
* Output logic derived only from state
* Clear separation of control and output

---

# 🧩 Design Philosophy Across All Missions

* FSM-based synchronous design
* No centralized intersection controller
* Hierarchical and modular RTL structure
* Scalable to 4-way intersection through instantiation
* Clean and hardware-oriented coding style

---

# 🎯 Learning Outcome

By completing Basic 1–4, this project demonstrates:

* Strong understanding of RTL fundamentals
* Modular hardware architecture design
* FSM implementation (general & Moore FSM)
* Multi-module instantiation strategy
* System-level verification skills

---

This repository documents the full design evolution of a Traffic Light Controller from a basic RTL implementation to a structured 4-way intersection system using scalable hardware design principles.
