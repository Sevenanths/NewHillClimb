.class public Lcom/fingersoft/fsadsdk/advertising/AdManager;
.super Landroid/widget/RelativeLayout;
.source "AdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fingersoft/fsadsdk/advertising/AdManager$ProviderLoader;
    }
.end annotation


# static fields
.field static DEFAULT_AD_PRIORITY:Ljava/lang/String; = null

.field static final PREFS_NAME:Ljava/lang/String; = "ADMANAGER_SETTINGS"

.field public static final TAG:Ljava/lang/String; = "fsad-sdk"

.field private static mMarketVariation:I

.field private static sdkVersion:Ljava/lang/String;


# instance fields
.field final ACTION_SLEEP_30SEC:I

.field final ACTION_VIEW_NEXT_AD:I

.field final REFRESH_LIMIT:J

.field private TEST_MODE:Z

.field private advertisementStorageUrl:Ljava/lang/String;

.field private analyticsId:Ljava/lang/String;

.field private analyticsProvider:I

.field private baseAddress:Ljava/lang/String;

.field private container:Lcom/fingersoft/fsadsdk/advertising/json/IResultContainer;

.field mActivity:Landroid/app/Activity;

.field mAdProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;",
            ">;"
        }
    .end annotation
.end field

.field mAdViewStarted:Z

.field private mAdditionalRequestParams:Ljava/lang/String;

.field private mAdsEnabled:Z

.field mAppRatingDialog:Lcom/fingersoft/fsadsdk/advertising/AppRatingDialog;

.field mAppReleaseCheck:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

.field mAppReleaseTimeoutDisabled:Z

.field mCurrentAdInterstitialIdx:I

.field mCurrentAdProviderIdx:I

.field mCurrentProvider:Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;

.field mCurrentVersionCode:I

.field final mHandler:Landroid/os/Handler;

.field mInterstitialProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialProvider;",
            ">;"
        }
    .end annotation
.end field

.field mLinkListener:Lcom/fingersoft/fsadsdk/advertising/LinkListener;

.field final mOnViewNextAdvertiser:Ljava/lang/Runnable;

.field private mPaused:Z

.field mProviderLoader:Lcom/fingersoft/fsadsdk/advertising/AdManager$ProviderLoader;

.field mReceivedPriorities:Z

.field final mStartAdView:Ljava/lang/Runnable;

.field mStartupCount:I

.field mStartupCountWithCurrentVersion:I

.field private mTracker:Lcom/fingersoft/fsadsdk/advertising/analytics/IAnalyticsProvider;

.field volatile mWaitingThread:Ljava/lang/Thread;

.field private promotionStorageUrl:Ljava/lang/String;

.field private reorderByServer:Z

.field private testAdProviderList:Ljava/lang/String;

.field private trackingStrategy:Lcom/fingersoft/fsadsdk/advertising/analytics/ITrackingStrategy;

.field private useAutomaticAskRating:Z

