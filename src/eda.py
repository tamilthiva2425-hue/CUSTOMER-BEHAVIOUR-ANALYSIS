import pandas as pd

df = pd.read_csv("data/raw/marketing_campaign.csv", sep="\t")

# Convert date
df["Dt_Customer"] = pd.to_datetime(df["Dt_Customer"], dayfirst=True)

# Create customer age
df["Age"] = 2014 - df["Year_Birth"]

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

# Campaign acceptance
campaign_cols = [
    "AcceptedCmp1",
    "AcceptedCmp2",
    "AcceptedCmp3",
    "AcceptedCmp4",
    "AcceptedCmp5"
]

df["Campaigns_Accepted"] = df[campaign_cols].sum(axis=1)

print("Shape:", df.shape)
print("\nNew Columns:")
print(["Age", "Total_Spending", "Total_Purchases",
       "Total_Children", "Campaigns_Accepted"])

print("\nSummary:")
print(df[[
    "Age",
    "Income",
    "Total_Spending",
    "Total_Purchases",
    "Total_Children",
    "Campaigns_Accepted",
    "Response"
]].describe())