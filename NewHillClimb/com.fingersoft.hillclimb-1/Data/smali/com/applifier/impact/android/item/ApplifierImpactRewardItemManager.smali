.class public Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;
.super Ljava/lang/Object;
.source "ApplifierImpactRewardItemManager.java"


# instance fields
.field private _currentItem:Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;

.field private _defaultItem:Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;

.field private _rewardItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 6
    .parameter "rewardItemArray"
    .parameter "defaultItem"

    .prologue
    const/4 v4, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v4, p0, Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;->_rewardItems:Ljava/util/Map;

    .line 16
    iput-object v4, p0, Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;->_currentItem:Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;

    .line 17
    iput-object v4, p0, Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;->_defaultItem:Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;

    .line 20
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;->_rewardItems:Ljava/util/Map;

    .line 22
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 39
    return-void

    .line 24
    :cond_0
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 25
    .local v3, rewardItemObject:Lorg/json/JSONObject;
    new-instance v2, Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;

    invoke-direct {v2, v3}, Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;-><init>(Lorg/json/JSONObject;)V

    .line 27
    .local v2, rewardItem:Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;
    invoke-virtual {v2}, Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;->hasValidData()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 28
    invoke-virtual {v2}, Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 29
    iput-object v2, p0, Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;->_currentItem:Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;

    .line 30
    iput-object v2, p0, Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;->_defaultItem:Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;

    .line 33
    :cond_1
    iget-object v4, p0, Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;->_rewardItems:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .end local v2           #rewardItem:Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;
    .end local v3           #rewardItemObject:Lorg/json/JSONObject;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, e:Lorg/json/JSONException;
    const-string v4, "Failed to parse reward item"

    invoke-static {v4, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public allItems()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v0, itemArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;>;"
    iget-object v2, p0, Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;->_rewardItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 69
    return-object v0

    .line 66
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;

    .line 67
    .local v1, rewardItem:Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getCurrentItem()Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;->_currentItem:Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;

    return-object v0
.end method

.method public getDefaultItem()Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;->_defaultItem:Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;

    return-object v0
.end method

.method public getItem(Ljava/lang/String;)Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;
    .locals 1
    .parameter "rewardItemKey"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;->_rewardItems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;->_rewardItems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;

    .line 45
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public itemCount()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;->_rewardItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public setCurrentItem(Ljava/lang/String;)Z
    .locals 1
    .parameter "rewardItemKey"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;->_rewardItems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;->_rewardItems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;

    iput-object v0, p0, Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;->_currentItem:Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;

    .line 59
    const/4 v0, 0x1

    .line 61
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
