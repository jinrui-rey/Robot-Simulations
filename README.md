# Robot-Simulations
The final project of ROB-GY-6003 Foundation of Robotic at NYU Tandon School
## Introduction
The code is a simulation of six degrees of freedom robot arm. The specific robot shows as follows:

## functionality
- Forward Kinematics: The code includes a function that takes the joint angles as the input and computes the position of each joint and the end effector position as the output.
- Inverse Kinematics: The code includes a function that takes the end effector position and orientation as an input and computes the joint angles as an output. If this is not possible, the function communicate this to the user somehow (e.g., output NaN as the output while also showing an error message “Desired end effector position and orientation out of workspace of robot.”
- Visualization: The code display a stick-figure like drawing of the robot links (“connect the dots”).
- Workspace Computation: Display the workspace of the robot with a reasonable resolution.
# Usage 
Specific usage refers to the `report.pdf` file.
