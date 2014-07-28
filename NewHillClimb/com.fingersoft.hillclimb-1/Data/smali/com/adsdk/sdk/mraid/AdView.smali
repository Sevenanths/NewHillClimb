.class public Lcom/adsdk/sdk/mraid/AdView;
.super Landroid/webkit/WebView;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adsdk/sdk/mraid/AdView$AdWebViewClient;
    }
.end annotation


# static fields
.field public static final AD_ORIENTATION_BOTH:Ljava/lang/String; = "b"

.field public static final AD_ORIENTATION_LANDSCAPE_ONLY:Ljava/lang/String; = "l"

.field public static final AD_ORIENTATION_PORTRAIT_ONLY:Ljava/lang/String; = "p"

.field public static final DEVICE_ORIENTATION_LANDSCAPE:Ljava/lang/String; = "l"

.field public static final DEVICE_ORIENTATION_PORTRAIT:Ljava/lang/String; = "p"

.field public static final DEVICE_ORIENTATION_SQUARE:Ljava/lang/String; = "s"

.field public static final DEVICE_ORIENTATION_UNKNOWN:Ljava/lang/String; = "u"

.field public static final EXTRA_AD_CLICK_DATA:Ljava/lang/String; = "com.mopub.intent.extra.AD_CLICK_DATA"

.field private static final MINIMUM_REFRESH_TIME_MILLISECONDS:I = 0x2710

.field private static final WRAP_AND_CENTER_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;


# instance fields
.field private mAdOrientation:Ljava/lang/String;

.field private mAdUnitId:Ljava/lang/String;

.field private mAutorefreshEnabled:Z

.field private mClickthroughUrl:Ljava/lang/String;

.field private mFailUrl:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mImpressionUrl:Ljava/lang/String;

.field private mIsDestroyed:Z

.field private mIsLoading:Z

.field private mKeywords:Ljava/lang/String;

.field private mLocation:Landroid/location/Location;

.field protected mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

.field private mRedirectUrl:Ljava/lang/String;

.field private mRefreshHandler:Landroid/os/Handler;

.field private mRefreshRunnable:Ljava/lang/Runnable;

.field private mRefreshTimeMilliseconds:I

.field private mResponse:Lcom/adsdk/sdk/BannerAd;

