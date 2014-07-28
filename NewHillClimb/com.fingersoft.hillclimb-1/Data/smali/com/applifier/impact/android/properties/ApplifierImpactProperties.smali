.class public Lcom/applifier/impact/android/properties/ApplifierImpactProperties;
.super Ljava/lang/Object;
.source "ApplifierImpactProperties.java"


# static fields
.field public static ANALYTICS_BASE_URL:Ljava/lang/String; = null

.field public static BASE_ACTIVITY:Ljava/lang/ref/WeakReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public static CAMPAIGN_DATA_URL:Ljava/lang/String; = null

.field public static CAMPAIGN_QUERY_STRING:Ljava/lang/String; = null

.field public static CAMPAIGN_REFRESH_SECONDS:I = 0x0

.field public static CAMPAIGN_REFRESH_VIEWS_COUNT:I = 0x0

.field public static CAMPAIGN_REFRESH_VIEWS_MAX:I = 0x0

.field public static CURRENT_ACTIVITY:Ljava/lang/ref/WeakReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public static IMPACT_BASE_URL:Ljava/lang/String; = null

.field public static IMPACT_DEBUG_MODE:Ljava/lang/Boolean; = null

.field public static IMPACT_GAMER_ID:Ljava/lang/String; = null

.field public static IMPACT_GAME_ID:Ljava/lang/String; = null

.field public static final MAX_BUFFERING_WAIT_SECONDS:I = 0x14

.field public static final MAX_NUMBER_OF_ANALYTICS_RETRIES:I = 0x5

.field public static RUN_WEBVIEW_TESTS:Ljava/lang/Boolean;

.field public static SELECTED_CAMPAIGN:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

.field public static TESTMODE_ENABLED:Ljava/lang/Boolean;

.field public static TEST_DATA:Ljava/lang/String;

.field public static TEST_DEVELOPER_ID:Ljava/lang/String;

.field private static TEST_EXTRA_PARAMS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static TEST_JAVASCRIPT:Ljava/lang/String;

.field public static TEST_OPTIONS_ID:Ljava/lang/String;

.field public static TEST_URL:Ljava/lang/String;

.field public static WEBVIEW_BASE_URL:Ljava/lang/String;

