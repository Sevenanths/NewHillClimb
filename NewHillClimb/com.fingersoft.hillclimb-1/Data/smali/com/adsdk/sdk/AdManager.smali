.class public Lcom/adsdk/sdk/AdManager;
.super Ljava/lang/Object;
.source "AdManager.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static sRunningAds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/adsdk/sdk/AdManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mIncludeLocation:Z

.field private mListener:Lcom/adsdk/sdk/AdListener;

.field private mPublisherId:Ljava/lang/String;

.field private mRequest:Lcom/adsdk/sdk/AdRequest;

.field private mRequestThread:Ljava/lang/Thread;

.field private mResponse:Lcom/adsdk/sdk/video/RichMediaAd;

.field private mUniqueId1:Ljava/lang/String;

.field private mUniqueId2:Ljava/lang/String;

.field private mUserAgent:Ljava/lang/String;

.field private requestURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/adsdk/sdk/AdManager;->sRunningAds:Ljava/util/HashMap;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "ctx"
    .parameter "requestURL"
    .parameter "publisherId"
    .parameter "includeLocation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v1, p0, Lcom/adsdk/sdk/AdManager;->mRequest:Lcom/adsdk/sdk/AdRequest;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsdk/sdk/AdManager;->mEnabled:Z

    .line 100
    invoke-static {p1}, Lcom/adsdk/sdk/AdManager;->setmContext(Landroid/content/Context;)V

    .line 101
    iput-object p2, p0, Lcom/adsdk/sdk/AdManager;->requestURL:Ljava/lang/String;

    .line 102
    iput-object p3, p0, Lcom/adsdk/sdk/AdManager;->mPublisherId:Ljava/lang/String;

    .line 103
    iput-boolean p4, p0, Lcom/adsdk/sdk/AdManager;->mIncludeLocation:Z

    .line 104
    iput-object v1, p0, Lcom/adsdk/sdk/AdManager;->mRequestThread:Ljava/lang/Thread;

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/AdManager;->mHandler:Landroid/os/Handler;

    .line 106
    invoke-direct {p0}, Lcom/adsdk/sdk/AdManager;->initialize()V

    .line 107
    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdRequest;
    .locals 1
    .parameter

    .prologue
    .line 434
    invoke-direct {p0}, Lcom/adsdk/sdk/AdManager;->getRequest()Lcom/adsdk/sdk/AdRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/AdManager;Lcom/adsdk/sdk/video/RichMediaAd;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/video/RichMediaAd;

    return-void
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/video/RichMediaAd;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/video/RichMediaAd;

    return-object v0
.end method

.method static synthetic access$3(Lcom/adsdk/sdk/AdManager;)V
    .locals 0
    .parameter

    .prologue
    .line 396
    invoke-direct {p0}, Lcom/adsdk/sdk/AdManager;->notifyNoAdFound()V

    return-void
.end method

