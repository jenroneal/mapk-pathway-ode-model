# MAPK Pathway ODE Model

This repository contains a MATLAB-based ordinary differential equation (ODE) model of the MAPK signaling pathway.

The workflow simulates signaling pathway dynamics involved in kinase activation and dephosphorylation processes commonly studied in systems biology and computational modeling of cellular signaling networks.

## Biological Background

The mitogen-activated protein kinase (MAPK) pathway is a critical intracellular signaling cascade involved in cellular growth, proliferation, differentiation, and stress-response regulation.

This model simulates pathway activation dynamics through coupled differential equations representing signaling interactions and phosphorylation states over time.

## Workflow Overview

The model performs the following steps:

1. Define signaling pathway parameters and initial conditions
2. Simulate pathway dynamics using ordinary differential equations
3. Compute temporal changes in signaling molecule concentrations
4. Generate pathway activity plots over time
5. Visualize signaling behavior and pathway responses

## Files

### `mapk_model.m`

MATLAB function containing the system of ordinary differential equations representing MAPK pathway dynamics.

### `run_mapk_model.m`

Driver script used to initialize parameters, execute the simulation, and generate pathway output plots.

## Tools and Technologies

- MATLAB
- Ordinary Differential Equation (ODE) modeling
- Systems biology simulation
- Computational pathway analysis

## Biological Relevance

ODE-based signaling pathway models are commonly used in systems biology to study dynamic cellular responses, signaling regulation, and pathway behavior under varying biological conditions.

This project demonstrates foundational computational biology concepts involving pathway modeling, dynamic systems simulation, and quantitative biological interpretation.

## Usage

Run the simulation in MATLAB using:

```matlab
run_mapk_model