.field private static _campaignQueryString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 15
    const-string v0, "https://impact.applifier.com/mobile/campaigns"

    sput-object v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CAMPAIGN_DATA_URL:Ljava/lang/String;

    .line 17
    sput-object v1, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->WEBVIEW_BASE_URL:Ljava/lang/String;

    .line 18
    sput-object v1, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->ANALYTICS_BASE_URL:Ljava/lang/String;

    .line 19
    sput-object v1, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->IMPACT_BASE_URL:Ljava/lang/String;

    .line 20
    sput-object v1, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CAMPAIGN_QUERY_STRING:Ljava/lang/String;

    .line 21
    sput-object v1, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->IMPACT_GAME_ID:Ljava/lang/String;

    .line 22
    sput-object v1, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->IMPACT_GAMER_ID:Ljava/lang/String;

    .line 23
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->TESTMODE_ENABLED:Ljava/lang/Boolean;

    .line 24
    sput-object v1, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->BASE_ACTIVITY:Ljava/lang/ref/WeakReference;

    .line 25
    sput-object v1, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Ljava/lang/ref/WeakReference;

    .line 26
    sput-object v1, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    .line 27
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->IMPACT_DEBUG_MODE:Ljava/lang/Boolean;

    .line 28
    sput v2, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CAMPAIGN_REFRESH_VIEWS_COUNT:I

    .line 29
    sput v2, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CAMPAIGN_REFRESH_VIEWS_MAX:I

    .line 30
    sput v2, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CAMPAIGN_REFRESH_SECONDS:I

    .line 32
    sput-object v1, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->TEST_DATA:Ljava/lang/String;

    .line 33
    sput-object v1, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->TEST_URL:Ljava/lang/String;

    .line 34
    sput-object v1, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->TEST_JAVASCRIPT:Ljava/lang/String;

    .line 35
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->RUN_WEBVIEW_TESTS:Ljava/lang/Boolean;

    .line 37
    sput-object v1, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->TEST_DEVELOPER_ID:Ljava/lang/String;

    .line 38
    sput-object v1, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->TEST_OPTIONS_ID:Ljava/lang/String;

    .line 41
    sput-object v1, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->TEST_EXTRA_PARAMS:Ljava/util/Map;

    .line 46
    sput-object v1, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->_campaignQueryString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createCampaignQueryString()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 49
    const-string v2, "?"

    .line 53
    .local v2, queryString:Ljava/lang/String;
    :try_start_0
    const-string v4, "%s%s=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    const-string v9, "deviceId"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-static {v9}, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->getAndroidId(Z)Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 55
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->getAndroidId(Z)Ljava/lang/String;

    move-result-object v4

    const-string v7, "unknown"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 56
    const-string v4, "%s&%s=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    const-string v9, "androidId"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-static {v9}, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->getAndroidId(Z)Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 57
    const-string v4, "%s&%s=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    const-string v9, "rawAndroidId"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v9}, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->getAndroidId(Z)Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 60
    :cond_0
    invoke-static {}, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    const-string v7, "unknown"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 61
    const-string v4, "%s&%s=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    const-string v9, "macAddress"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {}, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->getMacAddress()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 63
    :cond_1
    sget-object v4, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->ADVERTISING_TRACKING_INFO:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 64
    const-string v7, "%s&%s=%d"

    const/4 v4, 0x3

    new-array v8, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v8, v4

    const/4 v4, 0x1

    const-string v9, "trackingEnabled"

    aput-object v9, v8, v4

    const/4 v9, 0x2

    invoke-static {}, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->isLimitAdTrackingEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-static {}, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->getAdvertisingTrackingId()Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, rawAdvertisingTrackingId:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 67
    invoke-static {v3}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, advertisingTrackingId:Ljava/lang/String;
    const-string v4, "%s&%s=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    const-string v9, "advertisingTrackingId"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "UTF-8"

    invoke-static {v0, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 69
    const-string v4, "%s&%s=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    const-string v9, "rawAdvertisingTrackingId"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "UTF-8"

    invoke-static {v3, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 73
    .end local v0           #advertisingTrackingId:Ljava/lang/String;
    .end local v3           #rawAdvertisingTrackingId:Ljava/lang/String;
    :cond_2
    const-string v4, "%s&%s=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    const-string v9, "platform"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "android"

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 74
    const-string v4, "%s&%s=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    const-string v9, "gameId"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->IMPACT_GAME_ID:Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 75
    const-string v4, "%s&%s=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    const-string v9, "sdkVersion"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "1100"

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 76
    const-string v4, "%s&%s=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    const-string v9, "softwareVersion"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {}, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 77
    const-string v4, "%s&%s=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    const-string v9, "hardwareVersion"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {}, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->getHardwareVersion()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 78
    const-string v4, "%s&%s=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    const-string v9, "deviceType"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {}, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->getDeviceType()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 79
    const-string v4, "%s&%s=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    const-string v9, "connectionType"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {}, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->getConnectionType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 80
    const-string v4, "%s&%s=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    const-string v9, "screenSize"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {}, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->getScreenSize()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 81
    const-string v4, "%s&%s=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    const-string v9, "screenDensity"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {}, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->getScreenDensity()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 87
    :goto_1
    sget-object v4, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->TESTMODE_ENABLED:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 88
    const-string v4, "%s&%s=%s"

    new-array v7, v12, [Ljava/lang/Object;

    aput-object v2, v7, v5

    const-string v8, "test"

    aput-object v8, v7, v6

    const-string v8, "true"

    aput-object v8, v7, v11

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 90
    sget-object v4, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->TEST_OPTIONS_ID:Ljava/lang/String;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->TEST_OPTIONS_ID:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 91
    const-string v4, "%s&%s=%s"

    new-array v7, v12, [Ljava/lang/Object;

    aput-object v2, v7, v5

    const-string v8, "optionsId"

    aput-object v8, v7, v6

    sget-object v8, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->TEST_OPTIONS_ID:Ljava/lang/String;

    aput-object v8, v7, v11

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 94
    :cond_3
    sget-object v4, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->TEST_DEVELOPER_ID:Ljava/lang/String;

    if-eqz v4, :cond_4

    sget-object v4, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->TEST_DEVELOPER_ID:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 95
    const-string v4, "%s&%s=%s"

    new-array v7, v12, [Ljava/lang/Object;

    aput-object v2, v7, v5

    const-string v5, "developerId"

    aput-object v5, v7, v6

    sget-object v5, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->TEST_DEVELOPER_ID:Ljava/lang/String;

    aput-object v5, v7, v11

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 104
    :cond_4
    :goto_2
    sput-object v2, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->_campaignQueryString:Ljava/lang/String;

    .line 105
    return-void

    :cond_5
    move v4, v6

    .line 64
    goto/16 :goto_0

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Problems creating campaigns query: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v7, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;

    invoke-static {v4, v7}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_1

    .line 99
    .end local v1           #e:Ljava/lang/Exception;
    :cond_6
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 100
    const-string v7, "%s&%s=%s"

    new-array v8, v12, [Ljava/lang/Object;

    aput-object v2, v8, v5

    const-string v4, "encrypted"

    aput-object v4, v8, v6

    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/applifier/impact/android/ApplifierImpactUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "false"

    :goto_3
    aput-object v4, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_7
    const-string v4, "true"

    goto :goto_3
.end method

.method public static getBaseActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->BASE_ACTIVITY:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->BASE_ACTIVITY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 121
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCampaignQueryUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 108
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->createCampaignQueryString()V

    .line 109
    sget-object v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CAMPAIGN_DATA_URL:Ljava/lang/String;

    .line 111
    .local v0, url:Ljava/lang/String;
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getBaseActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/applifier/impact/android/ApplifierImpactUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->TEST_URL:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 112
    sget-object v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->TEST_URL:Ljava/lang/String;

    .line 114
    :cond_0
    const-string v1, "%s%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->_campaignQueryString:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 126
    sget-object v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 132
    :goto_0
    return-object v0

    .line 129
    :cond_0
    sget-object v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->BASE_ACTIVITY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    .line 132
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setExtraParams(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "testData"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const-string v0, "testData"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->TEST_DATA:Ljava/lang/String;

    .line 140
    :cond_0
    const-string v0, "testUrl"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    const-string v0, "testUrl"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->TEST_URL:Ljava/lang/String;

    .line 144
    :cond_1
    const-string v0, "testJavaScript"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    const-string v0, "testJavaScript"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->TEST_JAVASCRIPT:Ljava/lang/String;

    .line 147
    :cond_2
    return-void
.end method
