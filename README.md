# 🚦 Basic 1 - Simple RTL Traffic Light Controller

## 📌 Overview

This project implements a basic traffic light controller using Verilog RTL.
The purpose of this mission is to practice fundamental RTL design concepts, FSM implementation, and hardware-oriented coding rules.

The design is structured to be expandable for a 4-way intersection system in the next mission.

---

## ⚙️ System Specification

* **Start Condition**: Controller operates when the `Start` button is pressed
* **System Clock**: 100 MHz
* **Design Method**: Finite State Machine (FSM)
* **Timing Control**: Cycle-based counter

---

## 🚗 Vehicle Traffic Signals (4 Outputs)

* 🔴 Red
* 🟡 Yellow
* ⬅️ Left Turn
* 🟢 Green

### Vehicle Timing Sequence

| State     | Duration (Cycles)                  |
| --------- | ---------------------------------- |
| Green     | 20                                 |
| Yellow    | 2                                  |
| Left Turn | 10                                 |
| Yellow    | 2                                  |
| Red       | Designed to complete full sequence |

---

## 🚶 Pedestrian Signals (2 Outputs)

* 🔴 Red
* 🟢 Green

### Pedestrian Behavior

* Pedestrian green signal blinks for **6 cycles**
* After blinking, it changes to **Red**

---

## 🛠 Design Features

* RTL-based synchronous design
* FSM-driven state transitions
* Parameterized cycle control
* Modular structure for future multi-instance expansion

---

## 🎯 Purpose of This Mission

* Understand traffic light controller architecture
* Practice RTL coding standards
* Learn FSM-based hardware design
* Prepare for 4-way intersection implementation in Mission 2

---

This project focuses on mastering RTL fundamentals before extending the design into a complete intersection traffic controller.