.field private mResponseString:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mUserAgent:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 91
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 94
    const/16 v1, 0x11

    .line 91
    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 90
    sput-object v0, Lcom/adsdk/sdk/mraid/AdView;->WRAP_AND_CENTER_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/adsdk/sdk/mraid/MoPubView;Lcom/adsdk/sdk/BannerAd;)V
    .locals 2
    .parameter "context"
    .parameter "view"
    .parameter "response"

    .prologue
    const/4 v1, 0x1

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 106
    const v0, 0xea60

    iput v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mRefreshTimeMilliseconds:I

    .line 116
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mHandler:Landroid/os/Handler;

    .line 645
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mRefreshHandler:Landroid/os/Handler;

    .line 646
    new-instance v0, Lcom/adsdk/sdk/mraid/AdView$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/mraid/AdView$1;-><init>(Lcom/adsdk/sdk/mraid/AdView;)V

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 123
    iput-object p3, p0, Lcom/adsdk/sdk/mraid/AdView;->mResponse:Lcom/adsdk/sdk/BannerAd;

    .line 124
    iput-object p2, p0, Lcom/adsdk/sdk/mraid/AdView;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    .line 125
    iput-boolean v1, p0, Lcom/adsdk/sdk/mraid/AdView;->mAutorefreshEnabled:Z

    .line 130
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mUserAgent:Ljava/lang/String;

    .line 132
    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/AdView;->disableScrollingAndZoom()V

    .line 133
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 134
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/AdView;->setBackgroundColor(I)V

    .line 136
    new-instance v0, Lcom/adsdk/sdk/mraid/AdView$AdWebViewClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/adsdk/sdk/mraid/AdView$AdWebViewClient;-><init>(Lcom/adsdk/sdk/mraid/AdView;Lcom/adsdk/sdk/mraid/AdView$AdWebViewClient;)V

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/AdView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 138
    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/AdView;->addMoPubUriJavascriptInterface()V

    .line 139
    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/mraid/AdView;)V
    .locals 0
    .parameter

    .prologue
    .line 468
    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/AdView;->adDidLoad()V

    return-void
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/mraid/AdView;)V
    .locals 0
    .parameter

    .prologue
    .line 501
    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/AdView;->adDidClose()V

    return-void
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/mraid/AdView;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 505
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/mraid/AdView;->handleCustomIntentFromUri(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$3(Lcom/adsdk/sdk/mraid/AdView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 520
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/mraid/AdView;->showBrowserForUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/adsdk/sdk/mraid/AdView;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/mraid/AdView;->postHandlerRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$5(Lcom/adsdk/sdk/mraid/AdView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mClickthroughUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/adsdk/sdk/mraid/AdView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method private adDidClose()V
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubView;->adClosed()V

    .line 503
    return-void
.end method

.method private adDidFail()V
    .locals 2

    .prologue
    .line 495
    const-string v0, "MoPub"

    const-string v1, "Ad failed to load."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mIsLoading:Z

    .line 497
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->scheduleRefreshTimerIfEnabled()V

    .line 498
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubView;->adFailed()V

    .line 499
    return-void
.end method

.method private adDidLoad()V
    .locals 2

    .prologue
    .line 469
    const-string v0, "MoPub"

    const-string v1, "Ad successfully loaded."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mIsLoading:Z

    .line 471
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->scheduleRefreshTimerIfEnabled()V

    .line 472
    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/AdView;->getHtmlAdLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-direct {p0, p0, v0}, Lcom/adsdk/sdk/mraid/AdView;->setAdContentView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 473
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubView;->adLoaded()V

    .line 474
    return-void
.end method

.method private addKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "keywords"
    .parameter "addition"

    .prologue
    .line 671
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object p2, p1

    .line 676
    .end local p2
    :cond_1
    :goto_0
    return-object p2

    .line 673
    .restart local p2
    :cond_2
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private addMoPubUriJavascriptInterface()V
    .locals 2

    .prologue
    .line 174
    new-instance v0, Lcom/adsdk/sdk/mraid/AdView$1MoPubUriJavascriptInterface;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/mraid/AdView$1MoPubUriJavascriptInterface;-><init>(Lcom/adsdk/sdk/mraid/AdView;)V

    const-string v1, "mopubUriInterface"

    invoke-virtual {p0, v0, v1}, Lcom/adsdk/sdk/mraid/AdView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method private disableScrollingAndZoom()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-virtual {p0, v1}, Lcom/adsdk/sdk/mraid/AdView;->setHorizontalScrollBarEnabled(Z)V

    .line 143
    invoke-virtual {p0, v1}, Lcom/adsdk/sdk/mraid/AdView;->setHorizontalScrollbarOverlay(Z)V

    .line 144
    invoke-virtual {p0, v1}, Lcom/adsdk/sdk/mraid/AdView;->setVerticalScrollBarEnabled(Z)V

    .line 145
    invoke-virtual {p0, v1}, Lcom/adsdk/sdk/mraid/AdView;->setVerticalScrollbarOverlay(Z)V

    .line 146
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 147
    return-void
.end method

.method private getHtmlAdLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 767
    iget v3, p0, Lcom/adsdk/sdk/mraid/AdView;->mWidth:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/adsdk/sdk/mraid/AdView;->mHeight:I

    if-lez v3, :cond_0

    .line 768
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 769
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget v3, p0, Lcom/adsdk/sdk/mraid/AdView;->mWidth:I

    int-to-float v3, v3

    invoke-static {v4, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v2, v3

    .line 771
    .local v2, scaledWidth:I
    iget v3, p0, Lcom/adsdk/sdk/mraid/AdView;->mHeight:I

    int-to-float v3, v3

    invoke-static {v4, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v1, v3

    .line 773
    .local v1, scaledHeight:I
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    invoke-direct {v3, v2, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 775
    .end local v0           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v1           #scaledHeight:I
    .end local v2           #scaledWidth:I
    :goto_0
    return-object v3

    :cond_0
    sget-object v3, Lcom/adsdk/sdk/mraid/AdView;->WRAP_AND_CENTER_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_0
.end method

.method private getLastKnownLocation()Landroid/location/Location;
    .locals 21

    .prologue
    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adsdk/sdk/mraid/AdView;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/adsdk/sdk/mraid/MoPubView;->getLocationAwareness()Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;

    move-result-object v7

    .line 310
    .local v7, locationAwareness:Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adsdk/sdk/mraid/AdView;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/adsdk/sdk/mraid/MoPubView;->getLocationPrecision()I

    move-result v8

    .line 311
    .local v8, locationPrecision:I
    const/4 v12, 0x0

    .line 313
    .local v12, result:Landroid/location/Location;
    sget-object v17, Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;->LOCATION_AWARENESS_DISABLED:Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;

    move-object/from16 v0, v17

    if-ne v7, v0, :cond_0

    .line 314
    const/16 v17, 0x0

    .line 362
    :goto_0
    return-object v17

    .line 318
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/adsdk/sdk/mraid/AdView;->getContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "location"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/LocationManager;

    .line 319
    .local v6, lm:Landroid/location/LocationManager;
    const/4 v3, 0x0

    .line 321
    .local v3, gpsLocation:Landroid/location/Location;
    :try_start_0
    const-string v17, "gps"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 328
    :goto_1
    const/4 v11, 0x0

    .line 330
    .local v11, networkLocation:Landroid/location/Location;
    :try_start_1
    const-string v17, "network"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v11

    .line 337
    :goto_2
    if-nez v3, :cond_1

    if-nez v11, :cond_1

    .line 338
    const/16 v17, 0x0

    goto :goto_0

    .line 322
    .end local v11           #networkLocation:Landroid/location/Location;
    :catch_0
    move-exception v2

    .line 323
    .local v2, e:Ljava/lang/SecurityException;
    const-string v17, "MoPub"

    const-string v18, "Failed to retrieve GPS location: access appears to be disabled."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 324
    .end local v2           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    .line 325
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v17, "MoPub"

    const-string v18, "Failed to retrieve GPS location: device has no GPS provider."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 331
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v11       #networkLocation:Landroid/location/Location;
    :catch_2
    move-exception v2

    .line 332
    .local v2, e:Ljava/lang/SecurityException;
    const-string v17, "MoPub"

    const-string v18, "Failed to retrieve network location: access appears to be disabled."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 333
    .end local v2           #e:Ljava/lang/SecurityException;
    :catch_3
    move-exception v2

    .line 334
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v17, "MoPub"

    const-string v18, "Failed to retrieve network location: device has no network provider."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 340
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :cond_1
    if-eqz v3, :cond_4

    if-eqz v11, :cond_4

    .line 341
    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v17

    invoke-virtual {v11}, Landroid/location/Location;->getTime()J

    move-result-wide v19

    cmp-long v17, v17, v19

    if-lez v17, :cond_3

    move-object v12, v3

    .line 348
    :goto_3
    sget-object v17, Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;->LOCATION_AWARENESS_TRUNCATED:Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;

    move-object/from16 v0, v17

    if-ne v7, v0, :cond_2

    .line 349
    invoke-virtual {v12}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    .line 350
    .local v4, lat:D
    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v17

    .line 351
    const/16 v18, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v17

    .line 352
    invoke-virtual/range {v17 .. v17}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v13

    .line 353
    .local v13, truncatedLat:D
    invoke-virtual {v12, v13, v14}, Landroid/location/Location;->setLatitude(D)V

    .line 355
    invoke-virtual {v12}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    .line 356
    .local v9, lon:D
    invoke-static {v9, v10}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v17

    .line 357
    const/16 v18, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v17

    .line 358
    invoke-virtual/range {v17 .. v17}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v15

    .line 359
    .local v15, truncatedLon:D
    move-wide v0, v15

    invoke-virtual {v12, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    .end local v4           #lat:D
    .end local v9           #lon:D
    .end local v13           #truncatedLat:D
    .end local v15           #truncatedLon:D
    :cond_2
    move-object/from16 v17, v12

    .line 362
    goto/16 :goto_0

    .line 342
    :cond_3
    move-object v12, v11

    .line 343
    goto :goto_3

    .line 344
    :cond_4
    if-eqz v3, :cond_5

    move-object v12, v3

    goto :goto_3

    .line 345
    :cond_5
    move-object v12, v11

    goto :goto_3
.end method

.method private getTimeZoneOffsetString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 367
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "Z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 368
    .local v0, format:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 369
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private handleCustomIntentFromUri(Landroid/net/Uri;)V
    .locals 7
    .parameter "uri"

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->registerClick()V

    .line 507
    const-string v4, "fnc"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, action:Ljava/lang/String;
    const-string v4, "data"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 509
    .local v1, adData:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 510
    .local v2, customIntent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 511
    if-eqz v1, :cond_0

    const-string v4, "com.mopub.intent.extra.AD_CLICK_DATA"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    :goto_0
    return-void

    .line 514
    :catch_0
    move-exception v3

    .line 515
    .local v3, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "MoPub"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not handle custom intent: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 516
    const-string v6, ". Is your intent spelled correctly?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 515
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isNetworkAvailable()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 287
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 290
    .local v1, context:Landroid/content/Context;
    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    .line 291
    .local v3, permission:Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    .line 292
    .local v4, result:I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    .line 298
    :cond_0
    :goto_0
    return v5

    .line 296
    :cond_1
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 297
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 298
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private postHandlerRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 179
    return-void
.end method

.method private setAdContentView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1
    .parameter "view"
    .parameter "layoutParams"

    .prologue
    .line 490
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubView;->removeAllViews()V

    .line 491
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    invoke-virtual {v0, p1, p2}, Lcom/adsdk/sdk/mraid/MoPubView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 492
    return-void
.end method

.method private setWebViewScrollingEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 457
    if-eqz p1, :cond_0

    .line 458
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/AdView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 466
    :goto_0
    return-void

    .line 460
    :cond_0
    new-instance v0, Lcom/adsdk/sdk/mraid/AdView$2;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/mraid/AdView$2;-><init>(Lcom/adsdk/sdk/mraid/AdView;)V

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/AdView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method private showBrowserForUrl(Ljava/lang/String;)V
    .locals 10
    .parameter "url"

    .prologue
    const/high16 v9, 0x1000

    .line 521
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->isDestroyed()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 551
    :goto_0
    return-void

    .line 523
    :cond_0
    if-eqz p1, :cond_1

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const-string p1, "about:blank"

    .line 524
    :cond_2
    const-string v5, "MoPub"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Final URI to show in browser: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 527
    .local v1, context:Landroid/content/Context;
    const-string v5, ".mp4"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 528
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 529
    .local v3, i:Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "video/mp4"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 533
    .end local v3           #i:Landroid/content/Intent;
    :cond_3
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/adsdk/sdk/banner/InAppWebView;

    invoke-direct {v4, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 534
    .local v4, intent:Landroid/content/Intent;
    const-string v5, "REDIRECT_URI"

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 539
    :try_start_0
    invoke-virtual {v1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 540
    :catch_0
    move-exception v2

    .line 541
    .local v2, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 542
    .local v0, action:Ljava/lang/String;
    const-string v5, "MoPub"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Could not handle intent action: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 543
    const-string v7, ". Perhaps you forgot to declare com.adsdk.sdk.mraid.MraidBrowser"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 544
    const-string v7, " in your Android manifest file."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 542
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 547
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    const-string v8, "about:blank"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 548
    invoke-virtual {v6, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v6

    .line 546
    invoke-virtual {v5, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected adAppeared()V
    .locals 1

    .prologue
    .line 642
    const-string v0, "javascript:webviewDidAppear();"

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/AdView;->loadUrl(Ljava/lang/String;)V

    .line 643
    return-void
.end method

.method protected cancelRefreshTimer()V
    .locals 2

    .prologue
    .line 659
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mRefreshHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/AdView;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 660
    return-void
.end method

.method protected cleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 574
    iget-boolean v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    .line 596
    :goto_0
    return-void

    .line 578
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/AdView;->setAutorefreshEnabled(Z)V

    .line 579
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->cancelRefreshTimer()V

    .line 580
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->destroy()V

    .line 589
    iput-object v1, p0, Lcom/adsdk/sdk/mraid/AdView;->mResponseString:Ljava/lang/String;

    .line 591
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    invoke-virtual {v0, p0}, Lcom/adsdk/sdk/mraid/MoPubView;->removeView(Landroid/view/View;)V

    .line 592
    iput-object v1, p0, Lcom/adsdk/sdk/mraid/AdView;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    .line 595
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mIsDestroyed:Z

    goto :goto_0
.end method

.method protected configureAdViewUsingHeadersFromHttpResponse(Lorg/apache/http/HttpResponse;)V
    .locals 14
    .parameter "response"

    .prologue
    .line 400
    const-string v11, "X-Networktype"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    .line 401
    .local v5, ntHeader:Lorg/apache/http/Header;
    if-eqz v5, :cond_0

    const-string v11, "MoPub"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Fetching ad network type: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_0
    const-string v11, "X-Launchpage"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v7

    .line 405
    .local v7, rdHeader:Lorg/apache/http/Header;
    if-eqz v7, :cond_3

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/adsdk/sdk/mraid/AdView;->mRedirectUrl:Ljava/lang/String;

    .line 409
    :goto_0
    const-string v11, "X-Clickthrough"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 410
    .local v0, ctHeader:Lorg/apache/http/Header;
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/adsdk/sdk/mraid/AdView;->mClickthroughUrl:Ljava/lang/String;

    .line 414
    :goto_1
    const-string v11, "X-Failurl"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 415
    .local v2, flHeader:Lorg/apache/http/Header;
    if-eqz v2, :cond_5

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/adsdk/sdk/mraid/AdView;->mFailUrl:Ljava/lang/String;

    .line 419
    :goto_2
    const-string v11, "X-Imptracker"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 420
    .local v4, imHeader:Lorg/apache/http/Header;
    if-eqz v4, :cond_6

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/adsdk/sdk/mraid/AdView;->mImpressionUrl:Ljava/lang/String;

    .line 424
    :goto_3
    const-string v11, "X-Scrollable"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v9

    .line 425
    .local v9, scHeader:Lorg/apache/http/Header;
    const/4 v1, 0x0

    .line 426
    .local v1, enabled:Z
    if-eqz v9, :cond_1

    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    const-string v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 427
    :cond_1
    invoke-direct {p0, v1}, Lcom/adsdk/sdk/mraid/AdView;->setWebViewScrollingEnabled(Z)V

    .line 430
    const-string v11, "X-Width"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v10

    .line 431
    .local v10, wHeader:Lorg/apache/http/Header;
    const-string v11, "X-Height"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 432
    .local v3, hHeader:Lorg/apache/http/Header;
    if-eqz v10, :cond_7

    if-eqz v3, :cond_7

    .line 433
    invoke-interface {v10}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/adsdk/sdk/mraid/AdView;->mWidth:I

    .line 434
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/adsdk/sdk/mraid/AdView;->mHeight:I

    .line 442
    :goto_4
    const-string v11, "X-Refreshtime"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v8

    .line 443
    .local v8, rtHeader:Lorg/apache/http/Header;
    if-eqz v8, :cond_8

    .line 444
    invoke-interface {v8}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    mul-int/lit16 v11, v11, 0x3e8

    iput v11, p0, Lcom/adsdk/sdk/mraid/AdView;->mRefreshTimeMilliseconds:I

    .line 445
    iget v11, p0, Lcom/adsdk/sdk/mraid/AdView;->mRefreshTimeMilliseconds:I

    const/16 v12, 0x2710

    if-ge v11, v12, :cond_2

    .line 446
    const/16 v11, 0x2710

    iput v11, p0, Lcom/adsdk/sdk/mraid/AdView;->mRefreshTimeMilliseconds:I

    .line 452
    :cond_2
    :goto_5
    const-string v11, "X-Orientation"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v6

    .line 453
    .local v6, orHeader:Lorg/apache/http/Header;
    if-eqz v6, :cond_9

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    :goto_6
    iput-object v11, p0, Lcom/adsdk/sdk/mraid/AdView;->mAdOrientation:Ljava/lang/String;

    .line 454
    return-void

    .line 406
    .end local v0           #ctHeader:Lorg/apache/http/Header;
    .end local v1           #enabled:Z
    .end local v2           #flHeader:Lorg/apache/http/Header;
    .end local v3           #hHeader:Lorg/apache/http/Header;
    .end local v4           #imHeader:Lorg/apache/http/Header;
    .end local v6           #orHeader:Lorg/apache/http/Header;
    .end local v8           #rtHeader:Lorg/apache/http/Header;
    .end local v9           #scHeader:Lorg/apache/http/Header;
    .end local v10           #wHeader:Lorg/apache/http/Header;
    :cond_3
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/adsdk/sdk/mraid/AdView;->mRedirectUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 411
    .restart local v0       #ctHeader:Lorg/apache/http/Header;
    :cond_4
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/adsdk/sdk/mraid/AdView;->mClickthroughUrl:Ljava/lang/String;

    goto/16 :goto_1

    .line 416
    .restart local v2       #flHeader:Lorg/apache/http/Header;
    :cond_5
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/adsdk/sdk/mraid/AdView;->mFailUrl:Ljava/lang/String;

    goto/16 :goto_2

    .line 421
    .restart local v4       #imHeader:Lorg/apache/http/Header;
    :cond_6
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/adsdk/sdk/mraid/AdView;->mImpressionUrl:Ljava/lang/String;

    goto/16 :goto_3

    .line 437
    .restart local v1       #enabled:Z
    .restart local v3       #hHeader:Lorg/apache/http/Header;
    .restart local v9       #scHeader:Lorg/apache/http/Header;
    .restart local v10       #wHeader:Lorg/apache/http/Header;
    :cond_7
    const/4 v11, 0x0

    iput v11, p0, Lcom/adsdk/sdk/mraid/AdView;->mWidth:I

    .line 438
    const/4 v11, 0x0

    iput v11, p0, Lcom/adsdk/sdk/mraid/AdView;->mHeight:I

    goto :goto_4

    .line 449
    .restart local v8       #rtHeader:Lorg/apache/http/Header;
    :cond_8
    const/4 v11, 0x0

    iput v11, p0, Lcom/adsdk/sdk/mraid/AdView;->mRefreshTimeMilliseconds:I

    goto :goto_5

    .line 453
    .restart local v6       #orHeader:Lorg/apache/http/Header;
    :cond_9
    const/4 v11, 0x0

    goto :goto_6
.end method

.method public customEventActionWillBegin()V
    .locals 0

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->registerClick()V

    .line 564
    return-void
.end method

.method public customEventDidFailToLoadAd()V
    .locals 0

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->loadFailUrl()V

    .line 560
    return-void
.end method

.method public customEventDidLoadAd()V
    .locals 1

    .prologue
    .line 554
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mIsLoading:Z

    .line 555
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->scheduleRefreshTimerIfEnabled()V

    .line 556
    return-void
.end method

.method public forceRefresh()V
    .locals 1

    .prologue
    .line 762
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mIsLoading:Z

    .line 763
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->loadAd()V

    .line 764
    return-void
.end method

.method public getAdHeight()I
    .locals 1

    .prologue
    .line 717
    iget v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mHeight:I

    return v0
.end method

.method public getAdOrientation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mAdOrientation:Ljava/lang/String;

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mAdUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public getAdWidth()I
    .locals 1

    .prologue
    .line 713
    iget v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mWidth:I

    return v0
.end method

.method public getAutorefreshEnabled()Z
    .locals 1

    .prologue
    .line 758
    iget-boolean v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mAutorefreshEnabled:Z

    return v0
.end method

.method public getClickthroughUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mClickthroughUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mKeywords:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getRedirectUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mRedirectUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected getRefreshTimeMilliseconds()I
    .locals 1

    .prologue
    .line 663
    iget v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mRefreshTimeMilliseconds:I

    return v0
.end method

.method public getResponseString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mResponseString:Ljava/lang/String;

    return-object v0
.end method

.method protected isDestroyed()Z
    .locals 1

    .prologue
    .line 567
    iget-boolean v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mIsDestroyed:Z

    return v0
.end method

.method public loadAd()V
    .locals 4

    .prologue
    .line 261
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 262
    .local v1, paramsHash:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "X-Adtype"

    const-string v3, "mraid"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v2, "X-Nativeparams"

    iget-object v3, p0, Lcom/adsdk/sdk/mraid/AdView;->mResponse:Lcom/adsdk/sdk/BannerAd;

    invoke-virtual {v3}, Lcom/adsdk/sdk/BannerAd;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    .line 267
    .local v0, mpv:Lcom/adsdk/sdk/mraid/MoPubView;
    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MoPubView;->loadNativeSDK(Ljava/util/HashMap;)V

    .line 284
    return-void
.end method

.method public loadFailUrl()V
    .locals 3

    .prologue
    .line 605
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mIsLoading:Z

    .line 606
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mFailUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 607
    const-string v0, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loading failover url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsdk/sdk/mraid/AdView;->mFailUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mFailUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/AdView;->loadUrl(Ljava/lang/String;)V

    .line 613
    :goto_0
    return-void

    .line 611
    :cond_0
    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/AdView;->adDidFail()V

    goto :goto_0
.end method

.method protected registerClick()V
    .locals 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mClickthroughUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 639
    :goto_0
    return-void

    .line 623
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adsdk/sdk/mraid/AdView$3;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/mraid/AdView$3;-><init>(Lcom/adsdk/sdk/mraid/AdView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 638
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public reload()V
    .locals 3

    .prologue
    .line 600
    const-string v0, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reload ad: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsdk/sdk/mraid/AdView;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/AdView;->loadUrl(Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method protected scheduleRefreshTimerIfEnabled()V
    .locals 4

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->cancelRefreshTimer()V

    .line 654
    iget-boolean v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mAutorefreshEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mRefreshTimeMilliseconds:I

    if-gtz v0, :cond_1

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 655
    :cond_1
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mRefreshHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/AdView;->mRefreshRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/adsdk/sdk/mraid/AdView;->mRefreshTimeMilliseconds:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setAdContentView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 486
    sget-object v0, Lcom/adsdk/sdk/mraid/AdView;->WRAP_AND_CENTER_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, p1, v0}, Lcom/adsdk/sdk/mraid/AdView;->setAdContentView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 487
    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 0
    .parameter "adUnitId"

    .prologue
    .line 703
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/AdView;->mAdUnitId:Ljava/lang/String;

    .line 704
    return-void
.end method

.method public setAutorefreshEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 749
    iput-boolean p1, p0, Lcom/adsdk/sdk/mraid/AdView;->mAutorefreshEnabled:Z

    .line 751
    const-string v0, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Automatic refresh for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsdk/sdk/mraid/AdView;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-boolean v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mAutorefreshEnabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->cancelRefreshTimer()V

    .line 755
    :goto_0
    return-void

    .line 754
    :cond_0
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->scheduleRefreshTimerIfEnabled()V

    goto :goto_0
.end method

.method public setClickthroughUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 729
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/AdView;->mClickthroughUrl:Ljava/lang/String;

    .line 730
    return-void
.end method

.method protected setIsLoading(Z)V
    .locals 0
    .parameter "isLoading"

    .prologue
    .line 745
    iput-boolean p1, p0, Lcom/adsdk/sdk/mraid/AdView;->mIsLoading:Z

    .line 746
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0
    .parameter "keywords"

    .prologue
    .line 687
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/AdView;->mKeywords:Ljava/lang/String;

    .line 688
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 695
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/AdView;->mLocation:Landroid/location/Location;

    .line 696
    return-void
.end method

.method protected setRefreshTimeMilliseconds(I)V
    .locals 0
    .parameter "refreshTimeMilliseconds"

    .prologue
    .line 667
    iput p1, p0, Lcom/adsdk/sdk/mraid/AdView;->mRefreshTimeMilliseconds:I

    .line 668
    return-void
.end method

.method protected setResponseString(Ljava/lang/String;)V
    .locals 0
    .parameter "responseString"

    .prologue
    .line 741
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/AdView;->mResponseString:Ljava/lang/String;

    .line 742
    return-void
.end method
