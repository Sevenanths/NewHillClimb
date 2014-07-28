.class public Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;
.super Ljava/lang/Object;
.source "ApplifierImpactZoneManager.java"


# instance fields
.field private _currentZone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;

.field private _defaultZone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;

.field private _zones:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/applifier/impact/android/zone/ApplifierImpactZone;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;)V
    .locals 6
    .parameter "zoneArray"

    .prologue
    const/4 v4, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v4, p0, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->_zones:Ljava/util/Map;

    .line 16
    iput-object v4, p0, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->_defaultZone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;

    .line 17
    iput-object v4, p0, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->_currentZone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;

    .line 20
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->_zones:Ljava/util/Map;

    .line 22
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 45
    return-void

    .line 24
    :cond_0
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 25
    .local v2, jsonZone:Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 26
    .local v3, zone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    const-string v4, "incentivised"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 27
    new-instance v3, Lcom/applifier/impact/android/zone/ApplifierImpactIncentivizedZone;

    .end local v3           #zone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    invoke-direct {v3, v2}, Lcom/applifier/impact/android/zone/ApplifierImpactIncentivizedZone;-><init>(Lorg/json/JSONObject;)V

    .line 32
    .restart local v3       #zone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    :goto_1
    invoke-virtual {v3}, Lcom/applifier/impact/android/zone/ApplifierImpactZone;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 33
    new-instance v4, Lcom/applifier/impact/android/zone/ApplifierImpactZone;

    invoke-direct {v4, v2}, Lcom/applifier/impact/android/zone/ApplifierImpactZone;-><init>(Lorg/json/JSONObject;)V

    iput-object v4, p0, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->_defaultZone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;

    .line 36
    :cond_1
    iget-object v4, p0, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->_currentZone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/applifier/impact/android/zone/ApplifierImpactZone;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 37
    iput-object v3, p0, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->_currentZone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;

    .line 40
    :cond_2
    iget-object v4, p0, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->_zones:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/applifier/impact/android/zone/ApplifierImpactZone;->getZoneId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .end local v2           #jsonZone:Lorg/json/JSONObject;
    .end local v3           #zone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    .restart local v2       #jsonZone:Lorg/json/JSONObject;
    .restart local v3       #zone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    :cond_3
    new-instance v3, Lcom/applifier/impact/android/zone/ApplifierImpactZone;

    .end local v3           #zone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    invoke-direct {v3, v2}, Lcom/applifier/impact/android/zone/ApplifierImpactZone;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v3       #zone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    goto :goto_1

    .line 41
    .end local v2           #jsonZone:Lorg/json/JSONObject;
    .end local v3           #zone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    :catch_0
    move-exception v0

    .line 42
    .local v0, e:Lorg/json/JSONException;
    const-string v4, "Failed to parse zone"

    invoke-static {v4, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    iput-object v1, p0, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->_currentZone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;

    .line 82
    iget-object v0, p0, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->_zones:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 83
    iput-object v1, p0, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->_zones:Ljava/util/Map;

    .line 84
    return-void
.end method

.method public getCurrentZone()Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->_currentZone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;

    return-object v0
.end method

.method public getZone(Ljava/lang/String;)Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    .locals 1
    .parameter "zoneId"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->_zones:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->_zones:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applifier/impact/android/zone/ApplifierImpactZone;

    .line 51
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getZonesJson()Lorg/json/JSONArray;
    .locals 4

    .prologue
    .line 73
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 74
    .local v1, zonesArray:Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->_zones:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 77
    return-object v1

    .line 74
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applifier/impact/android/zone/ApplifierImpactZone;

    .line 75
    .local v0, zone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    invoke-virtual {v0}, Lcom/applifier/impact/android/zone/ApplifierImpactZone;->getZoneOptions()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0
.end method

.method public setCurrentZone(Ljava/lang/String;)Z
    .locals 1
    .parameter "zoneId"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->_zones:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->_zones:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applifier/impact/android/zone/ApplifierImpactZone;

    iput-object v0, p0, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->_currentZone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;

    .line 61
    const/4 v0, 0x1

    .line 65
    :goto_0
    return v0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->_defaultZone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;

    iput-object v0, p0, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->_currentZone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;

    .line 65
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zoneCount()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->_zones:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->_zones:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