.field private useBase64Images:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "1.0"

    sput-object v0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->sdkVersion:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    sput v0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mMarketVariation:I

    .line 64
    const-string v0, "madvertise=NOT_SET,mobfox=NOT_SET,admob=NOT_SET"

    sput-object v0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->DEFAULT_AD_PRIORITY:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/fingersoft/fsadsdk/advertising/LinkListener;)V
    .locals 5
    .parameter "activity"
    .parameter "linkListener"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 113
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mAdProviders:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mInterstitialProviders:Ljava/util/List;

    .line 50
    iput-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mActivity:Landroid/app/Activity;

    .line 54
    iput-boolean v4, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mPaused:Z

    .line 55
    iput-boolean v2, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mAdsEnabled:Z

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mHandler:Landroid/os/Handler;

    .line 58
    new-instance v0, Lcom/fingersoft/fsadsdk/advertising/AdManager$1;

    invoke-direct {v0, p0}, Lcom/fingersoft/fsadsdk/advertising/AdManager$1;-><init>(Lcom/fingersoft/fsadsdk/advertising/AdManager;)V

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mOnViewNextAdvertiser:Ljava/lang/Runnable;

    .line 59
    new-instance v0, Lcom/fingersoft/fsadsdk/advertising/AdManager$2;

    invoke-direct {v0, p0}, Lcom/fingersoft/fsadsdk/advertising/AdManager$2;-><init>(Lcom/fingersoft/fsadsdk/advertising/AdManager;)V

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mStartAdView:Ljava/lang/Runnable;

    .line 61
    iput-boolean v2, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->TEST_MODE:Z

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->analyticsId:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->testAdProviderList:Ljava/lang/String;

    .line 70
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->REFRESH_LIMIT:J

    .line 72
    iput v2, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mCurrentAdProviderIdx:I

    .line 73
    iput v2, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mCurrentAdInterstitialIdx:I

    .line 74
    iput-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mCurrentProvider:Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;

    .line 75
    iput-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mLinkListener:Lcom/fingersoft/fsadsdk/advertising/LinkListener;

    .line 77
    iput v4, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->analyticsProvider:I

    .line 78
    iput-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mTracker:Lcom/fingersoft/fsadsdk/advertising/analytics/IAnalyticsProvider;

    .line 80
    iput v2, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->ACTION_SLEEP_30SEC:I

    .line 81
    iput v4, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->ACTION_VIEW_NEXT_AD:I

    .line 83
    iput-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mWaitingThread:Ljava/lang/Thread;

    .line 84
    new-instance v0, Lcom/fingersoft/fsadsdk/advertising/AdManager$ProviderLoader;

    invoke-direct {v0, p0, v3}, Lcom/fingersoft/fsadsdk/advertising/AdManager$ProviderLoader;-><init>(Lcom/fingersoft/fsadsdk/advertising/AdManager;Lcom/fingersoft/fsadsdk/advertising/AdManager$ProviderLoader;)V

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mProviderLoader:Lcom/fingersoft/fsadsdk/advertising/AdManager$ProviderLoader;

    .line 86
    iput-boolean v2, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mReceivedPriorities:Z

    .line 87
    iput-boolean v2, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mAdViewStarted:Z

    .line 88
    iput-boolean v2, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mAppReleaseTimeoutDisabled:Z

    .line 90
    iput-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mAppReleaseCheck:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    .line 92
    iput-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mAppRatingDialog:Lcom/fingersoft/fsadsdk/advertising/AppRatingDialog;

    .line 94
    const-string v0, "http://ads2.fingersoft.net:3000"

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->baseAddress:Ljava/lang/String;

    .line 95
    const-string v0, "http://fseuwedevad1.blob.core.windows.net/images/"

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->promotionStorageUrl:Ljava/lang/String;

    .line 96
    const-string v0, "http://fseuwedevad1.blob.core.windows.net/images/"

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->advertisementStorageUrl:Ljava/lang/String;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mAdditionalRequestParams:Ljava/lang/String;

    .line 99
    iput-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->container:Lcom/fingersoft/fsadsdk/advertising/json/IResultContainer;

    .line 100
    iput-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackingStrategy:Lcom/fingersoft/fsadsdk/advertising/analytics/ITrackingStrategy;

    .line 102
    iput v2, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mStartupCount:I

    .line 103
    iput v2, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mStartupCountWithCurrentVersion:I

    .line 104
    iput v2, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mCurrentVersionCode:I

    .line 106
    iput-boolean v2, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->useBase64Images:Z

    .line 108
    iput-boolean v2, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->reorderByServer:Z

    .line 109
    iput-boolean v4, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->useAutomaticAskRating:Z

    .line 114
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mActivity:Landroid/app/Activity;

    .line 115
    iput-object p2, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mLinkListener:Lcom/fingersoft/fsadsdk/advertising/LinkListener;

    .line 116
    return-void
.end method

