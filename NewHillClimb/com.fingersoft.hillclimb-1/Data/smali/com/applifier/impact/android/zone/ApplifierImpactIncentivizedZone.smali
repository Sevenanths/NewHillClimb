.class public Lcom/applifier/impact/android/zone/ApplifierImpactIncentivizedZone;
.super Lcom/applifier/impact/android/zone/ApplifierImpactZone;
.source "ApplifierImpactIncentivizedZone.java"


# instance fields
.field private _rewardItems:Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .parameter "zoneObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/applifier/impact/android/zone/ApplifierImpactZone;-><init>(Lorg/json/JSONObject;)V

    .line 12
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/applifier/impact/android/zone/ApplifierImpactIncentivizedZone;->_rewardItems:Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;

    .line 16
    new-instance v0, Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;

    const-string v1, "defaultRewardItem"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;-><init>(Lorg/json/JSONObject;)V

    .line 17
    .local v0, defaultItem:Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;
    new-instance v1, Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;

    const-string v2, "rewardItems"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0}, Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;-><init>(Lorg/json/JSONArray;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/applifier/impact/android/zone/ApplifierImpactIncentivizedZone;->_rewardItems:Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;

    .line 18
    return-void
.end method


# virtual methods
.method public isIncentivized()Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method public itemManager()Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/applifier/impact/android/zone/ApplifierImpactIncentivizedZone;->_rewardItems:Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;

    return-object v0
.end method
