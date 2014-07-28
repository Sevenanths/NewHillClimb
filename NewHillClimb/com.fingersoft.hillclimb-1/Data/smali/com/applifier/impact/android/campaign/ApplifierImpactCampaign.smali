.class public Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;
.super Ljava/lang/Object;
.source "ApplifierImpactCampaign.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;
    }
.end annotation


# instance fields
.field private _campaignJson:Lorg/json/JSONObject;

.field private _campaignStatus:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

.field private _requiredKeys:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->_campaignJson:Lorg/json/JSONObject;

    .line 30
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 31
    const-string v2, "endScreen"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 32
    const-string v2, "clickUrl"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 33
    const-string v2, "picture"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 34
    const-string v2, "trailerDownloadable"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 35
    const-string v2, "trailerStreaming"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 36
    const-string v2, "gameId"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 37
    const-string v2, "gameName"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 38
    const-string v2, "id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 39
    const-string v2, "tagLine"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->_requiredKeys:[Ljava/lang/String;

    .line 43
    sget-object v0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;->READY:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    iput-object v0, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->_campaignStatus:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "fromJSON"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->_campaignJson:Lorg/json/JSONObject;

    .line 30
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 31
    const-string v2, "endScreen"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 32
    const-string v2, "clickUrl"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 33
    const-string v2, "picture"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 34
    const-string v2, "trailerDownloadable"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 35
    const-string v2, "trailerStreaming"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 36
    const-string v2, "gameId"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 37
    const-string v2, "gameName"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 38
    const-string v2, "id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 39
    const-string v2, "tagLine"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->_requiredKeys:[Ljava/lang/String;

    .line 43
    sget-object v0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;->READY:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    iput-object v0, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->_campaignStatus:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    .line 49
    iput-object p1, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->_campaignJson:Lorg/json/JSONObject;

    .line 50
    return-void
.end method

.method private checkDataIntegrity()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 313
    iget-object v2, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->_campaignJson:Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    .line 314
    iget-object v3, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->_requiredKeys:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_1

    .line 320
    const/4 v1, 0x1

    .line 322
    :cond_0
    return v1

    .line 314
    :cond_1
    aget-object v0, v3, v2

    .line 315
    .local v0, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->_campaignJson:Lorg/json/JSONObject;

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 314
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public allowCacheVideo()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->checkDataIntegrity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v2, "allowCache"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 92
    :goto_0
    return-object v1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "allowCacheVideo: key not found for campaign: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", returning false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public clearData()V
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->_campaignJson:Lorg/json/JSONObject;

    .line 308
    return-void
.end method

.method public getCampaignId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->checkDataIntegrity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 146
    :goto_0
    return-object v1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "getCampaignId: This should not happen!"

    invoke-static {v1, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCampaignStatus()Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->_campaignStatus:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    return-object v0
.end method

.method public getClickUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->checkDataIntegrity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v2, "clickUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 211
    :goto_0
    return-object v1

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "getClickUrl: This should not happen!"

    invoke-static {v1, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEndScreenUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->checkDataIntegrity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v2, "endScreen"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 120
    :goto_0
    return-object v1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "getEndScreenUrl: This should not happen!"

    invoke-static {v1, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->checkDataIntegrity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v2, "gameId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 159
    :goto_0
    return-object v1

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "getGameId: This should not happen!"

    invoke-static {v1, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGameName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->checkDataIntegrity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v2, "gameName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 172
    :goto_0
    return-object v1

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "getGameName: This should not happen!"

    invoke-static {v1, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPicture()Ljava/lang/String;
    .locals 3

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->checkDataIntegrity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v2, "picture"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 133
    :goto_0
    return-object v1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "getPicture: This should not happen!"

    invoke-static {v1, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStoreId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 267
    iget-object v1, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v2, "storeId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    :try_start_0
    iget-object v1, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v2, "storeId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 284
    :goto_0
    return-object v1

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getStoreId: Was supposed to use ApplifierImpactConstants.IMPACT_CAMPAIGN_STOREID_KEY but "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " occured"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 275
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v2, "iTunesId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    :try_start_1
    iget-object v1, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v2, "iTunesId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 279
    :catch_1
    move-exception v0

    .line 280
    .restart local v0       #e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getStoreId: Was supposed to use ApplifierImpactConstants.IMPACT_CAMPAIGN_ITUNESID_KEY but "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " occured"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 284
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTagLine()Ljava/lang/String;
    .locals 3

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->checkDataIntegrity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v2, "tagLine"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 263
    :goto_0
    return-object v1

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "getTagLine: This should not happen!"

    invoke-static {v1, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 263
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVideoFileExpectedSize()J
    .locals 8

    .prologue
    .line 229
    const-wide/16 v2, -0x1

    .line 230
    .local v2, size:J
    invoke-direct {p0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->checkDataIntegrity()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 232
    :try_start_0
    iget-object v6, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v7, "trailerSize"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 235
    .local v1, fileSize:Ljava/lang/String;
    :try_start_1
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    move-wide v4, v2

    .line 250
    .end local v1           #fileSize:Ljava/lang/String;
    .end local v2           #size:J
    .local v4, size:J
    :goto_0
    return-wide v4

    .line 237
    .end local v4           #size:J
    .restart local v1       #fileSize:Ljava/lang/String;
    .restart local v2       #size:J
    :catch_0
    move-exception v0

    .line 238
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getVideoFileExpectedSize: could not parse size: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-wide v4, v2

    .line 239
    .end local v2           #size:J
    .restart local v4       #size:J
    goto :goto_0

    .line 244
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #fileSize:Ljava/lang/String;
    .end local v4           #size:J
    .restart local v2       #size:J
    :catch_1
    move-exception v0

    .line 245
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v6, "getVideoFileExpectedSize: not found, returning -1"

    invoke-static {v6, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    move-wide v4, v2

    .line 246
    .end local v2           #size:J
    .restart local v4       #size:J
    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    .end local v4           #size:J
    .restart local v2       #size:J
    :cond_0
    move-wide v4, v2

    .line 250
    .end local v2           #size:J
    .restart local v4       #size:J
    goto :goto_0
.end method

.method public getVideoFilename()Ljava/lang/String;
    .locals 4

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->checkDataIntegrity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v3, "trailerDownloadable"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .local v1, videoFile:Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 225
    .end local v1           #videoFile:Ljava/io/File;
    :goto_0
    return-object v2

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "getVideoFilename: This should not happen!"

    invoke-static {v2, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 225
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getVideoStreamUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->checkDataIntegrity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v2, "trailerStreaming"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 198
    :goto_0
    return-object v1

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "getVideoStreamUrl: This should not happen!"

    invoke-static {v1, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 198
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->checkDataIntegrity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v2, "trailerDownloadable"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 185
    :goto_0
    return-object v1

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "getVideoUrl: This should not happen!"

    invoke-static {v1, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasValidData()Z
    .locals 1

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->checkDataIntegrity()Z

    move-result v0

    return v0
.end method

.method public isViewed()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->_campaignStatus:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    sget-object v1, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;->VIEWED:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    if-ne v0, v1, :cond_0

    .line 297
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 299
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public setCampaignStatus(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 292
    iput-object p1, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->_campaignStatus:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    .line 293
    return-void
.end method

.method public shouldBypassAppSheet()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->checkDataIntegrity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v2, "bypassAppSheet"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 105
    :goto_0
    return-object v1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "shouldBypassAppSheet: key not found for campaign: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", returning false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public shouldCacheVideo()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->checkDataIntegrity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v2, "cacheVideo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 80
    :goto_0
    return-object v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "shouldCacheVideo: key not found for campaign: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", returning false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 58
    iget-object v1, p0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->_campaignJson:Lorg/json/JSONObject;

    .line 61
    .local v1, retObject:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "status"

    invoke-virtual {p0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getCampaignStatus()Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v1           #retObject:Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 63
    .restart local v1       #retObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Error creating campaign JSON"

    invoke-static {v2, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", STATUS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getCampaignStatus()Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
