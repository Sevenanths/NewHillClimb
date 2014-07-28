.class public Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;
.super Ljava/lang/Object;
.source "ApplifierImpactWebData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactCancelUrlLoaderRunner;,
        Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;,
        Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;,
        Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;,
        Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierImpactRequestType:[I

.field private static _zoneManager:Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;


# instance fields
.field private _campaignJson:Lorg/json/JSONObject;

.field private _campaigns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;",
            ">;"
        }
    .end annotation
.end field

.field private _currentLoader:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;

.field private _failedUrlLoaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;",
            ">;"
        }
    .end annotation
.end field

.field private _initInProgress:Z

.field private _isLoading:Z

.field private _listener:Lcom/applifier/impact/android/webapp/IApplifierImpactWebDataListener;

.field private _totalLoadersCreated:I

.field private _totalLoadersHaveRun:I

.field private _totalUrlsSent:I

.field private _urlLoaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierImpactRequestType()[I
    .locals 3

    .prologue
    .line 33
    sget-object v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->$SWITCH_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierImpactRequestType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->values()[Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->Analytics:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    invoke-virtual {v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->Unsent:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    invoke-virtual {v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->VideoPlan:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    invoke-virtual {v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->VideoViewed:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    invoke-virtual {v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->$SWITCH_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierImpactRequestType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_zoneManager:Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_campaignJson:Lorg/json/JSONObject;

    .line 36
    iput-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_campaigns:Ljava/util/ArrayList;

    .line 37
    iput-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_listener:Lcom/applifier/impact/android/webapp/IApplifierImpactWebDataListener;

    .line 38
    iput-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_urlLoaders:Ljava/util/ArrayList;

    .line 39
    iput-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_failedUrlLoaders:Ljava/util/ArrayList;

    .line 40
    iput-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_currentLoader:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;

    .line 42
    iput v1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_totalUrlsSent:I

    .line 43
    iput v1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_totalLoadersCreated:I

    .line 44
    iput v1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_totalLoadersHaveRun:I

    .line 46
    iput-boolean v1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_isLoading:Z

    .line 47
    iput-boolean v1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_initInProgress:Z

    .line 101
    return-void
.end method

.method static synthetic access$0(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->addLoader(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;)V

    return-void
.end method

.method static synthetic access$1(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;)V
    .locals 0
    .parameter

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->startNextLoader()V

    return-void
.end method

.method static synthetic access$2(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;)I
    .locals 1
    .parameter

    .prologue
    .line 43
    iget v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_totalLoadersCreated:I

    return v0
.end method

.method static synthetic access$3(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput p1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_totalLoadersCreated:I

    return-void
.end method

.method static synthetic access$4(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;)I
    .locals 1
    .parameter

    .prologue
    .line 44
    iget v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_totalLoadersHaveRun:I

    return v0
.end method

.method static synthetic access$5(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput p1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_totalLoadersHaveRun:I

    return-void
.end method

.method static synthetic access$6(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 346
    invoke-direct {p0, p1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->urlLoadFailed(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;)V

    return-void
.end method

.method static synthetic access$7(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->urlLoadCompleted(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;)V

    return-void
.end method

.method private addLoader(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;)V
    .locals 1
    .parameter "loader"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_urlLoaders:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_urlLoaders:Ljava/util/ArrayList;

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_urlLoaders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    return-void
.end method

.method private campaignDataFailed()V
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_listener:Lcom/applifier/impact/android/webapp/IApplifierImpactWebDataListener;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_listener:Lcom/applifier/impact/android/webapp/IApplifierImpactWebDataListener;

    invoke-interface {v0}, Lcom/applifier/impact/android/webapp/IApplifierImpactWebDataListener;->onWebDataFailed()V

    .line 540
    :cond_0
    return-void
.end method

.method private campaignDataReceived(Ljava/lang/String;)V
    .locals 10
    .parameter "json"

    .prologue
    const/4 v5, 0x0

    .line 446
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 448
    .local v4, validData:Ljava/lang/Boolean;
    iput-boolean v5, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_initInProgress:Z

    .line 451
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_campaignJson:Lorg/json/JSONObject;

    .line 452
    const/4 v1, 0x0

    .line 454
    .local v1, data:Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_campaignJson:Lorg/json/JSONObject;

    const-string v7, "data"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    if-eqz v6, :cond_d

    .line 456
    :try_start_1
    iget-object v6, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_campaignJson:Lorg/json/JSONObject;

    const-string v7, "data"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 462
    :goto_0
    :try_start_2
    const-string v6, "webViewUrl"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 463
    :cond_0
    const-string v6, "analyticsUrl"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 464
    :cond_1
    const-string v6, "impactUrl"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 465
    :cond_2
    const-string v6, "gamerId"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 466
    :cond_3
    const-string v6, "campaigns"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 467
    :cond_4
    const-string v6, "zones"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 470
    :cond_5
    const-string v6, "webViewUrl"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->WEBVIEW_BASE_URL:Ljava/lang/String;

    .line 471
    const-string v6, "analyticsUrl"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->ANALYTICS_BASE_URL:Ljava/lang/String;

    .line 472
    const-string v6, "impactUrl"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->IMPACT_BASE_URL:Ljava/lang/String;

    .line 473
    const-string v6, "gamerId"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->IMPACT_GAMER_ID:Ljava/lang/String;

    .line 476
    const-string v6, "refreshCampaignsAfterViewed"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 477
    const/4 v6, 0x0

    sput v6, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CAMPAIGN_REFRESH_VIEWS_COUNT:I

    .line 478
    const-string v6, "refreshCampaignsAfterViewed"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CAMPAIGN_REFRESH_VIEWS_MAX:I

    .line 482
    :cond_6
    const-string v6, "refreshCampaignsAfterSeconds"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 483
    const-string v6, "refreshCampaignsAfterSeconds"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CAMPAIGN_REFRESH_SECONDS:I

    .line 487
    :cond_7
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 488
    const-string v6, "campaigns"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 489
    .local v0, campaigns:Lorg/json/JSONArray;
    if-eqz v0, :cond_8

    .line 490
    invoke-direct {p0, v0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->deserializeCampaigns(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_campaigns:Ljava/util/ArrayList;

    .line 494
    .end local v0           #campaigns:Lorg/json/JSONArray;
    :cond_8
    iget-object v6, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_campaigns:Ljava/util/ArrayList;

    if-nez v6, :cond_9

    .line 495
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_campaigns:Ljava/util/ArrayList;

    .line 497
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Parsed total of "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " campaigns"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 500
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 501
    sget-object v6, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_zoneManager:Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;

    if-eqz v6, :cond_a

    .line 502
    sget-object v6, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_zoneManager:Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;

    invoke-virtual {v6}, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->clear()V

    .line 503
    const/4 v6, 0x0

    sput-object v6, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_zoneManager:Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;

    .line 505
    :cond_a
    new-instance v6, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;

    const-string v7, "zones"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;-><init>(Lorg/json/JSONArray;)V

    sput-object v6, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_zoneManager:Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 526
    :cond_b
    iget-object v5, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_listener:Lcom/applifier/impact/android/webapp/IApplifierImpactWebDataListener;

    if-eqz v5, :cond_f

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_campaigns:Ljava/util/ArrayList;

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_f

    .line 527
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "WebDataCompleted: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 528
    iget-object v5, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_listener:Lcom/applifier/impact/android/webapp/IApplifierImpactWebDataListener;

    invoke-interface {v5}, Lcom/applifier/impact/android/webapp/IApplifierImpactWebDataListener;->onWebDataCompleted()V

    .line 533
    .end local v1           #data:Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 458
    .restart local v1       #data:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 459
    .local v2, e:Ljava/lang/Exception;
    :try_start_3
    const-string v6, "Malformed data JSON"

    invoke-static {v6, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 513
    .end local v1           #data:Lorg/json/JSONObject;
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 514
    .restart local v2       #e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Malformed JSON: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 516
    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 517
    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    array-length v7, v6

    :goto_2
    if-lt v5, v7, :cond_e

    .line 522
    :cond_c
    invoke-direct {p0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->campaignDataFailed()V

    goto :goto_1

    .line 509
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #data:Lorg/json/JSONObject;
    :cond_d
    :try_start_4
    invoke-direct {p0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->campaignDataFailed()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 517
    .end local v1           #data:Lorg/json/JSONObject;
    .restart local v2       #e:Ljava/lang/Exception;
    :cond_e
    aget-object v3, v6, v5

    .line 518
    .local v3, element:Ljava/lang/StackTraceElement;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Malformed JSON: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 517
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 532
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #element:Ljava/lang/StackTraceElement;
    .restart local v1       #data:Lorg/json/JSONObject;
    :cond_f
    invoke-direct {p0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->campaignDataFailed()V

    goto :goto_1
.end method

.method private checkFailedUrls()V
    .locals 15

    .prologue
    .line 370
    new-instance v11, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/applifier/impact/android/ApplifierImpactUtils;->getCacheDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pendingrequests.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 372
    .local v11, pendingRequestFile:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    const/4 v1, 0x1

    invoke-static {v11, v1}, Lcom/applifier/impact/android/ApplifierImpactUtils;->readFile(Ljava/io/File;Z)Ljava/lang/String;

    move-result-object v7

    .line 374
    .local v7, contents:Ljava/lang/String;
    const/4 v13, 0x0

    .line 375
    .local v13, pendingRequestsJson:Lorg/json/JSONObject;
    const/4 v12, 0x0

    .line 379
    .local v12, pendingRequestsArray:Lorg/json/JSONArray;
    :try_start_0
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    .end local v13           #pendingRequestsJson:Lorg/json/JSONObject;
    .local v14, pendingRequestsJson:Lorg/json/JSONObject;
    :try_start_1
    const-string v1, "data"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 382
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 383
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-lt v10, v1, :cond_1

    move-object v13, v14

    .line 402
    .end local v10           #i:I
    .end local v14           #pendingRequestsJson:Lorg/json/JSONObject;
    .restart local v13       #pendingRequestsJson:Lorg/json/JSONObject;
    :goto_1
    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applifier/impact/android/ApplifierImpactUtils;->removeFile(Ljava/lang/String;)V

    .line 405
    .end local v7           #contents:Ljava/lang/String;
    .end local v12           #pendingRequestsArray:Lorg/json/JSONArray;
    .end local v13           #pendingRequestsJson:Lorg/json/JSONObject;
    :cond_0
    invoke-direct {p0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->startNextLoader()V

    .line 406
    return-void

    .line 384
    .restart local v7       #contents:Ljava/lang/String;
    .restart local v10       #i:I
    .restart local v12       #pendingRequestsArray:Lorg/json/JSONArray;
    .restart local v14       #pendingRequestsJson:Lorg/json/JSONObject;
    :cond_1
    :try_start_2
    invoke-virtual {v12, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 386
    .local v9, failedUrl:Lorg/json/JSONObject;
    new-instance v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;

    .line 387
    const-string v1, "url"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 388
    const-string v1, "body"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 389
    const-string v1, "methodType"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 390
    const-string v1, "requestType"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->getValueOf(Ljava/lang/String;)Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    move-result-object v5

    .line 391
    const-string v1, "retries"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v6, v1, 0x1

    move-object v1, p0

    .line 386
    invoke-direct/range {v0 .. v6}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;-><init>(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;I)V

    .line 393
    .local v0, ulc:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 394
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 383
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 398
    .end local v0           #ulc:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;
    .end local v9           #failedUrl:Lorg/json/JSONObject;
    .end local v10           #i:I
    .end local v14           #pendingRequestsJson:Lorg/json/JSONObject;
    .restart local v13       #pendingRequestsJson:Lorg/json/JSONObject;
    :catch_0
    move-exception v8

    .line 399
    .local v8, e:Ljava/lang/Exception;
    :goto_2
    const-string v1, "Problems while sending some of the failed urls."

    invoke-static {v1, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 398
    .end local v8           #e:Ljava/lang/Exception;
    .end local v13           #pendingRequestsJson:Lorg/json/JSONObject;
    .restart local v14       #pendingRequestsJson:Lorg/json/JSONObject;
    :catch_1
    move-exception v8

    move-object v13, v14

    .end local v14           #pendingRequestsJson:Lorg/json/JSONObject;
    .restart local v13       #pendingRequestsJson:Lorg/json/JSONObject;
    goto :goto_2

    .end local v13           #pendingRequestsJson:Lorg/json/JSONObject;
    .restart local v14       #pendingRequestsJson:Lorg/json/JSONObject;
    :cond_3
    move-object v13, v14

    .end local v14           #pendingRequestsJson:Lorg/json/JSONObject;
    .restart local v13       #pendingRequestsJson:Lorg/json/JSONObject;
    goto :goto_1
.end method

.method private deserializeCampaigns(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 7
    .parameter "campaignsArray"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;",
            ">;"
        }
    .end annotation

    .prologue
    .line 543
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 544
    const/4 v0, 0x0

    .line 545
    .local v0, campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 547
    .local v5, retList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v3, v6, :cond_0

    .line 565
    .end local v0           #campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;
    .end local v3           #i:I
    .end local v5           #retList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;>;"
    :goto_1
    return-object v5

    .line 549
    .restart local v0       #campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;
    .restart local v3       #i:I
    .restart local v5       #retList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;>;"
    :cond_0
    :try_start_0
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 550
    .local v4, jsonCampaign:Lorg/json/JSONObject;
    new-instance v1, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-direct {v1, v4}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    .end local v0           #campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;
    .local v1, campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;
    :try_start_1
    invoke-virtual {v1}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->hasValidData()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 553
    const-string v6, "Adding campaign to cache"

    invoke-static {v6, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 554
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 547
    .end local v1           #campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;
    .end local v4           #jsonCampaign:Lorg/json/JSONObject;
    .restart local v0       #campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 557
    :catch_0
    move-exception v2

    .line 558
    .local v2, e:Ljava/lang/Exception;
    :goto_3
    const-string v6, "Problem with the campaign, skipping."

    invoke-static {v6, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 565
    .end local v0           #campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #i:I
    .end local v5           #retList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;>;"
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 557
    .restart local v1       #campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;
    .restart local v3       #i:I
    .restart local v4       #jsonCampaign:Lorg/json/JSONObject;
    .restart local v5       #retList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;>;"
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1           #campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;
    .restart local v0       #campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;
    goto :goto_3

    .end local v0           #campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;
    .restart local v1       #campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;
    :cond_2
    move-object v0, v1

    .end local v1           #campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;
    .restart local v0       #campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;
    goto :goto_2
.end method

.method public static getZoneManager()Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;
    .locals 1

    .prologue
    .line 298
    sget-object v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_zoneManager:Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;

    return-object v0
.end method

.method private startNextLoader()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 311
    iget-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_urlLoaders:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_urlLoaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_isLoading:Z

    if-nez v0, :cond_0

    .line 312
    const-string v0, "Starting next URL loader"

    invoke-static {v0, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_isLoading:Z

    .line 314
    iget-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_urlLoaders:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;

    iput-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_currentLoader:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;

    .line 316
    :cond_0
    return-void
.end method

.method private urlLoadCompleted(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;)V
    .locals 2
    .parameter "loader"

    .prologue
    .line 319
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->getRequestType()Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    invoke-static {}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->$SWITCH_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierImpactRequestType()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->getRequestType()Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 332
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->clear()V

    .line 338
    :goto_1
    iget v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_totalUrlsSent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_totalUrlsSent:I

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Total urls sent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_totalUrlsSent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_isLoading:Z

    .line 343
    invoke-direct {p0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->startNextLoader()V

    .line 344
    return-void

    .line 322
    :pswitch_1
    invoke-virtual {p1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->campaignDataReceived(Ljava/lang/String;)V

    goto :goto_0

    .line 335
    :cond_0
    const-string v0, "Got broken urlLoader!"

    invoke-static {v0, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private urlLoadFailed(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;)V
    .locals 2
    .parameter "loader"

    .prologue
    .line 347
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->getRequestType()Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 348
    invoke-static {}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->$SWITCH_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierImpactRequestType()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->getRequestType()Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 359
    :goto_0
    invoke-virtual {p1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->clear()V

    .line 365
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_isLoading:Z

    .line 366
    invoke-direct {p0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->startNextLoader()V

    .line 367
    return-void

    .line 352
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->writeFailedUrl(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;)V

    goto :goto_0

    .line 355
    :pswitch_1
    invoke-direct {p0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->campaignDataFailed()V

    goto :goto_0

    .line 362
    :cond_0
    const-string v0, "Got broken urlLoader!"

    invoke-static {v0, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private writeFailedUrl(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;)V
    .locals 10
    .parameter "loader"

    .prologue
    .line 409
    if-nez p1, :cond_1

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    iget-object v7, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_failedUrlLoaders:Ljava/util/ArrayList;

    if-nez v7, :cond_2

    .line 411
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_failedUrlLoaders:Ljava/util/ArrayList;

    .line 413
    :cond_2
    iget-object v7, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_failedUrlLoaders:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 414
    iget-object v7, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_failedUrlLoaders:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    :cond_3
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 418
    .local v5, failedUrlsJson:Lorg/json/JSONObject;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 421
    .local v4, failedUrlsArray:Lorg/json/JSONArray;
    const/4 v2, 0x0

    .line 422
    .local v2, failedUrl:Lorg/json/JSONObject;
    :try_start_0
    iget-object v7, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_failedUrlLoaders:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    move-object v3, v2

    .end local v2           #failedUrl:Lorg/json/JSONObject;
    .local v3, failedUrl:Lorg/json/JSONObject;
    :goto_1
    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    .line 433
    const-string v7, "data"

    invoke-virtual {v5, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 439
    .end local v3           #failedUrl:Lorg/json/JSONObject;
    :goto_2
    iget-object v7, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_failedUrlLoaders:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_failedUrlLoaders:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    invoke-static {}, Lcom/applifier/impact/android/ApplifierImpactUtils;->canUseExternalStorage()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 440
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/applifier/impact/android/ApplifierImpactUtils;->getCacheDirectory()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "pendingrequests.dat"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 441
    .local v6, pendingRequestFile:Ljava/io/File;
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/applifier/impact/android/ApplifierImpactUtils;->writeFile(Ljava/io/File;Ljava/lang/String;)Z

    goto :goto_0

    .line 422
    .end local v6           #pendingRequestFile:Ljava/io/File;
    .restart local v3       #failedUrl:Lorg/json/JSONObject;
    :cond_4
    :try_start_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;

    .line 423
    .local v1, failedLoader:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 424
    .end local v3           #failedUrl:Lorg/json/JSONObject;
    .restart local v2       #failedUrl:Lorg/json/JSONObject;
    :try_start_3
    const-string v8, "url"

    invoke-virtual {v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->getBaseUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 425
    const-string v8, "requestType"

    invoke-virtual {v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->getRequestType()Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 426
    const-string v8, "methodType"

    invoke-virtual {v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->getHTTPMethod()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 427
    const-string v8, "body"

    invoke-virtual {v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->getQueryParams()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 428
    const-string v8, "retries"

    invoke-virtual {v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->getRetries()I

    move-result v9

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 430
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v3, v2

    .end local v2           #failedUrl:Lorg/json/JSONObject;
    .restart local v3       #failedUrl:Lorg/json/JSONObject;
    goto/16 :goto_1

    .line 435
    .end local v1           #failedLoader:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;
    .end local v3           #failedUrl:Lorg/json/JSONObject;
    .restart local v2       #failedUrl:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 436
    .local v0, e:Ljava/lang/Exception;
    :goto_3
    const-string v7, "Error collecting failed urls"

    invoke-static {v7, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 435
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #failedUrl:Lorg/json/JSONObject;
    .restart local v3       #failedUrl:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3           #failedUrl:Lorg/json/JSONObject;
    .restart local v2       #failedUrl:Lorg/json/JSONObject;
    goto :goto_3
.end method


# virtual methods
.method public clearData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 256
    iget-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_campaigns:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 258
    iput-object v1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_campaigns:Ljava/util/ArrayList;

    .line 261
    :cond_0
    sget-object v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_zoneManager:Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;

    if-eqz v0, :cond_1

    .line 262
    sget-object v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_zoneManager:Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;

    invoke-virtual {v0}, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->clear()V

    .line 263
    sput-object v1, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_zoneManager:Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;

    .line 266
    :cond_1
    iput-object v1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_campaignJson:Lorg/json/JSONObject;

    .line 267
    return-void
.end method

.method public getCampaignById(Ljava/lang/String;)Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;
    .locals 2
    .parameter "campaignId"

    .prologue
    .line 112
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_campaigns:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 113
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 119
    .end local v0           #i:I
    :cond_0
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 114
    .restart local v0       #i:I
    :cond_1
    iget-object v1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-virtual {v1}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-virtual {v1}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    iget-object v1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    goto :goto_1

    .line 113
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getData()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_campaignJson:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getVideoPlan()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_campaignJson:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_campaignJson:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoPlanCampaigns()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_campaigns:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getViewableVideoPlanCampaigns()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    const/4 v2, 0x0

    .line 124
    .local v2, viewableCampaigns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;>;"
    const/4 v0, 0x0

    .line 126
    .local v0, currentCampaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;
    iget-object v3, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_campaigns:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 127
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #viewableCampaigns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .restart local v2       #viewableCampaigns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 135
    .end local v1           #i:I
    :cond_0
    return-object v2

    .line 129
    .restart local v1       #i:I
    :cond_1
    iget-object v3, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #currentCampaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;
    check-cast v0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    .line 130
    .restart local v0       #currentCampaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getCampaignStatus()Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    move-result-object v3

    sget-object v4, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;->VIEWED:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    invoke-virtual {v3, v4}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 131
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public initCampaigns()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 139
    iget-boolean v1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_initInProgress:Z

    if-eqz v1, :cond_0

    .line 159
    :goto_0
    return v9

    .line 143
    :cond_0
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getBaseActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/applifier/impact/android/ApplifierImpactUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->TEST_DATA:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 144
    sget-object v1, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->TEST_DATA:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->campaignDataReceived(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_1
    iput-boolean v9, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_initInProgress:Z

    .line 150
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCampaignQueryUrl()Ljava/lang/String;

    move-result-object v8

    .line 151
    .local v8, url:Ljava/lang/String;
    const-string v1, "\\?"

    invoke-virtual {v8, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 153
    .local v7, parts:[Ljava/lang/String;
    new-instance v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;

    aget-object v2, v7, v6

    aget-object v3, v7, v9

    const-string v4, "GET"

    sget-object v5, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->VideoPlan:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;-><init>(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;I)V

    .line 154
    .local v0, ulc:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 155
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 157
    :cond_2
    invoke-direct {p0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->checkFailedUrls()V

    goto :goto_0
.end method

.method public sendAnalyticsRequest(Ljava/lang/String;Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;)V
    .locals 12
    .parameter "eventType"
    .parameter "campaign"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 231
    if-eqz p2, :cond_2

    .line 232
    const-string v1, "%s"

    new-array v4, v9, [Ljava/lang/Object;

    sget-object v5, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->ANALYTICS_BASE_URL:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, viewUrl:Ljava/lang/String;
    const-string v1, "%s=%s"

    new-array v4, v10, [Ljava/lang/Object;

    const-string v5, "gameId"

    aput-object v5, v4, v6

    sget-object v5, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->IMPACT_GAME_ID:Ljava/lang/String;

    aput-object v5, v4, v9

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, analyticsUrl:Ljava/lang/String;
    const-string v1, "%s&%s=%s"

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v3, v4, v6

    const-string v5, "type"

    aput-object v5, v4, v9

    aput-object p1, v4, v10

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 235
    const-string v1, "%s&%s=%s"

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v3, v4, v6

    const-string v5, "trackingId"

    aput-object v5, v4, v9

    sget-object v5, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->IMPACT_GAMER_ID:Ljava/lang/String;

    aput-object v5, v4, v10

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 236
    const-string v1, "%s&%s=%s"

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v3, v4, v6

    const-string v5, "providerId"

    aput-object v5, v4, v9

    invoke-virtual {p2}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 238
    invoke-static {}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->getZoneManager()Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->getCurrentZone()Lcom/applifier/impact/android/zone/ApplifierImpactZone;

    move-result-object v7

    .line 239
    .local v7, currentZone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    const-string v1, "%s&%s=%s"

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v3, v4, v6

    const-string v5, "zone"

    aput-object v5, v4, v9

    invoke-virtual {v7}, Lcom/applifier/impact/android/zone/ApplifierImpactZone;->getZoneId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 241
    invoke-virtual {v7}, Lcom/applifier/impact/android/zone/ApplifierImpactZone;->isIncentivized()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v7

    .line 242
    check-cast v1, Lcom/applifier/impact/android/zone/ApplifierImpactIncentivizedZone;

    invoke-virtual {v1}, Lcom/applifier/impact/android/zone/ApplifierImpactIncentivizedZone;->itemManager()Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;

    move-result-object v8

    .line 243
    .local v8, itemManager:Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;
    const-string v1, "%s&%s=%s"

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v3, v4, v6

    const-string v5, "rewardItem"

    aput-object v5, v4, v9

    invoke-virtual {v8}, Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;->getCurrentItem()Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;->getKey()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 246
    .end local v8           #itemManager:Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;
    :cond_0
    invoke-virtual {v7}, Lcom/applifier/impact/android/zone/ApplifierImpactZone;->getGamerSid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 247
    const-string v1, "%s&%s=%s"

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v3, v4, v6

    const-string v5, "sid"

    aput-object v5, v4, v9

    invoke-virtual {v7}, Lcom/applifier/impact/android/zone/ApplifierImpactZone;->getGamerSid()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 249
    :cond_1
    new-instance v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;

    const-string v4, "GET"

    sget-object v5, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->Analytics:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;-><init>(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;I)V

    .line 250
    .local v0, ulc:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 251
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 253
    .end local v0           #ulc:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;
    .end local v2           #viewUrl:Ljava/lang/String;
    .end local v3           #analyticsUrl:Ljava/lang/String;
    .end local v7           #currentZone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    :cond_2
    return-void
.end method

.method public sendCampaignViewProgress(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;)Z
    .locals 15
    .parameter "campaign"
    .parameter "position"

    .prologue
    .line 163
    const/4 v11, 0x0

    .line 164
    .local v11, progressSent:Z
    if-nez p1, :cond_0

    move v12, v11

    .line 227
    .end local v11           #progressSent:Z
    .local v12, progressSent:I
    :goto_0
    return v12

    .line 166
    .end local v12           #progressSent:I
    .restart local v11       #progressSent:Z
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "VP: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->IMPACT_GAMER_ID:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    if-eqz p2, :cond_7

    sget-object v1, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->IMPACT_GAMER_ID:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 169
    const-string v1, "%s%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->IMPACT_BASE_URL:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "gamers/"

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, viewUrl:Ljava/lang/String;
    const-string v1, "%s%s/video/%s/%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->IMPACT_GAMER_ID:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual/range {p2 .. p2}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual/range {p1 .. p1}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 171
    const-string v1, "%s/%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->IMPACT_GAME_ID:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-static {}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->getZoneManager()Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->getCurrentZone()Lcom/applifier/impact/android/zone/ApplifierImpactZone;

    move-result-object v8

    .line 174
    .local v8, currentZone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    const-string v1, "%s=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "zone"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v8}, Lcom/applifier/impact/android/zone/ApplifierImpactZone;->getZoneId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, queryParams:Ljava/lang/String;
    :try_start_0
    const-string v1, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "deviceId"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->getAndroidId(Z)Ljava/lang/String;

    move-result-object v6

    const-string v14, "UTF-8"

    invoke-static {v6, v14}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 179
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->getAndroidId(Z)Ljava/lang/String;

    move-result-object v1

    const-string v4, "unknown"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 180
    const-string v1, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "androidId"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->getAndroidId(Z)Ljava/lang/String;

    move-result-object v6

    const-string v14, "UTF-8"

    invoke-static {v6, v14}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 181
    const-string v1, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "rawAndroidId"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->getAndroidId(Z)Ljava/lang/String;

    move-result-object v6

    const-string v14, "UTF-8"

    invoke-static {v6, v14}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 184
    :cond_1
    invoke-static {}, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    const-string v4, "unknown"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 185
    const-string v1, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "macAddress"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {}, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->getMacAddress()Ljava/lang/String;

    move-result-object v6

    const-string v14, "UTF-8"

    invoke-static {v6, v14}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 187
    :cond_2
    sget-object v1, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->ADVERTISING_TRACKING_INFO:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 188
    const-string v4, "%s&%s=%d"

    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v3, v5, v1

    const/4 v1, 0x1

    const-string v6, "trackingEnabled"

    aput-object v6, v5, v1

    const/4 v6, 0x2

    invoke-static {}, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->isLimitAdTrackingEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 189
    invoke-static {}, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->getAdvertisingTrackingId()Ljava/lang/String;

    move-result-object v13

    .line 190
    .local v13, rawAdvertisingTrackingId:Ljava/lang/String;
    if-eqz v13, :cond_3

    .line 191
    invoke-static {v13}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 192
    .local v7, advertisingTrackingId:Ljava/lang/String;
    const-string v1, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "advertisingTrackingId"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "UTF-8"

    invoke-static {v7, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 193
    const-string v1, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "rawAdvertisingTrackingId"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "UTF-8"

    invoke-static {v13, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 197
    .end local v7           #advertisingTrackingId:Ljava/lang/String;
    .end local v13           #rawAdvertisingTrackingId:Ljava/lang/String;
    :cond_3
    const-string v1, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "platform"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "android"

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 198
    const-string v1, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "gameId"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->IMPACT_GAME_ID:Ljava/lang/String;

    const-string v14, "UTF-8"

    invoke-static {v6, v14}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 199
    const-string v1, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "sdkVersion"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "1100"

    const-string v14, "UTF-8"

    invoke-static {v6, v14}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 200
    const-string v1, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "softwareVersion"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {}, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v6

    const-string v14, "UTF-8"

    invoke-static {v6, v14}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 201
    const-string v1, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "hardwareVersion"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {}, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->getHardwareVersion()Ljava/lang/String;

    move-result-object v6

    const-string v14, "UTF-8"

    invoke-static {v6, v14}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 202
    const-string v1, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "deviceType"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {}, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->getDeviceType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 203
    const-string v1, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "connectionType"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {}, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->getConnectionType()Ljava/lang/String;

    move-result-object v6

    const-string v14, "UTF-8"

    invoke-static {v6, v14}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 204
    const-string v1, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "screenSize"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {}, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->getScreenSize()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 205
    const-string v1, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "screenDensity"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {}, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->getScreenDensity()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 211
    :goto_2
    invoke-virtual {v8}, Lcom/applifier/impact/android/zone/ApplifierImpactZone;->isIncentivized()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v8

    .line 212
    check-cast v1, Lcom/applifier/impact/android/zone/ApplifierImpactIncentivizedZone;

    invoke-virtual {v1}, Lcom/applifier/impact/android/zone/ApplifierImpactIncentivizedZone;->itemManager()Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;

    move-result-object v10

    .line 213
    .local v10, itemManager:Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;
    const-string v1, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "rewardItem"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v10}, Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;->getCurrentItem()Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;->getKey()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 216
    .end local v10           #itemManager:Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;
    :cond_4
    invoke-virtual {v8}, Lcom/applifier/impact/android/zone/ApplifierImpactZone;->getGamerSid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 217
    const-string v1, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "sid"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v8}, Lcom/applifier/impact/android/zone/ApplifierImpactZone;->getGamerSid()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 220
    :cond_5
    new-instance v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;

    const-string v4, "POST"

    sget-object v5, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->VideoViewed:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;-><init>(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;I)V

    .line 221
    .local v0, ulc:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 222
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 224
    :cond_6
    const/4 v11, 0x1

    .end local v0           #ulc:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;
    .end local v2           #viewUrl:Ljava/lang/String;
    .end local v3           #queryParams:Ljava/lang/String;
    .end local v8           #currentZone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    :cond_7
    move v12, v11

    .line 227
    .restart local v12       #progressSent:I
    goto/16 :goto_0

    .line 188
    .end local v12           #progressSent:I
    .restart local v2       #viewUrl:Ljava/lang/String;
    .restart local v3       #queryParams:Ljava/lang/String;
    .restart local v8       #currentZone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    :cond_8
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 207
    :catch_0
    move-exception v9

    .line 208
    .local v9, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Problems creating campaigns query: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v4, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;

    invoke-static {v1, v4}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_2
.end method

.method public setWebDataListener(Lcom/applifier/impact/android/webapp/IApplifierImpactWebDataListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_listener:Lcom/applifier/impact/android/webapp/IApplifierImpactWebDataListener;

    .line 105
    return-void
.end method

.method public stopAllRequests()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 270
    iget-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_urlLoaders:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_urlLoaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 272
    iput-object v2, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_urlLoaders:Ljava/util/ArrayList;

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_failedUrlLoaders:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_failedUrlLoaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 277
    iput-object v2, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_failedUrlLoaders:Ljava/util/ArrayList;

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_currentLoader:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;

    if-eqz v0, :cond_2

    .line 281
    iget-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_currentLoader:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->cancel(Z)Z

    .line 282
    iput-object v2, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_currentLoader:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;

    .line 284
    :cond_2
    return-void
.end method