.method static synthetic access$4(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdListener;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mListener:Lcom/adsdk/sdk/AdListener;

    return-object v0
.end method

.method static synthetic access$5(Lcom/adsdk/sdk/AdManager;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6(Lcom/adsdk/sdk/AdManager;Ljava/lang/Thread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/adsdk/sdk/AdManager;->mRequestThread:Ljava/lang/Thread;

    return-void
.end method

.method public static closeRunningAd(Lcom/adsdk/sdk/video/RichMediaAd;Z)V
    .locals 4
    .parameter "ad"
    .parameter "result"

    .prologue
    .line 65
    sget-object v1, Lcom/adsdk/sdk/AdManager;->sRunningAds:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaAd;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/AdManager;

    .line 66
    .local v0, adManager:Lcom/adsdk/sdk/AdManager;
    if-nez v0, :cond_0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find AdManager with running ad:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaAd;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 76
    :goto_0
    return-void

    .line 73
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Notify closing event to AdManager with running ad:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaAd;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-static {v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 75
    invoke-direct {v0, p0, p1}, Lcom/adsdk/sdk/AdManager;->notifyAdClose(Lcom/adsdk/sdk/video/RichMediaAd;Z)V

    goto :goto_0
.end method

.method public static getAdManager(Lcom/adsdk/sdk/video/RichMediaAd;)Lcom/adsdk/sdk/AdManager;
    .locals 4
    .parameter "ad"

    .prologue
    .line 55
    sget-object v1, Lcom/adsdk/sdk/AdManager;->sRunningAds:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaAd;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/AdManager;

    .line 56
    .local v0, adManager:Lcom/adsdk/sdk/AdManager;
    if-nez v0, :cond_0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find AdManager with running ad:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaAd;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 61
    :cond_0
    return-object v0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 467
    invoke-static {}, Lcom/adsdk/sdk/AdManager;->getmContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getRequest()Lcom/adsdk/sdk/AdRequest;
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 435
    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->mRequest:Lcom/adsdk/sdk/AdRequest;

    if-nez v1, :cond_0

    .line 436
    new-instance v1, Lcom/adsdk/sdk/AdRequest;

    invoke-direct {v1}, Lcom/adsdk/sdk/AdRequest;-><init>()V

    iput-object v1, p0, Lcom/adsdk/sdk/AdManager;->mRequest:Lcom/adsdk/sdk/AdRequest;

    .line 437
    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->mRequest:Lcom/adsdk/sdk/AdRequest;

    iget-object v2, p0, Lcom/adsdk/sdk/AdManager;->mUniqueId1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdRequest;->setDeviceId(Ljava/lang/String;)V

    .line 438
    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->mRequest:Lcom/adsdk/sdk/AdRequest;

    iget-object v2, p0, Lcom/adsdk/sdk/AdManager;->mUniqueId2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdRequest;->setDeviceId2(Ljava/lang/String;)V

    .line 439
    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->mRequest:Lcom/adsdk/sdk/AdRequest;

    iget-object v2, p0, Lcom/adsdk/sdk/AdManager;->mPublisherId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdRequest;->setPublisherId(Ljava/lang/String;)V

    .line 440
    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->mRequest:Lcom/adsdk/sdk/AdRequest;

    iget-object v2, p0, Lcom/adsdk/sdk/AdManager;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdRequest;->setUserAgent(Ljava/lang/String;)V

    .line 441
    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->mRequest:Lcom/adsdk/sdk/AdRequest;

    invoke-static {}, Lcom/adsdk/sdk/Util;->buildUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdRequest;->setUserAgent2(Ljava/lang/String;)V

    .line 443
    :cond_0
    const/4 v0, 0x0

    .line 444
    .local v0, location:Landroid/location/Location;
    iget-boolean v1, p0, Lcom/adsdk/sdk/AdManager;->mIncludeLocation:Z

    if-eqz v1, :cond_1

    .line 445
    invoke-direct {p0}, Lcom/adsdk/sdk/AdManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/adsdk/sdk/Util;->getLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    .line 447
    :cond_1
    if-eqz v0, :cond_2

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "location is longitude: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 449
    const-string v2, ", latitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 448
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 450
    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->mRequest:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/adsdk/sdk/AdRequest;->setLatitude(D)V

    .line 451
    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->mRequest:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/adsdk/sdk/AdRequest;->setLongitude(D)V

    .line 456
    :goto_0
    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->mRequest:Lcom/adsdk/sdk/AdRequest;

    invoke-direct {p0}, Lcom/adsdk/sdk/AdManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/adsdk/sdk/Util;->getConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdRequest;->setConnectionType(Ljava/lang/String;)V

    .line 457
    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->mRequest:Lcom/adsdk/sdk/AdRequest;

    invoke-static {}, Lcom/adsdk/sdk/Util;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdRequest;->setIpAddress(Ljava/lang/String;)V

    .line 458
    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->mRequest:Lcom/adsdk/sdk/AdRequest;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/adsdk/sdk/AdRequest;->setTimestamp(J)V

    .line 460
    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->mRequest:Lcom/adsdk/sdk/AdRequest;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdRequest;->setType(I)V

    .line 461
    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->mRequest:Lcom/adsdk/sdk/AdRequest;

    iget-object v2, p0, Lcom/adsdk/sdk/AdManager;->requestURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdRequest;->setRequestURL(Ljava/lang/String;)V

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Getting new request:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsdk/sdk/AdManager;->mRequest:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v2}, Lcom/adsdk/sdk/AdRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 463
    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->mRequest:Lcom/adsdk/sdk/AdRequest;

    return-object v1

    .line 453
    :cond_2
    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->mRequest:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v1, v3, v4}, Lcom/adsdk/sdk/AdRequest;->setLatitude(D)V

    .line 454
    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->mRequest:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v1, v3, v4}, Lcom/adsdk/sdk/AdRequest;->setLongitude(D)V

    goto :goto_0
.end method

.method private static getmContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 479
    sget-object v0, Lcom/adsdk/sdk/AdManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initialize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/adsdk/sdk/AdManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Util;->getDefaultUserAgentString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/AdManager;->mUserAgent:Ljava/lang/String;

    .line 374
    invoke-static {}, Lcom/adsdk/sdk/AdManager;->getmContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->isLoggingEnabled(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/adsdk/sdk/Log;->LOGGING_ENABLED:Z

    .line 375
    const-string v0, "Ad SDK Version:4.1.6"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 376
    invoke-direct {p0}, Lcom/adsdk/sdk/AdManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Util;->getTelephonyDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/AdManager;->mUniqueId1:Ljava/lang/String;

    .line 377
    invoke-direct {p0}, Lcom/adsdk/sdk/AdManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Util;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/AdManager;->mUniqueId2:Ljava/lang/String;

    .line 378
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mPublisherId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mPublisherId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 379
    :cond_0
    const-string v0, "Publisher Id cannot be null or empty"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;)V

    .line 380
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 381
    const-string v1, "User Id cannot be null or empty"

    .line 380
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mUniqueId2:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mUniqueId2:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 384
    :cond_2
    const-string v0, "Cannot get system device Id"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;)V

    .line 385
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 386
    const-string v1, "System Device Id cannot be null or empty"

    .line 385
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdManager Publisher Id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->mPublisherId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 389
    const-string v1, " Device Id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->mUniqueId1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DeviceId2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->mUniqueId2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 388
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 390
    invoke-direct {p0}, Lcom/adsdk/sdk/AdManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Util;->getMemoryClass(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_4

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/adsdk/sdk/AdManager;->mEnabled:Z

    .line 391
    invoke-direct {p0}, Lcom/adsdk/sdk/AdManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Util;->initializeAnimations(Landroid/content/Context;)V

    .line 394
    return-void

    .line 390
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyAdClose(Lcom/adsdk/sdk/video/RichMediaAd;Z)V
    .locals 2
    .parameter "ad"
    .parameter "ok"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mListener:Lcom/adsdk/sdk/AdListener;

    if-eqz v0, :cond_0

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ad Close. Result:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adsdk/sdk/AdManager$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/adsdk/sdk/AdManager$7;-><init>(Lcom/adsdk/sdk/AdManager;Lcom/adsdk/sdk/video/RichMediaAd;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 432
    :cond_0
    return-void
.end method

.method private notifyAdShown(Lcom/adsdk/sdk/video/RichMediaAd;Z)V
    .locals 2
    .parameter "ad"
    .parameter "ok"

    .prologue
    .line 410
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mListener:Lcom/adsdk/sdk/AdListener;

    if-eqz v0, :cond_0

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ad Shown. Result:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adsdk/sdk/AdManager$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/adsdk/sdk/AdManager$6;-><init>(Lcom/adsdk/sdk/AdManager;Lcom/adsdk/sdk/video/RichMediaAd;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 419
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/video/RichMediaAd;

    .line 420
    return-void
.end method

.method private notifyNoAdFound()V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mListener:Lcom/adsdk/sdk/AdListener;

    if-eqz v0, :cond_0

    .line 398
    const-string v0, "No ad found."

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adsdk/sdk/AdManager$5;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/AdManager$5;-><init>(Lcom/adsdk/sdk/AdManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 406
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/video/RichMediaAd;

    .line 407
    return-void
.end method

.method private static setmContext(Landroid/content/Context;)V
    .locals 0
    .parameter "mContext"

    .prologue
    .line 483
    sput-object p0, Lcom/adsdk/sdk/AdManager;->mContext:Landroid/content/Context;

    .line 484
    return-void
.end method


# virtual methods
.method public isAdLoaded()Z
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/video/RichMediaAd;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 79
    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->release()V

    .line 80
    invoke-static {}, Lcom/adsdk/sdk/video/ResourceManager;->cancel()V

    .line 82
    return-void
.end method

.method public requestAd()V
    .locals 2

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/adsdk/sdk/AdManager;->mEnabled:Z

    if-nez v0, :cond_0

    .line 115
    const-string v0, "Cannot request rich adds on low memory devices"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->w(Ljava/lang/String;)V

    .line 214
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mRequestThread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 119
    const-string v0, "Requesting Ad (v4.1.6-1.0)"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/video/RichMediaAd;

    .line 122
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adsdk/sdk/AdManager$1;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/AdManager$1;-><init>(Lcom/adsdk/sdk/AdManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/adsdk/sdk/AdManager;->mRequestThread:Ljava/lang/Thread;

    .line 196
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mRequestThread:Ljava/lang/Thread;

    .line 197
    new-instance v1, Lcom/adsdk/sdk/AdManager$2;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/AdManager$2;-><init>(Lcom/adsdk/sdk/AdManager;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 210
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mRequestThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 212
    :cond_1
    const-string v0, "Request thread already running"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestAd(Ljava/io/InputStream;)V
    .locals 2
    .parameter "xml"

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/adsdk/sdk/AdManager;->mEnabled:Z

    if-nez v0, :cond_0

    .line 223
    const-string v0, "Cannot request rich adds on low memory devices"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->w(Ljava/lang/String;)V

    .line 306
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mRequestThread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 227
    const-string v0, "Requesting Ad (v4.1.6-1.0)"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/video/RichMediaAd;

    .line 230
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adsdk/sdk/AdManager$3;

    invoke-direct {v1, p0, p1}, Lcom/adsdk/sdk/AdManager$3;-><init>(Lcom/adsdk/sdk/AdManager;Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/adsdk/sdk/AdManager;->mRequestThread:Ljava/lang/Thread;

    .line 288
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mRequestThread:Ljava/lang/Thread;

    .line 289
    new-instance v1, Lcom/adsdk/sdk/AdManager$4;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/AdManager$4;-><init>(Lcom/adsdk/sdk/AdManager;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 302
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mRequestThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 304
    :cond_1
    const-string v0, "Request thread already running"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestAdAndShow(J)V
    .locals 7
    .parameter "timeout"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mListener:Lcom/adsdk/sdk/AdListener;

    .line 315
    .local v0, l:Lcom/adsdk/sdk/AdListener;
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/adsdk/sdk/AdManager;->mListener:Lcom/adsdk/sdk/AdListener;

    .line 316
    invoke-virtual {p0}, Lcom/adsdk/sdk/AdManager;->requestAd()V

    .line 317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 318
    .local v1, now:J
    add-long v3, v1, p1

    .line 319
    .local v3, timeoutTime:J
    :goto_0
    invoke-virtual {p0}, Lcom/adsdk/sdk/AdManager;->isAdLoaded()Z

    move-result v5

    if-nez v5, :cond_0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    .line 326
    :cond_0
    iput-object v0, p0, Lcom/adsdk/sdk/AdManager;->mListener:Lcom/adsdk/sdk/AdListener;

    .line 327
    invoke-virtual {p0}, Lcom/adsdk/sdk/AdManager;->showAd()V

    .line 328
    return-void

    .line 321
    :cond_1
    const-wide/16 v5, 0xc8

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    goto :goto_0

    .line 322
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public setListener(Lcom/adsdk/sdk/AdListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/adsdk/sdk/AdManager;->mListener:Lcom/adsdk/sdk/AdListener;

    .line 111
    return-void
.end method

.method public setRequestURL(Ljava/lang/String;)V
    .locals 0
    .parameter "requestURL"

    .prologue
    .line 217
    iput-object p1, p0, Lcom/adsdk/sdk/AdManager;->requestURL:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public showAd()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 331
    invoke-direct {p0}, Lcom/adsdk/sdk/AdManager;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 335
    .local v0, activity:Landroid/app/Activity;
    iget-object v7, p0, Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/video/RichMediaAd;

    if-eqz v7, :cond_0

    .line 336
    iget-object v7, p0, Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/video/RichMediaAd;

    invoke-virtual {v7}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    .line 337
    iget-object v7, p0, Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/video/RichMediaAd;

    invoke-virtual {v7}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 338
    :cond_0
    iget-object v7, p0, Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/video/RichMediaAd;

    invoke-direct {p0, v7, v9}, Lcom/adsdk/sdk/AdManager;->notifyAdShown(Lcom/adsdk/sdk/video/RichMediaAd;Z)V

    .line 365
    :goto_0
    return-void

    .line 341
    :cond_1
    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/video/RichMediaAd;

    .line 342
    .local v1, ad:Lcom/adsdk/sdk/video/RichMediaAd;
    const/4 v6, 0x0

    .line 344
    .local v6, result:Z
    :try_start_0
    invoke-direct {p0}, Lcom/adsdk/sdk/AdManager;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/adsdk/sdk/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Lcom/adsdk/sdk/video/RichMediaAd;->setTimestamp(J)V

    .line 346
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Showing Ad:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    .line 347
    new-instance v5, Landroid/content/Intent;

    .line 348
    const-class v7, Lcom/adsdk/sdk/video/RichMediaActivity;

    .line 347
    invoke-direct {v5, v0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 349
    .local v5, intent:Landroid/content/Intent;
    const-string v7, "RICH_AD_DATA"

    invoke-virtual {v5, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 350
    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 351
    invoke-virtual {v1}, Lcom/adsdk/sdk/video/RichMediaAd;->getAnimation()I

    move-result v7

    invoke-static {v7}, Lcom/adsdk/sdk/Util;->getEnterAnimation(I)I

    move-result v3

    .line 352
    .local v3, enterAnim:I
    invoke-virtual {v1}, Lcom/adsdk/sdk/video/RichMediaAd;->getAnimation()I

    move-result v7

    invoke-static {v7}, Lcom/adsdk/sdk/Util;->getExitAnimation(I)I

    move-result v4

    .line 353
    .local v4, exitAnim:I
    invoke-static {v0, v3, v4}, Lcom/adsdk/sdk/video/RichMediaActivity;->setActivityAnimation(Landroid/app/Activity;II)V

    .line 355
    const/4 v6, 0x1

    .line 356
    sget-object v7, Lcom/adsdk/sdk/AdManager;->sRunningAds:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/adsdk/sdk/video/RichMediaAd;->getTimestamp()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    .end local v3           #enterAnim:I
    .end local v4           #exitAnim:I
    .end local v5           #intent:Landroid/content/Intent;
    :goto_1
    invoke-direct {p0, v1, v6}, Lcom/adsdk/sdk/AdManager;->notifyAdShown(Lcom/adsdk/sdk/video/RichMediaAd;Z)V

    goto :goto_0

    .line 358
    :cond_2
    :try_start_1
    const-string v7, "No network available. Cannot show Ad."

    invoke-static {v7}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 360
    :catch_0
    move-exception v2

    .line 361
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    const-string v7, "Unknown exception when showing Ad"

    invoke-static {v7, v2}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 363
    invoke-direct {p0, v1, v6}, Lcom/adsdk/sdk/AdManager;->notifyAdShown(Lcom/adsdk/sdk/video/RichMediaAd;Z)V

    goto :goto_0

    .line 362
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 363
    invoke-direct {p0, v1, v6}, Lcom/adsdk/sdk/AdManager;->notifyAdShown(Lcom/adsdk/sdk/video/RichMediaAd;Z)V

    .line 364
    throw v7
.end method
