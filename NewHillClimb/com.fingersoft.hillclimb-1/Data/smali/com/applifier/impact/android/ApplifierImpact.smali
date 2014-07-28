.class public Lcom/applifier/impact/android/ApplifierImpact;
.super Ljava/lang/Object;
.source "ApplifierImpact.java"

# interfaces
.implements Lcom/applifier/impact/android/cache/IApplifierImpactCacheListener;
.implements Lcom/applifier/impact/android/webapp/IApplifierImpactWebDataListener;
.implements Lcom/applifier/impact/android/webapp/IApplifierImpactWebBridgeListener;
.implements Lcom/applifier/impact/android/view/IApplifierImpactMainViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;,
        Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactPlayVideoRunner;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewAction:[I = null

.field public static final APPLIFIER_IMPACT_OPTION_GAMERSID_KEY:Ljava/lang/String; = "sid"

.field public static final APPLIFIER_IMPACT_OPTION_MUTE_VIDEO_SOUNDS:Ljava/lang/String; = "muteVideoSounds"

.field public static final APPLIFIER_IMPACT_OPTION_NOOFFERSCREEN_KEY:Ljava/lang/String; = "noOfferScreen"

.field public static final APPLIFIER_IMPACT_OPTION_OPENANIMATED_KEY:Ljava/lang/String; = "openAnimated"

.field public static final APPLIFIER_IMPACT_OPTION_VIDEO_USES_DEVICE_ORIENTATION:Ljava/lang/String; = "useDeviceOrientationForVideo"

.field public static final APPLIFIER_IMPACT_REWARDITEM_NAME_KEY:Ljava/lang/String; = "name"

.field public static final APPLIFIER_IMPACT_REWARDITEM_PICTURE_KEY:Ljava/lang/String; = "picture"

.field public static cachemanager:Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;

.field public static instance:Lcom/applifier/impact/android/ApplifierImpact;

.field public static mainview:Lcom/applifier/impact/android/view/ApplifierImpactMainView;

.field public static webdata:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;


# instance fields
.field private _alertDialog:Landroid/app/AlertDialog;

.field private _campaignRefreshTimer:Ljava/util/Timer;

.field private _campaignRefreshTimerDeadline:J

.field private _campaignRefreshTimerTask:Ljava/util/TimerTask;

.field private _impactListener:Lcom/applifier/impact/android/IApplifierImpactListener;

.field private _impactReadySent:Z

.field private _initialized:Z

.field private _openRequestFromDeveloper:Z

.field private _pauseScreenTimer:Ljava/util/TimerTask;

.field private _pauseTimer:Ljava/util/Timer;

.field private _refreshAfterShowImpact:Z

.field private _showingImpact:Z

.field private _webAppLoaded:Z


# direct methods
.method static synthetic $SWITCH_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewAction()[I
    .locals 3

    .prologue
    .line 45
    sget-object v0, Lcom/applifier/impact/android/ApplifierImpact;->$SWITCH_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewAction:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->values()[Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->BackButtonPressed:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

    invoke-virtual {v1}, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->RequestRetryVideoPlay:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

    invoke-virtual {v1}, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->VideoEnd:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

    invoke-virtual {v1}, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->VideoSkipped:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

    invoke-virtual {v1}, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->VideoStart:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

    invoke-virtual {v1}, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/applifier/impact/android/ApplifierImpact;->$SWITCH_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewAction:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    sput-object v0, Lcom/applifier/impact/android/ApplifierImpact;->instance:Lcom/applifier/impact/android/ApplifierImpact;

    .line 63
    sput-object v0, Lcom/applifier/impact/android/ApplifierImpact;->cachemanager:Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;

    .line 64
    sput-object v0, Lcom/applifier/impact/android/ApplifierImpact;->webdata:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    .line 65
    sput-object v0, Lcom/applifier/impact/android/ApplifierImpact;->mainview:Lcom/applifier/impact/android/view/ApplifierImpactMainView;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "gameId"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_initialized:Z

    .line 69
    iput-boolean v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_showingImpact:Z

    .line 70
    iput-boolean v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_impactReadySent:Z

    .line 71
    iput-boolean v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_webAppLoaded:Z

    .line 72
    iput-boolean v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_openRequestFromDeveloper:Z

    .line 73
    iput-boolean v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_refreshAfterShowImpact:Z

    .line 74
    iput-object v2, p0, Lcom/applifier/impact/android/ApplifierImpact;->_alertDialog:Landroid/app/AlertDialog;

    .line 76
    iput-object v2, p0, Lcom/applifier/impact/android/ApplifierImpact;->_pauseScreenTimer:Ljava/util/TimerTask;

    .line 77
    iput-object v2, p0, Lcom/applifier/impact/android/ApplifierImpact;->_pauseTimer:Ljava/util/Timer;

    .line 78
    iput-object v2, p0, Lcom/applifier/impact/android/ApplifierImpact;->_campaignRefreshTimerTask:Ljava/util/TimerTask;

    .line 79
    iput-object v2, p0, Lcom/applifier/impact/android/ApplifierImpact;->_campaignRefreshTimer:Ljava/util/Timer;

    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_campaignRefreshTimerDeadline:J

    .line 83
    iput-object v2, p0, Lcom/applifier/impact/android/ApplifierImpact;->_impactListener:Lcom/applifier/impact/android/IApplifierImpactListener;

    .line 87
    invoke-direct {p0, p1, p2, v2}, Lcom/applifier/impact/android/ApplifierImpact;->init(Landroid/app/Activity;Ljava/lang/String;Lcom/applifier/impact/android/IApplifierImpactListener;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/applifier/impact/android/IApplifierImpactListener;)V
    .locals 3
    .parameter "activity"
    .parameter "gameId"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_initialized:Z

    .line 69
    iput-boolean v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_showingImpact:Z

    .line 70
    iput-boolean v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_impactReadySent:Z

    .line 71
    iput-boolean v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_webAppLoaded:Z

    .line 72
    iput-boolean v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_openRequestFromDeveloper:Z

    .line 73
    iput-boolean v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_refreshAfterShowImpact:Z

    .line 74
    iput-object v2, p0, Lcom/applifier/impact/android/ApplifierImpact;->_alertDialog:Landroid/app/AlertDialog;

    .line 76
    iput-object v2, p0, Lcom/applifier/impact/android/ApplifierImpact;->_pauseScreenTimer:Ljava/util/TimerTask;

    .line 77
    iput-object v2, p0, Lcom/applifier/impact/android/ApplifierImpact;->_pauseTimer:Ljava/util/Timer;

    .line 78
    iput-object v2, p0, Lcom/applifier/impact/android/ApplifierImpact;->_campaignRefreshTimerTask:Ljava/util/TimerTask;

    .line 79
    iput-object v2, p0, Lcom/applifier/impact/android/ApplifierImpact;->_campaignRefreshTimer:Ljava/util/Timer;

    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_campaignRefreshTimerDeadline:J

    .line 83
    iput-object v2, p0, Lcom/applifier/impact/android/ApplifierImpact;->_impactListener:Lcom/applifier/impact/android/IApplifierImpactListener;

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/applifier/impact/android/ApplifierImpact;->init(Landroid/app/Activity;Ljava/lang/String;Lcom/applifier/impact/android/IApplifierImpactListener;)V

    .line 92
    return-void
.end method

.method static synthetic access$0(Lcom/applifier/impact/android/ApplifierImpact;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/applifier/impact/android/ApplifierImpact;->_showingImpact:Z

    return-void
.end method

.method static synthetic access$1(Lcom/applifier/impact/android/ApplifierImpact;)Lcom/applifier/impact/android/IApplifierImpactListener;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_impactListener:Lcom/applifier/impact/android/IApplifierImpactListener;

    return-object v0
.end method

.method static synthetic access$10(Lcom/applifier/impact/android/ApplifierImpact;)Z
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_showingImpact:Z

    return v0
.end method

.method static synthetic access$11(Lcom/applifier/impact/android/ApplifierImpact;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/applifier/impact/android/ApplifierImpact;->_refreshAfterShowImpact:Z

    return-void
.end method

.method static synthetic access$2(Lcom/applifier/impact/android/ApplifierImpact;)V
    .locals 0
    .parameter

    .prologue
    .line 817
    invoke-direct {p0}, Lcom/applifier/impact/android/ApplifierImpact;->refreshCampaigns()V

    return-void
.end method

.method static synthetic access$3(Lcom/applifier/impact/android/ApplifierImpact;)V
    .locals 0
    .parameter

    .prologue
    .line 798
    invoke-direct {p0}, Lcom/applifier/impact/android/ApplifierImpact;->createPauseScreenTimer()V

    return-void
.end method

.method static synthetic access$5(Lcom/applifier/impact/android/ApplifierImpact;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_alertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$6(Lcom/applifier/impact/android/ApplifierImpact;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/applifier/impact/android/ApplifierImpact;->_initialized:Z

    return-void
.end method

.method static synthetic access$7(Lcom/applifier/impact/android/ApplifierImpact;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/applifier/impact/android/ApplifierImpact;->_impactReadySent:Z

    return-void
.end method

.method static synthetic access$8(Lcom/applifier/impact/android/ApplifierImpact;)V
    .locals 0
    .parameter

    .prologue
    .line 660
    invoke-direct {p0}, Lcom/applifier/impact/android/ApplifierImpact;->close()V

    return-void
.end method

.method static synthetic access$9(Lcom/applifier/impact/android/ApplifierImpact;)V
    .locals 0
    .parameter

    .prologue
    .line 784
    invoke-direct {p0}, Lcom/applifier/impact/android/ApplifierImpact;->cancelPauseScreenTimer()V

    return-void
.end method

.method private cancelPauseScreenTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 785
    iget-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_pauseScreenTimer:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_pauseScreenTimer:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 789
    :cond_0
    iget-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_pauseTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 790
    iget-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_pauseTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 791
    iget-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_pauseTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 794
    :cond_1
    iput-object v1, p0, Lcom/applifier/impact/android/ApplifierImpact;->_pauseScreenTimer:Ljava/util/TimerTask;

    .line 795
    iput-object v1, p0, Lcom/applifier/impact/android/ApplifierImpact;->_pauseTimer:Ljava/util/Timer;

    .line 796
    return-void
.end method

.method private close()V
    .locals 2

    .prologue
    .line 661
    invoke-direct {p0}, Lcom/applifier/impact/android/ApplifierImpact;->cancelPauseScreenTimer()V

    .line 662
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 663
    new-instance v0, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;-><init>(Lcom/applifier/impact/android/ApplifierImpact;Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;)V

    .line 664
    .local v0, closeRunner:Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 666
    .end local v0           #closeRunner:Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;
    :cond_0
    return-void
.end method

.method private createPauseScreenTimer()V
    .locals 6

    .prologue
    .line 799
    new-instance v0, Lcom/applifier/impact/android/ApplifierImpact$5;

    invoke-direct {v0, p0}, Lcom/applifier/impact/android/ApplifierImpact$5;-><init>(Lcom/applifier/impact/android/ApplifierImpact;)V

    iput-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_pauseScreenTimer:Ljava/util/TimerTask;

    .line 813
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_pauseTimer:Ljava/util/Timer;

    .line 814
    iget-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_pauseTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/applifier/impact/android/ApplifierImpact;->_pauseScreenTimer:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x32

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 815
    return-void
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const-string v0, "1100"

    return-object v0
.end method

.method private init(Landroid/app/Activity;Ljava/lang/String;Lcom/applifier/impact/android/IApplifierImpactListener;)V
    .locals 4
    .parameter "activity"
    .parameter "gameId"
    .parameter "listener"

    .prologue
    .line 620
    iget-boolean v2, p0, Lcom/applifier/impact/android/ApplifierImpact;->_initialized:Z

    if-eqz v2, :cond_0

    .line 658
    :goto_0
    return-void

    .line 622
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 623
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "gameId is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 626
    :cond_1
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 627
    .local v1, gameIdInteger:I
    if-gtz v1, :cond_2

    .line 628
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "gameId is invalid"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    .end local v1           #gameIdInteger:I
    :catch_0
    move-exception v0

    .line 631
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "gameId does not parse as an integer"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 635
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v1       #gameIdInteger:I
    :cond_2
    sput-object p0, Lcom/applifier/impact/android/ApplifierImpact;->instance:Lcom/applifier/impact/android/ApplifierImpact;

    .line 636
    invoke-virtual {p0, p3}, Lcom/applifier/impact/android/ApplifierImpact;->setImpactListener(Lcom/applifier/impact/android/IApplifierImpactListener;)V

    .line 638
    sput-object p2, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->IMPACT_GAME_ID:Ljava/lang/String;

    .line 639
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->BASE_ACTIVITY:Ljava/lang/ref/WeakReference;

    .line 640
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Ljava/lang/ref/WeakReference;

    .line 642
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Is debuggable="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/applifier/impact/android/ApplifierImpactUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 645
    new-instance v2, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;

    invoke-direct {v2}, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;-><init>()V

    sput-object v2, Lcom/applifier/impact/android/ApplifierImpact;->cachemanager:Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;

    .line 646
    sget-object v2, Lcom/applifier/impact/android/ApplifierImpact;->cachemanager:Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;

    invoke-virtual {v2, p0}, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->setDownloadListener(Lcom/applifier/impact/android/cache/IApplifierImpactCacheListener;)V

    .line 647
    new-instance v2, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    invoke-direct {v2}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;-><init>()V

    sput-object v2, Lcom/applifier/impact/android/ApplifierImpact;->webdata:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    .line 648
    sget-object v2, Lcom/applifier/impact/android/ApplifierImpact;->webdata:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    invoke-virtual {v2, p0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->setWebDataListener(Lcom/applifier/impact/android/webapp/IApplifierImpactWebDataListener;)V

    .line 650
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/applifier/impact/android/ApplifierImpact$2;

    invoke-direct {v3, p0, p1}, Lcom/applifier/impact/android/ApplifierImpact$2;-><init>(Lcom/applifier/impact/android/ApplifierImpact;Landroid/app/Activity;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 657
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private initCache()V
    .locals 2

    .prologue
    .line 712
    iget-boolean v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_initialized:Z

    if-eqz v0, :cond_0

    .line 713
    const-string v0, "Init cache"

    invoke-static {v0, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 715
    sget-object v0, Lcom/applifier/impact/android/ApplifierImpact;->cachemanager:Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;

    sget-object v1, Lcom/applifier/impact/android/ApplifierImpact;->webdata:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    invoke-virtual {v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->getVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->updateCache(Ljava/util/ArrayList;)V

    .line 717
    :cond_0
    return-void
.end method

.method public static isSupported()Z
    .locals 2

    .prologue
    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 102
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private open(Ljava/lang/String;)V
    .locals 8
    .parameter "view"

    .prologue
    .line 669
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 670
    .local v2, dataOk:Ljava/lang/Boolean;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 673
    .local v1, data:Lorg/json/JSONObject;
    :try_start_0
    invoke-static {}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->getZoneManager()Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->getCurrentZone()Lcom/applifier/impact/android/zone/ApplifierImpactZone;

    move-result-object v5

    .line 675
    .local v5, zone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    const-string v6, "action"

    const-string v7, "open"

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 676
    const-string v6, "zone"

    invoke-virtual {v5}, Lcom/applifier/impact/android/zone/ApplifierImpactZone;->getZoneId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 678
    invoke-virtual {v5}, Lcom/applifier/impact/android/zone/ApplifierImpactZone;->isIncentivized()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 679
    check-cast v5, Lcom/applifier/impact/android/zone/ApplifierImpactIncentivizedZone;

    .end local v5           #zone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    invoke-virtual {v5}, Lcom/applifier/impact/android/zone/ApplifierImpactIncentivizedZone;->itemManager()Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;

    move-result-object v4

    .line 680
    .local v4, itemManager:Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;
    const-string v6, "itemKey"

    invoke-virtual {v4}, Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;->getCurrentItem()Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    .end local v4           #itemManager:Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;
    :cond_0
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "open() dataOk: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 689
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz p1, :cond_2

    .line 690
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "open() opening with view:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and data:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 692
    sget-object v6, Lcom/applifier/impact/android/ApplifierImpact;->mainview:Lcom/applifier/impact/android/view/ApplifierImpactMainView;

    if-eqz v6, :cond_2

    .line 693
    sget-object v6, Lcom/applifier/impact/android/ApplifierImpact;->mainview:Lcom/applifier/impact/android/view/ApplifierImpactMainView;

    invoke-virtual {v6, p1, v1}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->openImpact(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 695
    invoke-static {}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->getZoneManager()Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->getCurrentZone()Lcom/applifier/impact/android/zone/ApplifierImpactZone;

    move-result-object v0

    .line 696
    .local v0, currentZone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    invoke-virtual {v0}, Lcom/applifier/impact/android/zone/ApplifierImpactZone;->noOfferScreen()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 697
    invoke-direct {p0}, Lcom/applifier/impact/android/ApplifierImpact;->playVideo()V

    .line 700
    :cond_1
    iget-object v6, p0, Lcom/applifier/impact/android/ApplifierImpact;->_impactListener:Lcom/applifier/impact/android/IApplifierImpactListener;

    if-eqz v6, :cond_2

    .line 701
    iget-object v6, p0, Lcom/applifier/impact/android/ApplifierImpact;->_impactListener:Lcom/applifier/impact/android/IApplifierImpactListener;

    invoke-interface {v6}, Lcom/applifier/impact/android/IApplifierImpactListener;->onImpactOpen()V

    .line 704
    .end local v0           #currentZone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    :cond_2
    return-void

    .line 683
    :catch_0
    move-exception v3

    .line 684
    .local v3, e:Ljava/lang/Exception;
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method private openPlayStoreAsIntent(Ljava/lang/String;)V
    .locals 6
    .parameter "playStoreId"

    .prologue
    .line 594
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Opening playstore activity with storeId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 596
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 598
    :try_start_0
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "market://details?id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 600
    :catch_0
    move-exception v0

    .line 601
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Couldn\'t start PlayStore intent!"

    invoke-static {v1, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private openPlayStoreInBrowser(Ljava/lang/String;)V
    .locals 5
    .parameter "url"

    .prologue
    .line 607
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not open PlayStore activity, opening in browser with url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 609
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 611
    :try_start_0
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    :cond_0
    :goto_0
    return-void

    .line 613
    :catch_0
    move-exception v0

    .line 614
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Couldn\'t start browser intent!"

    invoke-static {v1, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private playVideo()V
    .locals 2

    .prologue
    .line 737
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/applifier/impact/android/ApplifierImpact;->playVideo(J)V

    .line 738
    return-void
.end method

.method private playVideo(J)V
    .locals 4
    .parameter "delay"

    .prologue
    .line 741
    const-string v2, "Running threaded"

    invoke-static {v2, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 743
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    .line 744
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 745
    .local v0, delayTimer:Ljava/util/Timer;
    new-instance v2, Lcom/applifier/impact/android/ApplifierImpact$4;

    invoke-direct {v2, p0}, Lcom/applifier/impact/android/ApplifierImpact$4;-><init>(Lcom/applifier/impact/android/ApplifierImpact;)V

    invoke-virtual {v0, v2, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 760
    .end local v0           #delayTimer:Ljava/util/Timer;
    :cond_0
    :goto_0
    return-void

    .line 756
    :cond_1
    new-instance v1, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactPlayVideoRunner;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactPlayVideoRunner;-><init>(Lcom/applifier/impact/android/ApplifierImpact;Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactPlayVideoRunner;)V

    .line 757
    .local v1, playVideoRunner:Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactPlayVideoRunner;
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 758
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private refreshCampaigns()V
    .locals 4

    .prologue
    .line 818
    iget-boolean v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_refreshAfterShowImpact:Z

    if-eqz v0, :cond_1

    .line 819
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_refreshAfterShowImpact:Z

    .line 820
    const-string v0, "Starting delayed ad plan refresh"

    invoke-static {v0, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 821
    sget-object v0, Lcom/applifier/impact/android/ApplifierImpact;->webdata:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    invoke-virtual {v0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->initCampaigns()Z

    .line 849
    :cond_0
    :goto_0
    return-void

    .line 825
    :cond_1
    iget-wide v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_campaignRefreshTimerDeadline:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/applifier/impact/android/ApplifierImpact;->_campaignRefreshTimerDeadline:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 826
    invoke-direct {p0}, Lcom/applifier/impact/android/ApplifierImpact;->removeCampaignRefreshTimer()V

    .line 827
    const-string v0, "Refreshing ad plan from server due to timer deadline"

    invoke-static {v0, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 828
    sget-object v0, Lcom/applifier/impact/android/ApplifierImpact;->webdata:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    invoke-virtual {v0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->initCampaigns()Z

    goto :goto_0

    .line 832
    :cond_2
    sget v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CAMPAIGN_REFRESH_VIEWS_MAX:I

    if-lez v0, :cond_3

    .line 833
    sget v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CAMPAIGN_REFRESH_VIEWS_COUNT:I

    sget v1, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CAMPAIGN_REFRESH_VIEWS_MAX:I

    if-lt v0, v1, :cond_3

    .line 834
    const-string v0, "Refreshing ad plan from server due to endscreen limit"

    invoke-static {v0, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 835
    sget-object v0, Lcom/applifier/impact/android/ApplifierImpact;->webdata:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    invoke-virtual {v0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->initCampaigns()Z

    goto :goto_0

    .line 840
    :cond_3
    sget-object v0, Lcom/applifier/impact/android/ApplifierImpact;->webdata:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/applifier/impact/android/ApplifierImpact;->webdata:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    invoke-virtual {v0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->getVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 841
    sget-object v0, Lcom/applifier/impact/android/ApplifierImpact;->webdata:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    invoke-virtual {v0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->getViewableVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 842
    const-string v0, "All available videos watched, refreshing ad plan from server"

    invoke-static {v0, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 843
    sget-object v0, Lcom/applifier/impact/android/ApplifierImpact;->webdata:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    invoke-virtual {v0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->initCampaigns()Z

    goto :goto_0

    .line 847
    :cond_4
    const-string v0, "Unable to read video data to determine if ad plans should be refreshed"

    invoke-static {v0, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private removeCampaignRefreshTimer()V
    .locals 2

    .prologue
    .line 876
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_campaignRefreshTimerDeadline:J

    .line 878
    iget-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_campaignRefreshTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_campaignRefreshTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 881
    :cond_0
    return-void
.end method

.method private sendImpactReadyEvent()V
    .locals 2

    .prologue
    .line 720
    iget-boolean v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_impactReadySent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_impactListener:Lcom/applifier/impact/android/IApplifierImpactListener;

    if-eqz v0, :cond_0

    .line 721
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/applifier/impact/android/ApplifierImpact$3;

    invoke-direct {v1, p0}, Lcom/applifier/impact/android/ApplifierImpact$3;-><init>(Lcom/applifier/impact/android/ApplifierImpact;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 730
    :cond_0
    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 1
    .parameter "debugModeEnabled"

    .prologue
    .line 106
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->IMPACT_DEBUG_MODE:Ljava/lang/Boolean;

    .line 107
    return-void
.end method

.method public static setTestDeveloperId(Ljava/lang/String;)V
    .locals 0
    .parameter "testDeveloperId"

    .prologue
    .line 114
    sput-object p0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->TEST_DEVELOPER_ID:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public static setTestMode(Z)V
    .locals 1
    .parameter "testModeEnabled"

    .prologue
    .line 110
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->TESTMODE_ENABLED:Ljava/lang/Boolean;

    .line 111
    return-void
.end method

.method public static setTestOptionsId(Ljava/lang/String;)V
    .locals 0
    .parameter "testOptionsId"

    .prologue
    .line 118
    sput-object p0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->TEST_OPTIONS_ID:Ljava/lang/String;

    .line 119
    return-void
.end method

.method private setup()V
    .locals 0

    .prologue
    .line 707
    invoke-direct {p0}, Lcom/applifier/impact/android/ApplifierImpact;->initCache()V

    .line 708
    invoke-direct {p0}, Lcom/applifier/impact/android/ApplifierImpact;->setupViews()V

    .line 709
    return-void
.end method

.method private setupCampaignRefreshTimer()V
    .locals 4

    .prologue
    .line 852
    invoke-direct {p0}, Lcom/applifier/impact/android/ApplifierImpact;->removeCampaignRefreshTimer()V

    .line 854
    sget v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CAMPAIGN_REFRESH_SECONDS:I

    if-lez v0, :cond_0

    .line 855
    new-instance v0, Lcom/applifier/impact/android/ApplifierImpact$6;

    invoke-direct {v0, p0}, Lcom/applifier/impact/android/ApplifierImpact$6;-><init>(Lcom/applifier/impact/android/ApplifierImpact;)V

    iput-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_campaignRefreshTimerTask:Ljava/util/TimerTask;

    .line 868
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget v2, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CAMPAIGN_REFRESH_SECONDS:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_campaignRefreshTimerDeadline:J

    .line 870
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_campaignRefreshTimer:Ljava/util/Timer;

    .line 871
    iget-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_campaignRefreshTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/applifier/impact/android/ApplifierImpact;->_campaignRefreshTimerTask:Ljava/util/TimerTask;

    sget v2, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CAMPAIGN_REFRESH_SECONDS:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 873
    :cond_0
    return-void
.end method

.method private setupViews()V
    .locals 2

    .prologue
    .line 733
    new-instance v0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;

    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;-><init>(Landroid/content/Context;Lcom/applifier/impact/android/view/IApplifierImpactMainViewListener;)V

    sput-object v0, Lcom/applifier/impact/android/ApplifierImpact;->mainview:Lcom/applifier/impact/android/view/ApplifierImpactMainView;

    .line 734
    return-void
.end method

.method private startImpactFullscreenActivity()V
    .locals 6

    .prologue
    .line 763
    new-instance v3, Landroid/content/Intent;

    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/applifier/impact/android/view/ApplifierImpactFullscreenActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 764
    .local v3, newIntent:Landroid/content/Intent;
    const/high16 v2, 0x1001

    .line 766
    .local v2, flags:I
    invoke-static {}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->getZoneManager()Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->getCurrentZone()Lcom/applifier/impact/android/zone/ApplifierImpactZone;

    move-result-object v0

    .line 767
    .local v0, currentZone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    invoke-virtual {v0}, Lcom/applifier/impact/android/zone/ApplifierImpactZone;->openAnimated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 768
    const/high16 v2, 0x1000

    .line 771
    :cond_0
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 774
    :try_start_0
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getBaseActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 782
    :goto_0
    return-void

    .line 776
    :catch_0
    move-exception v1

    .line 777
    .local v1, e:Landroid/content/ActivityNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not find activity: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 779
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v1

    .line 780
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Weird error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public canShowCampaigns()Z
    .locals 1

    .prologue
    .line 239
    sget-object v0, Lcom/applifier/impact/android/ApplifierImpact;->mainview:Lcom/applifier/impact/android/view/ApplifierImpactMainView;

    if-eqz v0, :cond_0

    .line 240
    sget-object v0, Lcom/applifier/impact/android/ApplifierImpact;->mainview:Lcom/applifier/impact/android/view/ApplifierImpactMainView;

    iget-object v0, v0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->webview:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    if-eqz v0, :cond_0

    .line 241
    sget-object v0, Lcom/applifier/impact/android/ApplifierImpact;->mainview:Lcom/applifier/impact/android/view/ApplifierImpactMainView;

    iget-object v0, v0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->webview:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    invoke-virtual {v0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;->isWebAppLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-boolean v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_webAppLoaded:Z

    if-eqz v0, :cond_0

    .line 243
    sget-object v0, Lcom/applifier/impact/android/ApplifierImpact;->webdata:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    if-eqz v0, :cond_0

    .line 244
    sget-object v0, Lcom/applifier/impact/android/ApplifierImpact;->webdata:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    invoke-virtual {v0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->getViewableVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    sget-object v0, Lcom/applifier/impact/android/ApplifierImpact;->webdata:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    invoke-virtual {v0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->getViewableVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 239
    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canShowImpact()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_showingImpact:Z

    if-nez v0, :cond_0

    .line 250
    sget-object v0, Lcom/applifier/impact/android/ApplifierImpact;->mainview:Lcom/applifier/impact/android/view/ApplifierImpactMainView;

    if-eqz v0, :cond_0

    .line 251
    sget-object v0, Lcom/applifier/impact/android/ApplifierImpact;->mainview:Lcom/applifier/impact/android/view/ApplifierImpactMainView;

    iget-object v0, v0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->webview:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    if-eqz v0, :cond_0

    .line 252
    sget-object v0, Lcom/applifier/impact/android/ApplifierImpact;->mainview:Lcom/applifier/impact/android/view/ApplifierImpactMainView;

    iget-object v0, v0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->webview:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    invoke-virtual {v0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;->isWebAppLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-boolean v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_webAppLoaded:Z

    if-eqz v0, :cond_0

    .line 254
    sget-object v0, Lcom/applifier/impact/android/ApplifierImpact;->webdata:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    if-eqz v0, :cond_0

    .line 255
    sget-object v0, Lcom/applifier/impact/android/ApplifierImpact;->webdata:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    invoke-virtual {v0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->getVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    sget-object v0, Lcom/applifier/impact/android/ApplifierImpact;->webdata:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    invoke-virtual {v0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->getVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 249
    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public changeActivity(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 133
    if-nez p1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Ljava/lang/ref/WeakReference;

    .line 139
    if-eqz p1, :cond_4

    .line 140
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 141
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.applifier.impact.android.view.ApplifierImpactFullscreenActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 144
    const/4 v0, 0x0

    .line 146
    .local v0, view:Ljava/lang/String;
    sget-object v1, Lcom/applifier/impact/android/ApplifierImpact;->mainview:Lcom/applifier/impact/android/view/ApplifierImpactMainView;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/applifier/impact/android/ApplifierImpact;->mainview:Lcom/applifier/impact/android/view/ApplifierImpactMainView;

    iget-object v1, v1, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->webview:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    if-eqz v1, :cond_3

    .line 147
    sget-object v1, Lcom/applifier/impact/android/ApplifierImpact;->mainview:Lcom/applifier/impact/android/view/ApplifierImpactMainView;

    iget-object v1, v1, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->webview:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    invoke-virtual {v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;->getWebViewCurrentView()Ljava/lang/String;

    move-result-object v0

    .line 149
    iget-boolean v1, p0, Lcom/applifier/impact/android/ApplifierImpact;->_openRequestFromDeveloper:Z

    if-eqz v1, :cond_2

    .line 150
    const-string v0, "start"

    .line 151
    const-string v1, "changeActivity: This open request is from the developer, setting start view"

    invoke-static {v1, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    :cond_2
    if-eqz v0, :cond_3

    .line 155
    invoke-direct {p0, v0}, Lcom/applifier/impact/android/ApplifierImpact;->open(Ljava/lang/String;)V

    .line 158
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/applifier/impact/android/ApplifierImpact;->_openRequestFromDeveloper:Z

    goto :goto_0

    .line 161
    .end local v0           #view:Ljava/lang/String;
    :cond_4
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->BASE_ACTIVITY:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public getCurrentRewardItemKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 315
    invoke-static {}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->getZoneManager()Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->getCurrentZone()Lcom/applifier/impact/android/zone/ApplifierImpactZone;

    move-result-object v1

    .line 316
    .local v1, zone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    invoke-virtual {v1}, Lcom/applifier/impact/android/zone/ApplifierImpactZone;->isIncentivized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 317
    check-cast v1, Lcom/applifier/impact/android/zone/ApplifierImpactIncentivizedZone;

    .end local v1           #zone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    invoke-virtual {v1}, Lcom/applifier/impact/android/zone/ApplifierImpactIncentivizedZone;->itemManager()Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;

    move-result-object v0

    .line 318
    .local v0, itemManager:Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;
    invoke-virtual {v0}, Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;->getCurrentItem()Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 320
    .end local v0           #itemManager:Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;
    :goto_0
    return-object v2

    .restart local v1       #zone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDefaultRewardItemKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 306
    invoke-static {}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->getZoneManager()Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->getCurrentZone()Lcom/applifier/impact/android/zone/ApplifierImpactZone;

    move-result-object v1

    .line 307
    .local v1, zone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    invoke-virtual {v1}, Lcom/applifier/impact/android/zone/ApplifierImpactZone;->isIncentivized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    check-cast v1, Lcom/applifier/impact/android/zone/ApplifierImpactIncentivizedZone;

    .end local v1           #zone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    invoke-virtual {v1}, Lcom/applifier/impact/android/zone/ApplifierImpactIncentivizedZone;->itemManager()Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;

    move-result-object v0

    .line 309
    .local v0, itemManager:Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;
    invoke-virtual {v0}, Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;->getDefaultItem()Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 311
    .end local v0           #itemManager:Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;
    :goto_0
    return-object v2

    .restart local v1       #zone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getRewardItemDetailsWithKey(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .parameter "rewardItemKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 345
    invoke-static {}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->getZoneManager()Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->getCurrentZone()Lcom/applifier/impact/android/zone/ApplifierImpactZone;

    move-result-object v2

    .line 346
    .local v2, zone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    invoke-virtual {v2}, Lcom/applifier/impact/android/zone/ApplifierImpactZone;->isIncentivized()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 347
    check-cast v2, Lcom/applifier/impact/android/zone/ApplifierImpactIncentivizedZone;

    .end local v2           #zone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    invoke-virtual {v2}, Lcom/applifier/impact/android/zone/ApplifierImpactIncentivizedZone;->itemManager()Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;

    move-result-object v0

    .line 348
    .local v0, itemManager:Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;
    invoke-virtual {v0, p1}, Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;->getItem(Ljava/lang/String;)Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;

    move-result-object v1

    .line 349
    .local v1, rewardItem:Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;
    if-eqz v1, :cond_0

    .line 350
    invoke-virtual {v1}, Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;->getDetails()Ljava/util/Map;

    move-result-object v3

    .line 356
    .end local v0           #itemManager:Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;
    .end local v1           #rewardItem:Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;
    :goto_0
    return-object v3

    .line 353
    .restart local v0       #itemManager:Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;
    .restart local v1       #rewardItem:Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not fetch reward item: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 356
    .end local v0           #itemManager:Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;
    .end local v1           #rewardItem:Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getRewardItemKeys()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    invoke-static {}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->getZoneManager()Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->getCurrentZone()Lcom/applifier/impact/android/zone/ApplifierImpactZone;

    move-result-object v4

    .line 292
    .local v4, zone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    invoke-virtual {v4}, Lcom/applifier/impact/android/zone/ApplifierImpactZone;->isIncentivized()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 293
    check-cast v4, Lcom/applifier/impact/android/zone/ApplifierImpactIncentivizedZone;

    .end local v4           #zone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    invoke-virtual {v4}, Lcom/applifier/impact/android/zone/ApplifierImpactIncentivizedZone;->itemManager()Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;

    move-result-object v0

    .line 294
    .local v0, itemManager:Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;
    invoke-virtual {v0}, Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;->allItems()Ljava/util/ArrayList;

    move-result-object v3

    .line 295
    .local v3, rewardItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .local v2, rewardItemKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 302
    .end local v0           #itemManager:Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;
    .end local v2           #rewardItemKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #rewardItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;>;"
    :goto_1
    return-object v2

    .line 296
    .restart local v0       #itemManager:Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;
    .restart local v2       #rewardItemKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #rewardItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;>;"
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;

    .line 297
    .local v1, rewardItem:Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;
    invoke-virtual {v1}, Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 302
    .end local v0           #itemManager:Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;
    .end local v1           #rewardItem:Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;
    .end local v2           #rewardItemKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #rewardItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;>;"
    .restart local v4       #zone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public hasMultipleRewardItems()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 282
    invoke-static {}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->getZoneManager()Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->getCurrentZone()Lcom/applifier/impact/android/zone/ApplifierImpactZone;

    move-result-object v1

    .line 283
    .local v1, zone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    invoke-virtual {v1}, Lcom/applifier/impact/android/zone/ApplifierImpactZone;->isIncentivized()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 284
    check-cast v1, Lcom/applifier/impact/android/zone/ApplifierImpactIncentivizedZone;

    .end local v1           #zone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    invoke-virtual {v1}, Lcom/applifier/impact/android/zone/ApplifierImpactIncentivizedZone;->itemManager()Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;

    move-result-object v0

    .line 285
    .local v0, itemManager:Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;
    invoke-virtual {v0}, Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;->itemCount()I

    move-result v4

    if-le v4, v2, :cond_0

    .line 287
    .end local v0           #itemManager:Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;
    :goto_0
    return v2

    .restart local v0       #itemManager:Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;
    :cond_0
    move v2, v3

    .line 285
    goto :goto_0

    .end local v0           #itemManager:Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;
    .restart local v1       #zone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    :cond_1
    move v2, v3

    .line 287
    goto :goto_0
.end method

.method public hideImpact()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_showingImpact:Z

    if-eqz v0, :cond_0

    .line 168
    invoke-direct {p0}, Lcom/applifier/impact/android/ApplifierImpact;->close()V

    .line 169
    const/4 v0, 0x1

    .line 172
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAllCampaignsReady()V
    .locals 1

    .prologue
    .line 414
    const-string v0, "Listener got \"All campaigns ready.\""

    invoke-static {v0, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 415
    return-void
.end method

.method public onCampaignReady(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;)V
    .locals 2
    .parameter "campaignHandler"

    .prologue
    .line 404
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->getCampaign()Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    move-result-object v0

    if-nez v0, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got onCampaignReady: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaignHandler;->getCampaign()Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 408
    invoke-virtual {p0}, Lcom/applifier/impact/android/ApplifierImpact;->canShowCampaigns()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    invoke-direct {p0}, Lcom/applifier/impact/android/ApplifierImpact;->sendImpactReadyEvent()V

    goto :goto_0
.end method

.method public onCampaignUpdateStarted()V
    .locals 1

    .prologue
    .line 399
    const-string v0, "Campaign updates started."

    invoke-static {v0, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 400
    return-void
.end method

.method public onCloseImpactView(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/applifier/impact/android/ApplifierImpact;->hideImpact()Z

    .line 518
    return-void
.end method

.method public onMainViewAction(Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;)V
    .locals 3
    .parameter "action"

    .prologue
    .line 364
    invoke-static {}, Lcom/applifier/impact/android/ApplifierImpact;->$SWITCH_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewAction()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 366
    :pswitch_0
    iget-boolean v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_showingImpact:Z

    if-eqz v0, :cond_0

    .line 367
    invoke-direct {p0}, Lcom/applifier/impact/android/ApplifierImpact;->close()V

    goto :goto_0

    .line 371
    :pswitch_1
    iget-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_impactListener:Lcom/applifier/impact/android/IApplifierImpactListener;

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_impactListener:Lcom/applifier/impact/android/IApplifierImpactListener;

    invoke-interface {v0}, Lcom/applifier/impact/android/IApplifierImpactListener;->onVideoStarted()V

    .line 373
    :cond_1
    invoke-direct {p0}, Lcom/applifier/impact/android/ApplifierImpact;->cancelPauseScreenTimer()V

    goto :goto_0

    .line 376
    :pswitch_2
    sget v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CAMPAIGN_REFRESH_VIEWS_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CAMPAIGN_REFRESH_VIEWS_COUNT:I

    .line 377
    iget-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_impactListener:Lcom/applifier/impact/android/IApplifierImpactListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-virtual {v0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->isViewed()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    sget-object v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    sget-object v1, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;->VIEWED:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    invoke-virtual {v0, v1}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->setCampaignStatus(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;)V

    .line 379
    iget-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_impactListener:Lcom/applifier/impact/android/IApplifierImpactListener;

    invoke-virtual {p0}, Lcom/applifier/impact/android/ApplifierImpact;->getCurrentRewardItemKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/applifier/impact/android/IApplifierImpactListener;->onVideoCompleted(Ljava/lang/String;Z)V

    goto :goto_0

    .line 383
    :pswitch_3
    sget v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CAMPAIGN_REFRESH_VIEWS_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CAMPAIGN_REFRESH_VIEWS_COUNT:I

    .line 384
    iget-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_impactListener:Lcom/applifier/impact/android/IApplifierImpactListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-virtual {v0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->isViewed()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    sget-object v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    sget-object v1, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;->VIEWED:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    invoke-virtual {v0, v1}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->setCampaignStatus(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;)V

    .line 386
    iget-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_impactListener:Lcom/applifier/impact/android/IApplifierImpactListener;

    invoke-virtual {p0}, Lcom/applifier/impact/android/ApplifierImpact;->getCurrentRewardItemKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/applifier/impact/android/IApplifierImpactListener;->onVideoCompleted(Ljava/lang/String;Z)V

    goto :goto_0

    .line 390
    :pswitch_4
    const-string v0, "Retrying video play, because something went wrong."

    invoke-static {v0, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 391
    const-wide/16 v0, 0x12c

    invoke-direct {p0, v0, v1}, Lcom/applifier/impact/android/ApplifierImpact;->playVideo(J)V

    goto :goto_0

    .line 364
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onOpenPlayStore(Lorg/json/JSONObject;)V
    .locals 5
    .parameter "data"

    .prologue
    .line 544
    const-string v4, "onOpenPlayStore"

    invoke-static {v4, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 546
    if-eqz p1, :cond_3

    .line 548
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 550
    const/4 v3, 0x0

    .line 551
    .local v3, playStoreId:Ljava/lang/String;
    const/4 v1, 0x0

    .line 552
    .local v1, clickUrl:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 554
    .local v0, bypassAppSheet:Ljava/lang/Boolean;
    const-string v4, "iTunesId"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 556
    :try_start_0
    const-string v4, "iTunesId"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 563
    :cond_0
    :goto_0
    const-string v4, "clickUrl"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 565
    :try_start_1
    const-string v4, "clickUrl"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 572
    :cond_1
    :goto_1
    const-string v4, "bypassAppSheet"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 574
    :try_start_2
    const-string v4, "bypassAppSheet"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 581
    :cond_2
    :goto_2
    if-eqz v3, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_4

    .line 582
    invoke-direct {p0, v3}, Lcom/applifier/impact/android/ApplifierImpact;->openPlayStoreAsIntent(Ljava/lang/String;)V

    .line 588
    .end local v0           #bypassAppSheet:Ljava/lang/Boolean;
    .end local v1           #clickUrl:Ljava/lang/String;
    .end local v3           #playStoreId:Ljava/lang/String;
    :cond_3
    :goto_3
    return-void

    .line 558
    .restart local v0       #bypassAppSheet:Ljava/lang/Boolean;
    .restart local v1       #clickUrl:Ljava/lang/String;
    .restart local v3       #playStoreId:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 559
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "Could not fetch playStoreId"

    invoke-static {v4, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 567
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 568
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v4, "Could not fetch clickUrl"

    invoke-static {v4, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 576
    .end local v2           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 577
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v4, "Could not fetch bypassAppSheet"

    invoke-static {v4, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 584
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    if-eqz v1, :cond_3

    .line 585
    invoke-direct {p0, v1}, Lcom/applifier/impact/android/ApplifierImpact;->openPlayStoreInBrowser(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onPauseVideo(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 513
    return-void
.end method

.method public onPlayVideo(Lorg/json/JSONObject;)V
    .locals 5
    .parameter "data"

    .prologue
    .line 474
    const-string v3, "onPlayVideo"

    invoke-static {v3, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 475
    const-string v3, "campaignId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 476
    const/4 v0, 0x0

    .line 479
    .local v0, campaignId:Ljava/lang/String;
    :try_start_0
    const-string v3, "campaignId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 485
    :goto_0
    if-eqz v0, :cond_2

    .line 486
    sget-object v3, Lcom/applifier/impact/android/ApplifierImpact;->webdata:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/applifier/impact/android/ApplifierImpact;->webdata:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    invoke-virtual {v3, v0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->getCampaignById(Ljava/lang/String;)Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 487
    sget-object v3, Lcom/applifier/impact/android/ApplifierImpact;->webdata:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    invoke-virtual {v3, v0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->getCampaignById(Ljava/lang/String;)Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    move-result-object v3

    sput-object v3, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    .line 490
    :cond_0
    sget-object v3, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    if-eqz v3, :cond_2

    .line 491
    sget-object v3, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-virtual {v3}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 492
    sget-object v3, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-virtual {v3}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 494
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 497
    .local v2, rewatch:Ljava/lang/Boolean;
    :try_start_1
    const-string v3, "rewatch"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 502
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onPlayVideo: Selected campaign="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-virtual {v4}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isViewed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-virtual {v4}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->isViewed()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 503
    sget-object v3, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-virtual {v3}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->isViewed()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    .line 504
    :cond_1
    invoke-direct {p0}, Lcom/applifier/impact/android/ApplifierImpact;->playVideo()V

    .line 509
    .end local v0           #campaignId:Ljava/lang/String;
    .end local v2           #rewatch:Ljava/lang/Boolean;
    :cond_2
    return-void

    .line 481
    .restart local v0       #campaignId:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 482
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Could not get campaignId"

    invoke-static {v3, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 499
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #rewatch:Ljava/lang/Boolean;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public onWebAppInitComplete(Lorg/json/JSONObject;)V
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x1

    .line 522
    const-string v3, "WebApp init complete"

    invoke-static {v3, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 523
    iput-boolean v4, p0, Lcom/applifier/impact/android/ApplifierImpact;->_webAppLoaded:Z

    .line 524
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 526
    .local v0, dataOk:Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/applifier/impact/android/ApplifierImpact;->canShowCampaigns()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 527
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 530
    .local v2, setViewData:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "action"

    const-string v4, "initComplete"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 537
    sget-object v3, Lcom/applifier/impact/android/ApplifierImpact;->mainview:Lcom/applifier/impact/android/view/ApplifierImpactMainView;

    iget-object v3, v3, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->webview:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    const-string v4, "start"

    invoke-virtual {v3, v4, v2}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;->setWebViewCurrentView(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 538
    invoke-direct {p0}, Lcom/applifier/impact/android/ApplifierImpact;->sendImpactReadyEvent()V

    .line 541
    .end local v2           #setViewData:Lorg/json/JSONObject;
    :cond_0
    return-void

    .line 532
    .restart local v2       #setViewData:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 533
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public onWebDataCompleted()V
    .locals 7

    .prologue
    .line 421
    const/4 v2, 0x0

    .line 422
    .local v2, jsonData:Lorg/json/JSONObject;
    const/4 v0, 0x0

    .line 423
    .local v0, dataFetchFailed:Z
    const/4 v3, 0x1

    .line 425
    .local v3, sdkIsCurrent:Z
    sget-object v4, Lcom/applifier/impact/android/ApplifierImpact;->webdata:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    invoke-virtual {v4}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->getData()Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/applifier/impact/android/ApplifierImpact;->webdata:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    invoke-virtual {v4}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->getData()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "data"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 427
    :try_start_0
    sget-object v4, Lcom/applifier/impact/android/ApplifierImpact;->webdata:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    invoke-virtual {v4}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->getData()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "data"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 433
    :goto_0
    if-nez v0, :cond_0

    .line 434
    invoke-direct {p0}, Lcom/applifier/impact/android/ApplifierImpact;->setupCampaignRefreshTimer()V

    .line 436
    const-string v4, "sdkIsCurrent"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 438
    :try_start_1
    const-string v4, "sdkIsCurrent"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 447
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    if-nez v3, :cond_1

    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/applifier/impact/android/ApplifierImpactUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 448
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/applifier/impact/android/ApplifierImpact;->_alertDialog:Landroid/app/AlertDialog;

    .line 449
    iget-object v4, p0, Lcom/applifier/impact/android/ApplifierImpact;->_alertDialog:Landroid/app/AlertDialog;

    const-string v5, "Applifier Impact"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 450
    iget-object v4, p0, Lcom/applifier/impact/android/ApplifierImpact;->_alertDialog:Landroid/app/AlertDialog;

    const-string v5, "You are not running the latest version of Applifier Impact android. Please update your version (this dialog won\'t appear in release builds)."

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 451
    iget-object v4, p0, Lcom/applifier/impact/android/ApplifierImpact;->_alertDialog:Landroid/app/AlertDialog;

    const-string v5, "OK"

    new-instance v6, Lcom/applifier/impact/android/ApplifierImpact$1;

    invoke-direct {v6, p0}, Lcom/applifier/impact/android/ApplifierImpact$1;-><init>(Lcom/applifier/impact/android/ApplifierImpact;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 458
    iget-object v4, p0, Lcom/applifier/impact/android/ApplifierImpact;->_alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 461
    :cond_1
    invoke-direct {p0}, Lcom/applifier/impact/android/ApplifierImpact;->setup()V

    .line 462
    return-void

    .line 429
    :catch_0
    move-exception v1

    .line 430
    .local v1, e:Ljava/lang/Exception;
    const/4 v0, 0x1

    goto :goto_0

    .line 440
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 441
    .restart local v1       #e:Ljava/lang/Exception;
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public onWebDataFailed()V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_impactListener:Lcom/applifier/impact/android/IApplifierImpactListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_impactReadySent:Z

    if-nez v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_impactListener:Lcom/applifier/impact/android/IApplifierImpactListener;

    invoke-interface {v0}, Lcom/applifier/impact/android/IApplifierImpactListener;->onCampaignsFetchFailed()V

    .line 468
    :cond_0
    return-void
.end method

.method public setDefaultRewardItemAsRewardItem()V
    .locals 3

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/applifier/impact/android/ApplifierImpact;->canShowImpact()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 336
    invoke-static {}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->getZoneManager()Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->getCurrentZone()Lcom/applifier/impact/android/zone/ApplifierImpactZone;

    move-result-object v1

    .line 337
    .local v1, zone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    invoke-virtual {v1}, Lcom/applifier/impact/android/zone/ApplifierImpactZone;->isIncentivized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 338
    check-cast v1, Lcom/applifier/impact/android/zone/ApplifierImpactIncentivizedZone;

    .end local v1           #zone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    invoke-virtual {v1}, Lcom/applifier/impact/android/zone/ApplifierImpactIncentivizedZone;->itemManager()Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;

    move-result-object v0

    .line 339
    .local v0, itemManager:Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;
    invoke-virtual {v0}, Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;->getDefaultItem()Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applifier/impact/android/item/ApplifierImpactRewardItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;->setCurrentItem(Ljava/lang/String;)Z

    .line 342
    .end local v0           #itemManager:Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;
    :cond_0
    return-void
.end method

.method public setImpactListener(Lcom/applifier/impact/android/IApplifierImpactListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/applifier/impact/android/ApplifierImpact;->_impactListener:Lcom/applifier/impact/android/IApplifierImpactListener;

    .line 130
    return-void
.end method

.method public setRewardItemKey(Ljava/lang/String;)Z
    .locals 3
    .parameter "rewardItemKey"

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/applifier/impact/android/ApplifierImpact;->canShowImpact()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 325
    invoke-static {}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->getZoneManager()Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->getCurrentZone()Lcom/applifier/impact/android/zone/ApplifierImpactZone;

    move-result-object v1

    .line 326
    .local v1, zone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    invoke-virtual {v1}, Lcom/applifier/impact/android/zone/ApplifierImpactZone;->isIncentivized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 327
    check-cast v1, Lcom/applifier/impact/android/zone/ApplifierImpactIncentivizedZone;

    .end local v1           #zone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    invoke-virtual {v1}, Lcom/applifier/impact/android/zone/ApplifierImpactIncentivizedZone;->itemManager()Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;

    move-result-object v0

    .line 328
    .local v0, itemManager:Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;
    invoke-virtual {v0, p1}, Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;->setCurrentItem(Ljava/lang/String;)Z

    move-result v2

    .line 331
    .end local v0           #itemManager:Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setZone(Ljava/lang/String;)Z
    .locals 2
    .parameter "zoneId"

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->_showingImpact:Z

    if-nez v0, :cond_1

    .line 177
    invoke-static {}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->getZoneManager()Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to set zone before campaigns are available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    invoke-static {}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->getZoneManager()Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->setCurrentZone(Ljava/lang/String;)Z

    move-result v0

    .line 183
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setZone(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "zoneId"
    .parameter "rewardItemKey"

    .prologue
    .line 187
    iget-boolean v2, p0, Lcom/applifier/impact/android/ApplifierImpact;->_showingImpact:Z

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/applifier/impact/android/ApplifierImpact;->setZone(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    invoke-static {}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->getZoneManager()Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->getCurrentZone()Lcom/applifier/impact/android/zone/ApplifierImpactZone;

    move-result-object v0

    .line 189
    .local v0, currentZone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    invoke-virtual {v0}, Lcom/applifier/impact/android/zone/ApplifierImpactZone;->isIncentivized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    check-cast v0, Lcom/applifier/impact/android/zone/ApplifierImpactIncentivizedZone;

    .end local v0           #currentZone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    invoke-virtual {v0}, Lcom/applifier/impact/android/zone/ApplifierImpactIncentivizedZone;->itemManager()Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;

    move-result-object v1

    .line 191
    .local v1, itemManager:Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;
    invoke-virtual {v1, p2}, Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;->setCurrentItem(Ljava/lang/String;)Z

    move-result v2

    .line 194
    .end local v1           #itemManager:Lcom/applifier/impact/android/item/ApplifierImpactRewardItemManager;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public showImpact()Z
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/applifier/impact/android/ApplifierImpact;->showImpact(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public showImpact(Ljava/util/Map;)Z
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, options:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 198
    invoke-virtual {p0}, Lcom/applifier/impact/android/ApplifierImpact;->canShowImpact()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 199
    invoke-static {}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->getZoneManager()Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->getCurrentZone()Lcom/applifier/impact/android/zone/ApplifierImpactZone;

    move-result-object v0

    .line 201
    .local v0, currentZone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {v0, p1}, Lcom/applifier/impact/android/zone/ApplifierImpactZone;->mergeOptions(Ljava/util/Map;)V

    .line 204
    invoke-virtual {v0}, Lcom/applifier/impact/android/zone/ApplifierImpactZone;->noOfferScreen()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 205
    sget-object v5, Lcom/applifier/impact/android/ApplifierImpact;->webdata:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    invoke-virtual {v5}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->getViewableVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v3

    .line 207
    .local v3, viewableCampaigns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 208
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    .line 209
    .local v2, selectedCampaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;
    sput-object v2, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    .line 211
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v6, :cond_0

    .line 212
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    .line 214
    .local v1, nextCampaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;
    sget-object v4, Lcom/applifier/impact/android/ApplifierImpact;->cachemanager:Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;

    invoke-virtual {v4, v2}, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->isCampaignCached(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/applifier/impact/android/ApplifierImpact;->cachemanager:Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;

    invoke-virtual {v4, v1}, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->isCampaignCached(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->allowCacheVideo()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 215
    sget-object v4, Lcom/applifier/impact/android/ApplifierImpact;->cachemanager:Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;

    invoke-virtual {v4, v1}, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->cacheNextVideo(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;)V

    .line 221
    .end local v1           #nextCampaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;
    .end local v2           #selectedCampaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;
    .end local v3           #viewableCampaigns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;>;"
    :cond_0
    invoke-static {}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->stopAllDownloads()V

    .line 223
    iput-boolean v6, p0, Lcom/applifier/impact/android/ApplifierImpact;->_openRequestFromDeveloper:Z

    .line 224
    iput-boolean v6, p0, Lcom/applifier/impact/android/ApplifierImpact;->_showingImpact:Z

    .line 225
    invoke-direct {p0}, Lcom/applifier/impact/android/ApplifierImpact;->startImpactFullscreenActivity()V

    .line 226
    iget-boolean v4, p0, Lcom/applifier/impact/android/ApplifierImpact;->_showingImpact:Z

    .line 231
    .end local v0           #currentZone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    :cond_1
    return v4
.end method

.method public stopAll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 260
    const-string v0, "stopAll()"

    invoke-static {v0, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 261
    sget-object v0, Lcom/applifier/impact/android/ApplifierImpact;->mainview:Lcom/applifier/impact/android/view/ApplifierImpactMainView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/applifier/impact/android/ApplifierImpact;->mainview:Lcom/applifier/impact/android/view/ApplifierImpactMainView;

    iget-object v0, v0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->videoplayerview:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    if-eqz v0, :cond_0

    .line 262
    sget-object v0, Lcom/applifier/impact/android/ApplifierImpact;->mainview:Lcom/applifier/impact/android/view/ApplifierImpactMainView;

    iget-object v0, v0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->videoplayerview:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    invoke-virtual {v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->clearVideoPlayer()V

    .line 263
    :cond_0
    sget-object v0, Lcom/applifier/impact/android/ApplifierImpact;->mainview:Lcom/applifier/impact/android/view/ApplifierImpactMainView;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/applifier/impact/android/ApplifierImpact;->mainview:Lcom/applifier/impact/android/view/ApplifierImpactMainView;

    iget-object v0, v0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->webview:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    if-eqz v0, :cond_1

    .line 264
    sget-object v0, Lcom/applifier/impact/android/ApplifierImpact;->mainview:Lcom/applifier/impact/android/view/ApplifierImpactMainView;

    iget-object v0, v0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->webview:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    invoke-virtual {v0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;->clearWebView()V

    .line 266
    :cond_1
    invoke-static {}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->stopAllDownloads()V

    .line 267
    invoke-static {}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;->clearData()V

    .line 268
    sget-object v0, Lcom/applifier/impact/android/ApplifierImpact;->cachemanager:Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;

    invoke-virtual {v0, v1}, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->setDownloadListener(Lcom/applifier/impact/android/cache/IApplifierImpactCacheListener;)V

    .line 269
    sget-object v0, Lcom/applifier/impact/android/ApplifierImpact;->cachemanager:Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;

    invoke-virtual {v0}, Lcom/applifier/impact/android/cache/ApplifierImpactCacheManager;->clearData()V

    .line 270
    sget-object v0, Lcom/applifier/impact/android/ApplifierImpact;->webdata:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    invoke-virtual {v0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->stopAllRequests()V

    .line 271
    sget-object v0, Lcom/applifier/impact/android/ApplifierImpact;->webdata:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    invoke-virtual {v0, v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->setWebDataListener(Lcom/applifier/impact/android/webapp/IApplifierImpactWebDataListener;)V

    .line 272
    sget-object v0, Lcom/applifier/impact/android/ApplifierImpact;->webdata:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    invoke-virtual {v0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->clearData()V

    .line 273
    sput-object v1, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->BASE_ACTIVITY:Ljava/lang/ref/WeakReference;

    .line 274
    sput-object v1, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Ljava/lang/ref/WeakReference;

    .line 275
    sput-object v1, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    .line 276
    return-void
.end method
