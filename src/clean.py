import pandas as pd

# Load data
df = pd.read_csv("data/raw/marketing_campaign.csv", sep="\t")

# Convert date
df["Dt_Customer"] = pd.to_datetime(df["Dt_Customer"], dayfirst=True)

# Fix missing income
df["Income"] = df["Income"].fillna(df["Income"].median())

# Create age
df["Age"] = 2014 - df["Year_Birth"]

# Remove unrealistic ages
df = df[df["Age"] <= 100]

# Total spending
spending_cols = [
    "MntWines",
    "MntFruits",
    "MntMeatProducts",
    "MntFishProducts",
    "MntSweetProducts",
    "MntGoldProds"
]

df["Total_Spending"] = df[spending_cols].sum(axis=1)

# Total purchases
purchase_cols = [
    "NumWebPurchases",
    "NumCatalogPurchases",
    "NumStorePurchases"
]

df["Total_Purchases"] = df[purchase_cols].sum(axis=1)

# Total children
df["Total_Children"] = df["Kidhome"] + df["Teenhome"]

# Campaigns accepted
campaign_cols = [
    "AcceptedCmp1",
    "AcceptedCmp2",
    "AcceptedCmp3",
    "AcceptedCmp4",
    "AcceptedCmp5"
]

df["Campaigns_Accepted"] = df[campaign_cols].sum(axis=1)

# Remove unnecessary constant columns
df = df.drop(columns=["Z_CostContact", "Z_Revenue"])

# Save cleaned data
df.to_csv("data/processed/customer_behaviour_cleaned.csv", index=False)

print("Cleaned dataset shape:", df.shape)
print("Missing values:", df.isnull().sum().sum())
print("Duplicates:", df.duplicated().sum())
print("Saved successfully.")