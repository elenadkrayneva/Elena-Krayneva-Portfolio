# -------------------------------------------------------------
# CASE STUDY 9: WALMART – Product Bundling Recommendation
# Concept: Revenue rises while conversion does not clearly change
# -------------------------------------------------------------
# Context:
# Walmart tests a bundling recommendation module at checkout.
# The module may not increase the number of buyers, but it could
# increase basket size among those who do buy.
#
# Business question:
# Should Walmart launch a treatment that improves revenue without
# meaningfully improving conversion?

set.seed(109)
library(dplyr)
library(ggplot2)

n <- 3800
treatment <- rbinom(n, 1, 0.5)

conversion <- rbinom(n, 1, 0.112)
basket_value <- ifelse(conversion == 1, rlnorm(n, meanlog = 4.0 + 0.18 * treatment, sdlog = 0.55), 0)
revenue <- basket_value

df <- data.frame(treatment, conversion, revenue)

print(t.test(conversion ~ treatment, data = df))
print(t.test(revenue ~ treatment, data = df))

summary_df <- df |>
  group_by(treatment) |>
  summarise(
    conversion_rate = mean(conversion),
    revenue_per_user = mean(revenue),
    avg_order_value = mean(revenue[revenue > 0]),
    .groups = "drop"
  )
print(summary_df)

ggplot(summary_df, aes(x = factor(treatment), y = conversion_rate, fill = factor(treatment))) +
  geom_col(width = 0.6) +
  labs(
    title = "Walmart A/B Test: Conversion rate by group",
    x = "Group",
    y = "Conversion rate",
    fill = "Group"
  ) +
  theme_minimal()

# -------------------------------------------------------------
# STUDENT INTERPRETATION TASKS
# -------------------------------------------------------------
# 1. Is conversion significantly different?
# 2. Is revenue per visitor significantly different?
# 3. Why can a treatment be valuable even when conversion does not increase?
# 4. What metric matters more for this business objective?
# 5. What operational risks should Walmart still check before rollout?
# 6. Write a recommendation for the merchandising team.
