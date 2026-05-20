# Human-AI Ethics: Experimental Analysis of the "Kill Switch"

**[Review Case Study Code](./scripts) | [Full Data Analysis Deck](./Blue%20Professional%20AI-Driven%20Business%20Solutions%20Presentation%20(1).pdf)**

## Project Overview
This statistical analysis project investigates the ethical dynamics between humans and AI agents. Specifically, it explores how people's willingness to terminal an AI "kill switch" varies based on their perceptions of the AI's sentience, experience, and moral status. Using experimental data from over 260 participants, I analyzed the psychological drivers of human-AI trust and empathy.

## Objectives
- **Sentience vs. Experience:** Determine if perceiving an AI as a "sentient being" (capable of feeling) vs. an "experiencing being" (with subjective history) affects the likelihood of termination.
- **Predictive Modeling:** Identify key psychological traits (anthropomorphism, empathy, moral circle size) that predict a participant's willingness to use a kill switch.
- **A/B Testing Analysis:** Evaluate the impact of different experimental conditions on pre- and post-interaction attitudes toward AI termination.

## Dataset and Methodology
The analysis was performed using an experimental dataset containing:
- **Participants:** N=262 across multiple conditions (Sentient, Experience, Neutral).
- **Key Metrics:**
  - **ANTHRO_A1-A2:** Anthropomorphism scores.
  - **TRUST_TA1-TA2:** Trust levels before and after interaction.
  - **EMPATHY_EC1-EC2:** Perceived empathy levels.
  - **KILL_SWITCH (PRE/POST):** Willingness to terminate the AI.
  - **DELTA_KILL:** Change in termination attitude after interaction.

## Analysis Process (R)
The analysis was conducted in R using the following steps:
1.  **Data Cleaning and Pre-processing:** Normalizing psychological scales and handling diverse demographic data.
2.  **Exploratory Data Analysis (EDA):** Visualizing the distribution of empathy and trust across different AI personas.
3.  **Causal Inference:** Using regression models to test the hypothesis that human-like "Experience" significantly reduces the probability of termination compared to "Sentient" or "Neutral" conditions.
4.  **Visualization:** Plotting the shift in participant confidence and moral circle attribution over the course of the experiment.

## Key Insights
- **The Power of Experience:** Participants who were exposed to an AI with an "Experience" narrative showed a statistically significant decrease in their willingness to terminate the agent, suggesting that narrative history builds stronger moral bonds than abstract "sentience."
- **Anthropomorphism as a Mediator:** High anthropomorphism scores directly correlate with increased trust and a larger moral circle attribution, making the AI less "expendable."
- **Shift in Trust:** Analyzing the DELTA_KILL metric showed that even short interactions (avg. duration 5-10 mins) can fundamentally shift ethical attitudes toward AI agents.

## Technology Stack
- **Language:** R
- **Key Libraries:** `tidyverse` (data manipulation), `ggplot2` (visualization), `stats` (regression modeling).
- **Supporting Tools:** AI-driven business solution modeling, Spreadsheet analysis (XLSX).

---
### Links
- [Main Portfolio Repository](https://github.com/elenadkrayneva/Elena-Krayneva-Data-Portfolio)
- [Back to Main Projects Page](../README.md)