.method static synthetic access$0(Lcom/fingersoft/fsadsdk/advertising/AdManager;)V
    .locals 0
    .parameter

    .prologue
    .line 802
    invoke-direct {p0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->viewNextAdExecute()V

    return-void
.end method

.method static synthetic access$1(Lcom/fingersoft/fsadsdk/advertising/AdManager;)V
    .locals 0
    .parameter

    .prologue
    .line 433
    invoke-direct {p0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->startAdViewInternal()V

    return-void
.end method

.method static synthetic access$2(Lcom/fingersoft/fsadsdk/advertising/AdManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mPaused:Z

    return v0
.end method

.method private getJsonFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .parameter "packageName"
    .parameter "locale"
    .parameter "version"
    .parameter "platform"

    .prologue
    .line 554
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->baseAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mStartupCount:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mStartupCountWithCurrentVersion:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mAdditionalRequestParams:Ljava/lang/String;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v8}, Lcom/fingersoft/fsadsdk/advertising/utils/ApiHelper;->getStartUpRequestUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 555
    .local v15, uri:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Starting request = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 557
    const-string v13, ""

    .line 560
    .local v13, priorities:Ljava/lang/String;
    :try_start_0
    new-instance v16, Ljava/net/URI;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 561
    .local v16, url:Ljava/net/URI;
    new-instance v9, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v9}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 562
    .local v9, defaultClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v11, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 563
    .local v11, httpGetRequest:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v9, v11}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 564
    .local v12, httpResponse:Lorg/apache/http/HttpResponse;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Response code is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 565
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    .line 567
    new-instance v1, Lcom/fingersoft/fsadsdk/advertising/json/EmptyJsonResultContainer;

    invoke-direct {v1}, Lcom/fingersoft/fsadsdk/advertising/json/EmptyJsonResultContainer;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->container:Lcom/fingersoft/fsadsdk/advertising/json/IResultContainer;

    .line 568
    const/4 v1, 0x0

    .line 584
    .end local v9           #defaultClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v11           #httpGetRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v12           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v16           #url:Ljava/net/URI;
    :goto_0
    return-object v1

    .line 570
    .restart local v9       #defaultClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v11       #httpGetRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v12       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v16       #url:Ljava/net/URI;
    :cond_0
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v14, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 571
    .local v14, reader:Ljava/io/BufferedReader;
    new-instance v1, Lcom/fingersoft/fsadsdk/advertising/json/JsonResponseHandler;

    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fingersoft/fsadsdk/advertising/json/JsonResponseHandler;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/fingersoft/fsadsdk/advertising/json/JsonResponseHandler;->getResultContainer()Lcom/fingersoft/fsadsdk/advertising/json/IResultContainer;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->container:Lcom/fingersoft/fsadsdk/advertising/json/IResultContainer;

    .line 573
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->container:Lcom/fingersoft/fsadsdk/advertising/json/IResultContainer;

    invoke-interface {v1}, Lcom/fingersoft/fsadsdk/advertising/json/IResultContainer;->getSettings()Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection;

    move-result-object v1

    const-string v2, "promos.use_base64_images"

    invoke-virtual {v1, v2}, Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection;->settingExistsWithName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 574
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->container:Lcom/fingersoft/fsadsdk/advertising/json/IResultContainer;

    invoke-interface {v1}, Lcom/fingersoft/fsadsdk/advertising/json/IResultContainer;->getSettings()Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection;

    move-result-object v1

    const-string v2, "promos.use_base64_images"

    invoke-virtual {v1, v2}, Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection;->getSettingByName(Ljava/lang/String;)Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection$Setting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection$Setting;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->useBase64Images:Z

    .line 576
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->container:Lcom/fingersoft/fsadsdk/advertising/json/IResultContainer;

    invoke-interface {v1}, Lcom/fingersoft/fsadsdk/advertising/json/IResultContainer;->getApplicationInfo()Lcom/fingersoft/fsadsdk/advertising/json/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fingersoft/fsadsdk/advertising/json/ApplicationInfo;->getPriorityList()Ljava/lang/String;

    move-result-object v13

    .line 577
    invoke-direct/range {p0 .. p0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->saveSettingsFromContainer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v13

    .line 584
    goto :goto_0

    .line 574
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 579
    .end local v9           #defaultClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v11           #httpGetRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v12           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v14           #reader:Ljava/io/BufferedReader;
    .end local v16           #url:Ljava/net/URI;
    :catch_0
    move-exception v10

    .line 581
    .local v10, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 582
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getPrefValueInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 639
    :try_start_0
    const-string v0, "ADMANAGER_SETTINGS"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 643
    .end local p2
    :goto_0
    return p2

    .line 641
    .restart local p2
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getPrefValueString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 665
    :try_start_0
    const-string v1, "ADMANAGER_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 669
    .end local p2
    :goto_0
    return-object p2

    .line 667
    .restart local p2
    :catch_0
    move-exception v0

    .line 669
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method private getPrioritiesFromOldServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "packageName"
    .parameter "locale"
    .parameter "version"
    .parameter "platform"

    .prologue
    .line 603
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "http://ads.fingersoft.net/mobile/providerpriority?clientid="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&locale="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&version="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&platform="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 604
    .local v8, serverUrl:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "url called: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 605
    const-string v6, ""

    .line 608
    .local v6, priorities:Ljava/lang/String;
    :try_start_0
    new-instance v9, Ljava/net/URI;

    invoke-direct {v9, v8}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 609
    .local v9, url:Ljava/net/URI;
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 610
    .local v1, defaultClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v9}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 612
    .local v3, httpGetRequest:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v1, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 613
    .local v4, httpResponse:Lorg/apache/http/HttpResponse;
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    const-string v12, "UTF-8"

    invoke-direct {v10, v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v7, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 614
    .local v7, reader:Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 615
    .local v5, line:Ljava/lang/String;
    :goto_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 627
    .end local v1           #defaultClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v3           #httpGetRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v5           #line:Ljava/lang/String;
    .end local v7           #reader:Ljava/io/BufferedReader;
    .end local v9           #url:Ljava/net/URI;
    :goto_1
    return-object v6

    .line 617
    .restart local v1       #defaultClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v3       #httpGetRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v4       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v5       #line:Ljava/lang/String;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    .restart local v9       #url:Ljava/net/URI;
    :cond_0
    const-string v10, "="

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 618
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "="

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 620
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 623
    .end local v1           #defaultClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v3           #httpGetRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v5           #line:Ljava/lang/String;
    .end local v7           #reader:Ljava/io/BufferedReader;
    .end local v9           #url:Ljava/net/URI;
    :catch_0
    move-exception v2

    .line 625
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private increaseStartupCounter()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 841
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mActivity:Landroid/app/Activity;

    const-string v2, "startup_counter"

    invoke-static {v1, v2, v4}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getPrefValueInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mStartupCount:I

    .line 842
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mActivity:Landroid/app/Activity;

    const-string v2, "startup_counter"

    iget v3, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mStartupCount:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->setPrefValueInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 844
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mActivity:Landroid/app/Activity;

    const-string v2, "last_versioncode"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getPrefValueInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 846
    .local v0, savedVersionCode:I
    iget v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mCurrentVersionCode:I

    if-eq v0, v1, :cond_0

    .line 849
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mActivity:Landroid/app/Activity;

    const-string v2, "last_versioncode"

    iget v3, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mCurrentVersionCode:I

    invoke-static {v1, v2, v3}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->setPrefValueInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 850
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mActivity:Landroid/app/Activity;

    const-string v2, "startup_counter_currentversion"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->setPrefValueInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 851
    iput v4, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mStartupCountWithCurrentVersion:I

    .line 858
    :goto_0
    return-void

    .line 855
    :cond_0
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mActivity:Landroid/app/Activity;

    const-string v2, "startup_counter_currentversion"

    invoke-static {v1, v2, v4}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getPrefValueInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mStartupCountWithCurrentVersion:I

    .line 856
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mActivity:Landroid/app/Activity;

    const-string v2, "startup_counter_currentversion"

    iget v3, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mStartupCountWithCurrentVersion:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->setPrefValueInt(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private saveSettingsFromContainer()V
    .locals 6

    .prologue
    .line 589
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->container:Lcom/fingersoft/fsadsdk/advertising/json/IResultContainer;

    if-eqz v2, :cond_0

    .line 591
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->container:Lcom/fingersoft/fsadsdk/advertising/json/IResultContainer;

    invoke-interface {v2}, Lcom/fingersoft/fsadsdk/advertising/json/IResultContainer;->getSettings()Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection;->getSettings()Ljava/util/List;

    move-result-object v1

    .line 593
    .local v1, settings:Ljava/util/List;,"Ljava/util/List<Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection$Setting;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 598
    .end local v1           #settings:Ljava/util/List;,"Ljava/util/List<Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection$Setting;>;"
    :cond_0
    return-void

    .line 593
    .restart local v1       #settings:Ljava/util/List;,"Ljava/util/List<Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection$Setting;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection$Setting;

    .line 595
    .local v0, setting:Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection$Setting;
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection$Setting;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/json/SettingCollection$Setting;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/fingersoft/fsadsdk/advertising/ApplicationSettings;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setPrefValueInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 650
    :try_start_0
    const-string v2, "ADMANAGER_SETTINGS"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 651
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 652
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 653
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #settings:Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 655
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static setPrefValueString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 677
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ADMANAGER_SETTINGS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 678
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 679
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 680
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #settings:Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 682
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private startAdViewInternal()V
    .locals 1

    .prologue
    .line 435
    monitor-enter p0

    .line 437
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mAdViewStarted:Z

    .line 438
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mAdProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mCurrentAdProviderIdx:I

    .line 439
    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->viewNextAd()V

    .line 435
    monitor-exit p0

    .line 441
    return-void

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private startAnalyticsSession()V
    .locals 4

    .prologue
    .line 330
    :try_start_0
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mTracker:Lcom/fingersoft/fsadsdk/advertising/analytics/IAnalyticsProvider;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->analyticsId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    iget v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->analyticsProvider:I

    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackingStrategy:Lcom/fingersoft/fsadsdk/advertising/analytics/ITrackingStrategy;

    invoke-static {v1, v2}, Lcom/fingersoft/fsadsdk/advertising/analytics/AnalyticsProviderFactory;->create(ILcom/fingersoft/fsadsdk/advertising/analytics/ITrackingStrategy;)Lcom/fingersoft/fsadsdk/advertising/analytics/IAnalyticsProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mTracker:Lcom/fingersoft/fsadsdk/advertising/analytics/IAnalyticsProvider;

    .line 333
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mTracker:Lcom/fingersoft/fsadsdk/advertising/analytics/IAnalyticsProvider;

    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->analyticsId:Ljava/lang/String;

    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mActivity:Landroid/app/Activity;

    invoke-interface {v1, v2, v3}, Lcom/fingersoft/fsadsdk/advertising/analytics/IAnalyticsProvider;->startTracking(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 336
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mTracker:Lcom/fingersoft/fsadsdk/advertising/analytics/IAnalyticsProvider;

    goto :goto_0
.end method

.method private stopAnalyticsSession()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 358
    :try_start_0
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mTracker:Lcom/fingersoft/fsadsdk/advertising/analytics/IAnalyticsProvider;

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mTracker:Lcom/fingersoft/fsadsdk/advertising/analytics/IAnalyticsProvider;

    invoke-interface {v1}, Lcom/fingersoft/fsadsdk/advertising/analytics/IAnalyticsProvider;->stopTracking()V

    .line 361
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mTracker:Lcom/fingersoft/fsadsdk/advertising/analytics/IAnalyticsProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 364
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    iput-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mTracker:Lcom/fingersoft/fsadsdk/advertising/analytics/IAnalyticsProvider;

    goto :goto_0
.end method

.method private viewNextAdExecute()V
    .locals 2

    .prologue
    .line 804
    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->removeAllViews()V

    .line 806
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mCurrentProvider:Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mCurrentProvider:Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;->adProviderClose()V

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mAdProviders:Ljava/util/List;

    iget v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mCurrentAdProviderIdx:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mCurrentProvider:Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;

    .line 810
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mCurrentProvider:Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;

    iget-boolean v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->TEST_MODE:Z

    invoke-virtual {v0, v1}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;->adProviderCreate(Z)V

    .line 812
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mCurrentProvider:Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;->markUsage()V

    .line 813
    return-void
.end method

.method private viewNextInterstitial()V
    .locals 2

    .prologue
    .line 733
    monitor-enter p0

    .line 734
    :try_start_0
    iget v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mCurrentAdInterstitialIdx:I

    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mInterstitialProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 735
    const/4 v0, 0x0

    iput v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mCurrentAdInterstitialIdx:I

    .line 738
    :goto_0
    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->showInterstitial()V

    .line 733
    monitor-exit p0

    .line 740
    return-void

    .line 737
    :cond_0
    iget v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mCurrentAdInterstitialIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mCurrentAdInterstitialIdx:I

    goto :goto_0

    .line 733
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public askRating()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 862
    sget v2, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mMarketVariation:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 875
    :cond_0
    :goto_0
    return-void

    .line 867
    :cond_1
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "RATE_COUNTER"

    invoke-static {v2, v3, v4}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getPrefValueInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 868
    .local v0, count:I
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "RATE_COUNTER"

    invoke-static {v2, v3, v0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->setPrefValueInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 869
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "APP_RATED"

    invoke-static {v2, v3, v4}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getPrefValueInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 871
    .local v1, rated:I
    rem-int/lit8 v2, v0, 0x8

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    .line 873
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mAppRatingDialog:Lcom/fingersoft/fsadsdk/advertising/AppRatingDialog;

    invoke-virtual {v2}, Lcom/fingersoft/fsadsdk/advertising/AppRatingDialog;->showDialog()V

    goto :goto_0
.end method

.method public disableAds()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 399
    iput-boolean v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mAdsEnabled:Z

    .line 401
    iget-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mPaused:Z

    if-nez v0, :cond_1

    .line 403
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->setVisibility(I)V

    .line 404
    invoke-virtual {p0, v1}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->setEnabled(Z)V

    .line 406
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mCurrentProvider:Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mCurrentProvider:Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;->adPause()V

    .line 409
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mPaused:Z

    .line 411
    :cond_1
    return-void
.end method

.method public disablePopupDialogs()V
    .locals 1

    .prologue
    .line 897
    :try_start_0
    iget-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mAppReleaseTimeoutDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mAppReleaseCheck:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    if-eqz v0, :cond_0

    .line 900
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mAppReleaseTimeoutDisabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 904
    :cond_0
    :goto_0
    return-void

    .line 903
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public enableAds()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 416
    iput-boolean v2, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mAdsEnabled:Z

    .line 418
    iget-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mPaused:Z

    if-eqz v0, :cond_1

    .line 420
    invoke-virtual {p0, v1}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->setVisibility(I)V

    .line 421
    invoke-virtual {p0, v2}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->setEnabled(Z)V

    .line 423
    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->startAdView()V

    .line 425
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mCurrentProvider:Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mCurrentProvider:Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;->adResume()V

    .line 428
    :cond_0
    iput-boolean v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mPaused:Z

    .line 431
    :cond_1
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getAdProviderPriorities()Ljava/lang/String;
    .locals 8

    .prologue
    .line 494
    :try_start_0
    iget-object v6, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 495
    .local v1, locale:Ljava/lang/String;
    iget-object v6, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 497
    .local v3, packageName:Ljava/lang/String;
    sget v6, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mMarketVariation:I

    invoke-static {v6}, Lcom/fingersoft/fsadsdk/advertising/MarketVariation;->derivePlatformName(I)Ljava/lang/String;

    move-result-object v4

    .line 500
    .local v4, platform:Ljava/lang/String;
    iget v6, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mCurrentVersionCode:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v1, v6, v4}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getJsonFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 501
    .local v5, priorities:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v6, "Priorities are "

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v5, :cond_1

    const-string v6, "NULL"

    :goto_0
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 502
    if-nez v5, :cond_0

    .line 503
    iget v6, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mCurrentVersionCode:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v1, v6, v4}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getPrioritiesFromOldServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 504
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Priority list: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 506
    move-object v2, p0

    .line 507
    .local v2, manager:Lcom/fingersoft/fsadsdk/advertising/AdManager;
    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v7, Lcom/fingersoft/fsadsdk/advertising/AdManager$3;

    invoke-direct {v7, p0, v2}, Lcom/fingersoft/fsadsdk/advertising/AdManager$3;-><init>(Lcom/fingersoft/fsadsdk/advertising/AdManager;Lcom/fingersoft/fsadsdk/advertising/AdManager;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    .end local v1           #locale:Ljava/lang/String;
    .end local v2           #manager:Lcom/fingersoft/fsadsdk/advertising/AdManager;
    .end local v3           #packageName:Ljava/lang/String;
    .end local v4           #platform:Ljava/lang/String;
    .end local v5           #priorities:Ljava/lang/String;
    :goto_1
    return-object v5

    .restart local v1       #locale:Ljava/lang/String;
    .restart local v3       #packageName:Ljava/lang/String;
    .restart local v4       #platform:Ljava/lang/String;
    .restart local v5       #priorities:Ljava/lang/String;
    :cond_1
    move-object v6, v5

    .line 501
    goto :goto_0

    .line 539
    .end local v1           #locale:Ljava/lang/String;
    .end local v3           #packageName:Ljava/lang/String;
    .end local v4           #platform:Ljava/lang/String;
    .end local v5           #priorities:Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v5, 0x0

    goto :goto_1
.end method

.method public getAdditionalParameters()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mAdditionalRequestParams:Ljava/lang/String;

    return-object v0
.end method

.method public getAdvertisementStorageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->advertisementStorageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->baseAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getContainer()Lcom/fingersoft/fsadsdk/advertising/json/IResultContainer;
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->container:Lcom/fingersoft/fsadsdk/advertising/json/IResultContainer;

    return-object v0
.end method

.method public getCurrentVersionCode()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mCurrentVersionCode:I

    return v0
.end method

.method public getPendingInstallReward()Lcom/fingersoft/fsadsdk/advertising/Reward;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 449
    const-string v4, "Install rewards check"

    invoke-static {v4}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 451
    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "pendingRewardPackageName"

    invoke-static {v4, v5, v3}, Lcom/fingersoft/fsadsdk/advertising/ApplicationSettings;->getValueString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, packageName:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v4, ""

    if-ne v0, v4, :cond_1

    .line 475
    :cond_0
    :goto_0
    return-object v3

    .line 455
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Rewards check for: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p0, v0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 459
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Reward package installed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 462
    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "reward.pending."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/fingersoft/fsadsdk/advertising/ApplicationSettings;->getValueString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 465
    .local v1, pending:Ljava/lang/String;
    const-string v4, "pending"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 466
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "reward.install."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".amount"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/fingersoft/fsadsdk/advertising/ApplicationSettings;->getValueInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 467
    .local v2, rewardAmount:I
    new-instance v3, Lcom/fingersoft/fsadsdk/advertising/Reward;

    invoke-direct {v3, v0, v2}, Lcom/fingersoft/fsadsdk/advertising/Reward;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 469
    .end local v2           #rewardAmount:I
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Reward pending? : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 472
    .end local v1           #pending:Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Reward package not installed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getPlatformName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 908
    sget v0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mMarketVariation:I

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/MarketVariation;->derivePlatformName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPromotionStorageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->promotionStorageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStartCountWithVersion()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mStartupCountWithCurrentVersion:I

    return v0
.end method

.method public getStartUpCount()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mStartupCount:I

    return v0
.end method

.method public hasPromotions()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 546
    :try_start_0
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->container:Lcom/fingersoft/fsadsdk/advertising/json/IResultContainer;

    if-nez v2, :cond_0

    .line 549
    :goto_0
    return v1

    .line 547
    :cond_0
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->container:Lcom/fingersoft/fsadsdk/advertising/json/IResultContainer;

    invoke-interface {v2}, Lcom/fingersoft/fsadsdk/advertising/json/IResultContainer;->getPromotions()Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection;->hasPromotions()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 549
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public inTestMode()Lcom/fingersoft/fsadsdk/advertising/AdManager;
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->TEST_MODE:Z

    .line 147
    return-object p0
.end method

.method public inTestMode(Ljava/lang/String;)Lcom/fingersoft/fsadsdk/advertising/AdManager;
    .locals 1
    .parameter "adProviderList"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->testAdProviderList:Ljava/lang/String;

    .line 159
    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->inTestMode()Lcom/fingersoft/fsadsdk/advertising/AdManager;

    move-result-object v0

    return-object v0
.end method

.method public isPackageInstalled(Ljava/lang/String;)Z
    .locals 4
    .parameter "targetPackage"

    .prologue
    const/4 v2, 0x0

    .line 879
    iget-boolean v3, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->TEST_MODE:Z

    if-eqz v3, :cond_0

    .line 890
    :goto_0
    return v2

    .line 881
    :cond_0
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 884
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    const/4 v2, 0x1

    goto :goto_0

    .line 886
    :catch_0
    move-exception v0

    .line 888
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public manage()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 233
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Using Fingersoft SDK Version "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/fingersoft/fsadsdk/advertising/AdManager;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 234
    iget-object v7, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mActivity:Landroid/app/Activity;

    invoke-static {v7}, Lcom/fingersoft/fsadsdk/advertising/DeviceCapabilities;->detectCapabilities(Landroid/app/Activity;)V

    .line 236
    const-string v0, "VERSION_NA"

    .line 239
    .local v0, appVersionId:Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 240
    .local v5, packageInfo:Landroid/content/pm/PackageInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    iget v8, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    iget v7, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v7, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mCurrentVersionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .end local v5           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    iget-object v7, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 249
    .local v4, locale:Ljava/lang/String;
    sget v7, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mMarketVariation:I

    invoke-static {v4, v7}, Lcom/fingersoft/fsadsdk/advertising/MarketVariation;->getDefaultAdPriority(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/fingersoft/fsadsdk/advertising/AdManager;->DEFAULT_AD_PRIORITY:Ljava/lang/String;

    .line 250
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "DEFAULT AD PRIORITY: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/fingersoft/fsadsdk/advertising/AdManager;->DEFAULT_AD_PRIORITY:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 252
    iget-object v7, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mActivity:Landroid/app/Activity;

    const-string v8, "providerpriority"

    sget-object v9, Lcom/fingersoft/fsadsdk/advertising/AdManager;->DEFAULT_AD_PRIORITY:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getPrefValueString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 253
    .local v6, priorityString:Ljava/lang/String;
    iget-boolean v7, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->TEST_MODE:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->testAdProviderList:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 255
    iget-object v6, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->testAdProviderList:Ljava/lang/String;

    .line 258
    :cond_0
    new-instance v1, Lcom/fingersoft/fsadsdk/advertising/Comparators/AdProviderComparator;

    invoke-direct {v1, v6}, Lcom/fingersoft/fsadsdk/advertising/Comparators/AdProviderComparator;-><init>(Ljava/lang/String;)V

    .line 259
    .local v1, comparator:Lcom/fingersoft/fsadsdk/advertising/Comparators/AdProviderComparator;
    iget-object v7, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mAdProviders:Ljava/util/List;

    invoke-virtual {v1, v7}, Lcom/fingersoft/fsadsdk/advertising/Comparators/AdProviderComparator;->sort(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mAdProviders:Ljava/util/List;

    .line 261
    iget-boolean v7, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->reorderByServer:Z

    if-eqz v7, :cond_1

    .line 263
    new-instance v3, Lcom/fingersoft/fsadsdk/advertising/Comparators/InterstitialProviderComparator;

    invoke-direct {v3, v6}, Lcom/fingersoft/fsadsdk/advertising/Comparators/InterstitialProviderComparator;-><init>(Ljava/lang/String;)V

    .line 264
    .local v3, iComparator:Lcom/fingersoft/fsadsdk/advertising/Comparators/InterstitialProviderComparator;
    iget-object v7, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mInterstitialProviders:Ljava/util/List;

    invoke-virtual {v3, v7}, Lcom/fingersoft/fsadsdk/advertising/Comparators/InterstitialProviderComparator;->sort(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mInterstitialProviders:Ljava/util/List;

    .line 268
    .end local v3           #iComparator:Lcom/fingersoft/fsadsdk/advertising/Comparators/InterstitialProviderComparator;
    :cond_1
    invoke-direct {p0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->startAnalyticsSession()V

    .line 270
    iget-object v7, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mProviderLoader:Lcom/fingersoft/fsadsdk/advertising/AdManager$ProviderLoader;

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/fingersoft/fsadsdk/advertising/AdManager;

    aput-object p0, v8, v10

    invoke-virtual {v7, v8}, Lcom/fingersoft/fsadsdk/advertising/AdManager$ProviderLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 271
    new-instance v7, Lcom/fingersoft/fsadsdk/advertising/AppRatingDialog;

    sget v8, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mMarketVariation:I

    invoke-direct {v7, p0, v8}, Lcom/fingersoft/fsadsdk/advertising/AppRatingDialog;-><init>(Lcom/fingersoft/fsadsdk/advertising/AdManager;I)V

    iput-object v7, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mAppRatingDialog:Lcom/fingersoft/fsadsdk/advertising/AppRatingDialog;

    .line 273
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "appStartup/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackPageView(Ljava/lang/String;)V

    .line 274
    return-void

    .line 243
    .end local v1           #comparator:Lcom/fingersoft/fsadsdk/advertising/Comparators/AdProviderComparator;
    .end local v4           #locale:Ljava/lang/String;
    .end local v6           #priorityString:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 245
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public markRewardGiven(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 483
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reward.pending."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "done"

    invoke-static {v0, v1, v2}, Lcom/fingersoft/fsadsdk/advertising/ApplicationSettings;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pendingRewardPackageName"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/fingersoft/fsadsdk/advertising/ApplicationSettings;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Reward given for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 487
    return-void
.end method

.method public onAdViewFailed()V
    .locals 0

    .prologue
    .line 714
    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->viewNextAd()V

    .line 715
    return-void
.end method

.method public onAdViewSuccess()V
    .locals 0

    .prologue
    .line 710
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 704
    invoke-direct {p0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->stopAnalyticsSession()V

    .line 705
    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->stopAdView()V

    .line 707
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mActivity:Landroid/app/Activity;

    .line 708
    return-void
.end method

.method public onIntersitialViewSuccess()V
    .locals 0

    .prologue
    .line 717
    return-void
.end method

.method public onInterstitialViewFailed()V
    .locals 3

    .prologue
    .line 723
    :try_start_0
    invoke-direct {p0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->viewNextInterstitial()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    :goto_0
    return-void

    .line 725
    :catch_0
    move-exception v0

    .line 727
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error getting interstitial: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 817
    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->stopAdView()V

    .line 818
    invoke-direct {p0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->stopAnalyticsSession()V

    .line 819
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 823
    invoke-direct {p0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->startAnalyticsSession()V

    .line 825
    invoke-direct {p0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->increaseStartupCounter()V

    .line 827
    iget-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mAdsEnabled:Z

    if-eqz v0, :cond_0

    .line 828
    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->startAdView()V

    .line 831
    :cond_0
    iget-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->useAutomaticAskRating:Z

    if-eqz v0, :cond_1

    .line 833
    sget v0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mMarketVariation:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    sget v0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mMarketVariation:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 834
    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->askRating()V

    .line 837
    :cond_1
    return-void
.end method

.method public reorderInterstitials()Lcom/fingersoft/fsadsdk/advertising/AdManager;
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->reorderByServer:Z

    .line 228
    return-object p0
.end method

.method public showInterstitial()V
    .locals 3

    .prologue
    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mInterstitialProviders:Ljava/util/List;

    iget v2, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mCurrentAdInterstitialIdx:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialProvider;

    invoke-virtual {v1}, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialProvider;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 221
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error showing interstitial: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startAdView()V
    .locals 2

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mAdViewStarted:Z

    if-nez v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mStartAdView:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 372
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mPaused:Z

    .line 373
    return-void
.end method

.method public stopAdView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 377
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mWaitingThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mWaitingThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 380
    iput-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mWaitingThread:Ljava/lang/Thread;

    .line 383
    :cond_0
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mCurrentProvider:Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;

    if-eqz v1, :cond_1

    .line 385
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mCurrentProvider:Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;

    invoke-virtual {v1}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;->adProviderClose()V

    .line 386
    iput-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mCurrentProvider:Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;

    .line 389
    :cond_1
    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->removeAllViews()V

    .line 391
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mAdProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 394
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mAdViewStarted:Z

    .line 395
    return-void

    .line 391
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;

    .line 392
    .local v0, provider:Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;
    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;->resetUsage()V

    goto :goto_0
.end method

.method public trackPageView(Ljava/lang/String;)V
    .locals 1
    .parameter "page"

    .prologue
    .line 689
    :try_start_0
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mTracker:Lcom/fingersoft/fsadsdk/advertising/analytics/IAnalyticsProvider;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mTracker:Lcom/fingersoft/fsadsdk/advertising/analytics/IAnalyticsProvider;

    invoke-interface {v0, p1}, Lcom/fingersoft/fsadsdk/advertising/analytics/IAnalyticsProvider;->trackPageView(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 694
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public useAutomaticAskRating(Z)Lcom/fingersoft/fsadsdk/advertising/AdManager;
    .locals 0
    .parameter "useAutomaticAskRating"

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->useAutomaticAskRating:Z

    .line 153
    return-object p0
.end method

.method public useBase64Images()Z
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->baseAddress:Ljava/lang/String;

    const-string v1, "http://ads2.fingersoft.net:3000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->baseAddress:Ljava/lang/String;

    const-string v1, "http://192.168.1.35:3001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->useBase64Images:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public viewNextAd()V
    .locals 1

    .prologue
    .line 744
    monitor-enter p0

    .line 746
    :try_start_0
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mWaitingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 748
    const-string v0, "AdManager: AdThread - thread already running"

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 749
    monitor-exit p0

    .line 800
    :goto_0
    return-void

    .line 752
    :cond_0
    new-instance v0, Lcom/fingersoft/fsadsdk/advertising/AdManager$4;

    invoke-direct {v0, p0}, Lcom/fingersoft/fsadsdk/advertising/AdManager$4;-><init>(Lcom/fingersoft/fsadsdk/advertising/AdManager;)V

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mWaitingThread:Ljava/lang/Thread;

    .line 798
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mWaitingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 744
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public withAdProvider(Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;)Lcom/fingersoft/fsadsdk/advertising/AdManager;
    .locals 1
    .parameter "provider"

    .prologue
    .line 126
    invoke-virtual {p1, p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;->setAdManager(Lcom/fingersoft/fsadsdk/advertising/AdManager;)V

    .line 127
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mAdProviders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    return-object p0
.end method

.method public withAnalyticsProvider(ILjava/lang/String;Lcom/fingersoft/fsadsdk/advertising/analytics/ITrackingStrategy;)Lcom/fingersoft/fsadsdk/advertising/AdManager;
    .locals 1
    .parameter "provider"
    .parameter "providerIdString"
    .parameter "strategy"

    .prologue
    .line 176
    iput p1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->analyticsProvider:I

    .line 177
    iput-object p2, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->analyticsId:Ljava/lang/String;

    .line 178
    if-nez p3, :cond_0

    new-instance v0, Lcom/fingersoft/fsadsdk/advertising/analytics/NativeTrackingStrategy;

    invoke-direct {v0}, Lcom/fingersoft/fsadsdk/advertising/analytics/NativeTrackingStrategy;-><init>()V

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackingStrategy:Lcom/fingersoft/fsadsdk/advertising/analytics/ITrackingStrategy;

    .line 180
    :goto_0
    return-object p0

    .line 179
    :cond_0
    iput-object p3, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackingStrategy:Lcom/fingersoft/fsadsdk/advertising/analytics/ITrackingStrategy;

    goto :goto_0
.end method

.method public withBaseServerAddress(Ljava/lang/String;)Lcom/fingersoft/fsadsdk/advertising/AdManager;
    .locals 2
    .parameter "baseAddress"

    .prologue
    .line 170
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1
    :goto_0
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->baseAddress:Ljava/lang/String;

    .line 171
    return-object p0

    .line 170
    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public withInterstitialProvider(Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialProvider;)Lcom/fingersoft/fsadsdk/advertising/AdManager;
    .locals 1
    .parameter "provider"

    .prologue
    .line 133
    invoke-virtual {p1, p0}, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialProvider;->setAdManager(Lcom/fingersoft/fsadsdk/advertising/AdManager;)V

    .line 134
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mInterstitialProviders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    return-object p0
.end method

.method public withLogging()Lcom/fingersoft/fsadsdk/advertising/AdManager;
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->logEnabled:Z

    .line 121
    return-object p0
.end method

.method public withMarketVariation(I)Lcom/fingersoft/fsadsdk/advertising/AdManager;
    .locals 0
    .parameter "marketVariation"

    .prologue
    .line 140
    sput p1, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mMarketVariation:I

    .line 141
    return-object p0
.end method

.method public withRequestParameters(Ljava/lang/String;)Lcom/fingersoft/fsadsdk/advertising/AdManager;
    .locals 0
    .parameter "requestParams"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mAdditionalRequestParams:Ljava/lang/String;

    .line 165
    return-object p0
.end method
