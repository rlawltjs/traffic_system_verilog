# 🚦 Basic 4 – Moore FSM Traffic Light Controller

## 📌 Overview

This project redesigns the traffic light controller using a **Moore FSM architecture**.

The goal of this mission is to diversify the design approach while maintaining a clean and scalable RTL structure.

---

## 🎯 Mission Objective

* Redesign the traffic light controller based on the **Moore FSM concept**
* Separate state logic and output logic clearly
* Strengthen understanding of FSM design methodologies
* Maintain modular and hierarchical RTL structure

---

## 🏗 Design Rules

* The design must strictly follow the **Moore FSM architecture**

  * Outputs depend only on the current state
* No additional control logic is allowed in the **Top module**
* The structure must remain scalable for intersection expansion

---

## 🛠 Design Concept

* State register (sequential logic)
* Next-state logic (combinational logic)
* Output logic determined only by the current state
* Cycle-based timing control
* Clean separation between control and output signals

---

## 🎯 Purpose of This Mission

* Compare Moore FSM with previous design approaches
* Improve RTL structural clarity
* Reinforce FSM-based hardware design concepts
* Enhance modularity and maintainability

---

This mission focuses on implementing a traffic light controller strictly following the Moore FSM design methodology while preserving a clean hierarchical RTL architecture.
