.class public Lcom/adsdk/sdk/banner/AdView;
.super Landroid/widget/FrameLayout;
.source "AdView.java"


# static fields
.field public static final LIVE:I = 0x0

.field public static final TEST:I = 0x1


# instance fields
.field private adListener:Lcom/adsdk/sdk/AdListener;

.field private animation:Z

.field private includeLocation:Z

.field private isAccessCoarseLocation:I

.field private isAccessFineLocation:I

.field private isInternalBrowser:Z

.field private loadContentThread:Ljava/lang/Thread;

.field private locationManager:Landroid/location/LocationManager;

.field private mBannerView:Lcom/adsdk/sdk/banner/BannerAdView;

.field private mContext:Landroid/content/Context;

.field protected mIsInForeground:Z

.field private mMoPubview:Lcom/adsdk/sdk/mraid/MoPubView;

.field private mScreenStateReceiver:Landroid/content/BroadcastReceiver;

.field private mUserAgent:Ljava/lang/String;

.field private publisherId:Ljava/lang/String;

.field private reloadTimer:Ljava/util/Timer;

.field private request:Lcom/adsdk/sdk/AdRequest;

.field private requestURL:Ljava/lang/String;

.field private response:Lcom/adsdk/sdk/BannerAd;

.field private final showContent:Ljava/lang/Runnable;

.field private telephonyPermission:I

.field private final updateHandler:Landroid/os/Handler;

.field private xml:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attributes"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput-boolean v4, p0, Lcom/adsdk/sdk/banner/AdView;->includeLocation:Z

    .line 46
    iput-boolean v4, p0, Lcom/adsdk/sdk/banner/AdView;->isInternalBrowser:Z

    .line 51
    iput-object v3, p0, Lcom/adsdk/sdk/banner/AdView;->requestURL:Ljava/lang/String;

    .line 59
    iput-object v3, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    .line 68
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/adsdk/sdk/banner/AdView;->updateHandler:Landroid/os/Handler;

    .line 70
    new-instance v3, Lcom/adsdk/sdk/banner/AdView$1;

    invoke-direct {v3, p0}, Lcom/adsdk/sdk/banner/AdView$1;-><init>(Lcom/adsdk/sdk/banner/AdView;)V

    iput-object v3, p0, Lcom/adsdk/sdk/banner/AdView;->showContent:Ljava/lang/Runnable;

    .line 90
    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    .line 91
    if-eqz p2, :cond_0

    .line 92
    invoke-interface {p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v0

    .line 93
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 106
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_0
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/banner/AdView;->initialize(Landroid/content/Context;)V

    .line 107
    return-void

    .line 94
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_1
    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, name:Ljava/lang/String;
    const-string v3, "publisherId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 96
    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/adsdk/sdk/banner/AdView;->publisherId:Ljava/lang/String;

    .line 93
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :cond_3
    const-string v3, "request_url"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 98
    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/adsdk/sdk/banner/AdView;->requestURL:Ljava/lang/String;

    goto :goto_1

    .line 99
    :cond_4
    const-string v3, "animation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 100
    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/adsdk/sdk/banner/AdView;->animation:Z

    goto :goto_1

    .line 101
    :cond_5
    const-string v3, "includeLocation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 102
    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/adsdk/sdk/banner/AdView;->includeLocation:Z

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2
    .parameter "context"
    .parameter "xml"
    .parameter "requestURL"
    .parameter "publisherId"
    .parameter "includeLocation"
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 141
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 38
    iput-boolean v0, p0, Lcom/adsdk/sdk/banner/AdView;->includeLocation:Z

    .line 46
    iput-boolean v0, p0, Lcom/adsdk/sdk/banner/AdView;->isInternalBrowser:Z

    .line 51
    iput-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->requestURL:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->updateHandler:Landroid/os/Handler;

    .line 70
    new-instance v0, Lcom/adsdk/sdk/banner/AdView$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/banner/AdView$1;-><init>(Lcom/adsdk/sdk/banner/AdView;)V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->showContent:Ljava/lang/Runnable;

    .line 142
    iput-object p2, p0, Lcom/adsdk/sdk/banner/AdView;->xml:Ljava/io/InputStream;

    .line 143
    iput-object p3, p0, Lcom/adsdk/sdk/banner/AdView;->requestURL:Ljava/lang/String;

    .line 144
    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    .line 145
    iput-object p4, p0, Lcom/adsdk/sdk/banner/AdView;->publisherId:Ljava/lang/String;

    .line 146
    iput-boolean p5, p0, Lcom/adsdk/sdk/banner/AdView;->includeLocation:Z

    .line 147
    iput-boolean p6, p0, Lcom/adsdk/sdk/banner/AdView;->animation:Z

    .line 148
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/banner/AdView;->initialize(Landroid/content/Context;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;ZZ)V
    .locals 7
    .parameter "context"
    .parameter "requestURL"
    .parameter "xml"
    .parameter "publisherId"
    .parameter "includeLocation"
    .parameter "animation"

    .prologue
    .line 128
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/adsdk/sdk/banner/AdView;-><init>(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "requestURL"
    .parameter "publisherId"

    .prologue
    const/4 v4, 0x0

    .line 115
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/adsdk/sdk/banner/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 7
    .parameter "context"
    .parameter "requestURL"
    .parameter "publisherId"
    .parameter "includeLocation"
    .parameter "animation"

    .prologue
    .line 165
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/adsdk/sdk/banner/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLcom/adsdk/sdk/AdListener;)V

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLcom/adsdk/sdk/AdListener;)V
    .locals 3
    .parameter "context"
    .parameter "requestURL"
    .parameter "publisherId"
    .parameter "includeLocation"
    .parameter "animation"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 170
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 38
    iput-boolean v0, p0, Lcom/adsdk/sdk/banner/AdView;->includeLocation:Z

    .line 46
    iput-boolean v0, p0, Lcom/adsdk/sdk/banner/AdView;->isInternalBrowser:Z

    .line 51
    iput-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->requestURL:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    .line 68
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->updateHandler:Landroid/os/Handler;

    .line 70
    new-instance v1, Lcom/adsdk/sdk/banner/AdView$1;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/banner/AdView$1;-><init>(Lcom/adsdk/sdk/banner/AdView;)V

    iput-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->showContent:Ljava/lang/Runnable;

    .line 171
    iput-object p2, p0, Lcom/adsdk/sdk/banner/AdView;->requestURL:Ljava/lang/String;

    .line 172
    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    .line 173
    iput-object p3, p0, Lcom/adsdk/sdk/banner/AdView;->publisherId:Ljava/lang/String;

    .line 174
    iput-boolean p4, p0, Lcom/adsdk/sdk/banner/AdView;->includeLocation:Z

    .line 175
    iput-boolean p5, p0, Lcom/adsdk/sdk/banner/AdView;->animation:Z

    .line 176
    iput-object p6, p0, Lcom/adsdk/sdk/banner/AdView;->adListener:Lcom/adsdk/sdk/AdListener;

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdListener: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->adListener:Lcom/adsdk/sdk/AdListener;

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 178
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/banner/AdView;->initialize(Landroid/content/Context;)V

    .line 179
    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/banner/AdView;)V
    .locals 0
    .parameter

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->showContent()V

    return-void
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/banner/AdView;)Ljava/io/InputStream;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->xml:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/AdRequest;
    .locals 1
    .parameter

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->getRequest()Lcom/adsdk/sdk/AdRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/adsdk/sdk/banner/AdView;Lcom/adsdk/sdk/BannerAd;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/BannerAd;

    return-void
.end method

.method static synthetic access$4(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/BannerAd;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/BannerAd;

    return-object v0
.end method

.method static synthetic access$5(Lcom/adsdk/sdk/banner/AdView;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->updateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6(Lcom/adsdk/sdk/banner/AdView;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->showContent:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$7(Lcom/adsdk/sdk/banner/AdView;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/banner/AdView;->notifyLoadAdFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$8(Lcom/adsdk/sdk/banner/AdView;Ljava/lang/Thread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView;->loadContentThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$9(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/AdListener;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->adListener:Lcom/adsdk/sdk/AdListener;

    return-object v0
.end method

.method private getLocation()Landroid/location/Location;
    .locals 4

    .prologue
    .line 201
    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->locationManager:Landroid/location/LocationManager;

    if-eqz v2, :cond_1

    .line 202
    iget v2, p0, Lcom/adsdk/sdk/banner/AdView;->isAccessFineLocation:I

    if-nez v2, :cond_0

    .line 203
    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->locationManager:Landroid/location/LocationManager;

    .line 204
    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 205
    .local v0, isGpsEnabled:Z
    if-eqz v0, :cond_0

    .line 206
    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->locationManager:Landroid/location/LocationManager;

    .line 207
    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 218
    .end local v0           #isGpsEnabled:Z
    :goto_0
    return-object v2

    .line 209
    :cond_0
    iget v2, p0, Lcom/adsdk/sdk/banner/AdView;->isAccessCoarseLocation:I

    if-nez v2, :cond_1

    .line 210
    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->locationManager:Landroid/location/LocationManager;

    .line 211
    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 213
    .local v1, isNetworkEnabled:Z
    if-eqz v1, :cond_1

    .line 214
    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->locationManager:Landroid/location/LocationManager;

    .line 215
    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    goto :goto_0

    .line 218
    .end local v1           #isNetworkEnabled:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getRequest()Lcom/adsdk/sdk/AdRequest;
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 228
    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    if-nez v2, :cond_0

    .line 229
    new-instance v2, Lcom/adsdk/sdk/AdRequest;

    invoke-direct {v2}, Lcom/adsdk/sdk/AdRequest;-><init>()V

    iput-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    .line 230
    iget v2, p0, Lcom/adsdk/sdk/banner/AdView;->telephonyPermission:I

    if-nez v2, :cond_2

    .line 232
    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/AdView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 233
    const-string v3, "phone"

    .line 232
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 231
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 234
    .local v1, tm:Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adsdk/sdk/AdRequest;->setDeviceId(Ljava/lang/String;)V

    .line 238
    .end local v1           #tm:Landroid/telephony/TelephonyManager;
    :goto_0
    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    iget-object v3, p0, Lcom/adsdk/sdk/banner/AdView;->publisherId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/adsdk/sdk/AdRequest;->setPublisherId(Ljava/lang/String;)V

    .line 239
    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    iget-object v3, p0, Lcom/adsdk/sdk/banner/AdView;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/adsdk/sdk/AdRequest;->setUserAgent(Ljava/lang/String;)V

    .line 240
    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-static {}, Lcom/adsdk/sdk/Util;->buildUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adsdk/sdk/AdRequest;->setUserAgent2(Ljava/lang/String;)V

    .line 241
    const-string v2, "ADSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "WebKit UserAgent:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v4}, Lcom/adsdk/sdk/AdRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v2, "ADSDK"

    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SDK built UserAgent:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v4}, Lcom/adsdk/sdk/AdRequest;->getUserAgent2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 242
    invoke-static {v2, v3}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_0
    const/4 v0, 0x0

    .line 246
    .local v0, location:Landroid/location/Location;
    iget-boolean v2, p0, Lcom/adsdk/sdk/banner/AdView;->includeLocation:Z

    if-eqz v2, :cond_1

    .line 247
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 248
    :cond_1
    if-eqz v0, :cond_3

    .line 249
    const-string v2, "ADSDK"

    .line 250
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "location is longitude: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 251
    const-string v4, ", latitude: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 250
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 249
    invoke-static {v2, v3}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/adsdk/sdk/AdRequest;->setLatitude(D)V

    .line 253
    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/adsdk/sdk/AdRequest;->setLongitude(D)V

    .line 259
    :goto_1
    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/adsdk/sdk/AdRequest;->setType(I)V

    .line 260
    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    iget-object v3, p0, Lcom/adsdk/sdk/banner/AdView;->requestURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/adsdk/sdk/AdRequest;->setRequestURL(Ljava/lang/String;)V

    .line 261
    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    return-object v2

    .line 236
    .end local v0           #location:Landroid/location/Location;
    :cond_2
    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    iget-object v3, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/adsdk/sdk/Util;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adsdk/sdk/AdRequest;->setDeviceId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 255
    .restart local v0       #location:Landroid/location/Location;
    :cond_3
    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v2, v5, v6}, Lcom/adsdk/sdk/AdRequest;->setLatitude(D)V

    .line 256
    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v2, v5, v6}, Lcom/adsdk/sdk/AdRequest;->setLongitude(D)V

    goto :goto_1
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Util;->getDefaultUserAgentString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mUserAgent:Ljava/lang/String;

    .line 266
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->isLoggingEnabled(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/adsdk/sdk/Log;->LOGGING_ENABLED:Z

    .line 267
    const-string v0, "ADSDK"

    const-string v1, "SDK Version:4.1.6"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->registerScreenStateBroadcastReceiver()V

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->locationManager:Landroid/location/LocationManager;

    .line 271
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 270
    iput v0, p0, Lcom/adsdk/sdk/banner/AdView;->telephonyPermission:I

    .line 273
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 272
    iput v0, p0, Lcom/adsdk/sdk/banner/AdView;->isAccessFineLocation:I

    .line 275
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 274
    iput v0, p0, Lcom/adsdk/sdk/banner/AdView;->isAccessCoarseLocation:I

    .line 276
    iget v0, p0, Lcom/adsdk/sdk/banner/AdView;->isAccessFineLocation:I

    if-eqz v0, :cond_0

    .line 277
    iget v0, p0, Lcom/adsdk/sdk/banner/AdView;->isAccessCoarseLocation:I

    if-nez v0, :cond_1

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 279
    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 278
    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->locationManager:Landroid/location/LocationManager;

    .line 280
    :cond_1
    return-void
.end method

.method private loadContent()V
    .locals 2

    .prologue
    .line 317
    const-string v0, "ADSDK"

    const-string v1, "load content"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->loadContentThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 320
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adsdk/sdk/banner/AdView$3;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/banner/AdView$3;-><init>(Lcom/adsdk/sdk/banner/AdView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->loadContentThread:Ljava/lang/Thread;

    .line 349
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->loadContentThread:Ljava/lang/Thread;

    .line 350
    new-instance v1, Lcom/adsdk/sdk/banner/AdView$4;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/banner/AdView$4;-><init>(Lcom/adsdk/sdk/banner/AdView;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 360
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->loadContentThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 366
    :cond_0
    return-void
.end method

.method private notifyLoadAdFailed(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->updateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adsdk/sdk/banner/AdView$6;

    invoke-direct {v1, p0, p1}, Lcom/adsdk/sdk/banner/AdView$6;-><init>(Lcom/adsdk/sdk/banner/AdView;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 399
    return-void
.end method

.method private notifyNoAd()V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->updateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adsdk/sdk/banner/AdView$5;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/banner/AdView$5;-><init>(Lcom/adsdk/sdk/banner/AdView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 384
    return-void
.end method

.method private registerScreenStateBroadcastReceiver()V
    .locals 3

    .prologue
    .line 287
    new-instance v1, Lcom/adsdk/sdk/banner/AdView$2;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/banner/AdView$2;-><init>(Lcom/adsdk/sdk/banner/AdView;)V

    iput-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 308
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 309
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 311
    return-void
.end method

.method private showContent()V
    .locals 7

    .prologue
    .line 428
    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->mMoPubview:Lcom/adsdk/sdk/mraid/MoPubView;

    if-eqz v2, :cond_0

    .line 429
    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->mMoPubview:Lcom/adsdk/sdk/mraid/MoPubView;

    invoke-virtual {v2}, Lcom/adsdk/sdk/mraid/MoPubView;->destroy()V

    .line 430
    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->mMoPubview:Lcom/adsdk/sdk/mraid/MoPubView;

    invoke-virtual {p0, v2}, Lcom/adsdk/sdk/banner/AdView;->removeView(Landroid/view/View;)V

    .line 432
    :cond_0
    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->mBannerView:Lcom/adsdk/sdk/banner/BannerAdView;

    if-eqz v2, :cond_1

    .line 433
    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->mBannerView:Lcom/adsdk/sdk/banner/BannerAdView;

    invoke-virtual {p0, v2}, Lcom/adsdk/sdk/banner/AdView;->removeView(Landroid/view/View;)V

    .line 435
    :cond_1
    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/BannerAd;

    invoke-virtual {v2}, Lcom/adsdk/sdk/BannerAd;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/BannerAd;

    invoke-virtual {v2}, Lcom/adsdk/sdk/BannerAd;->getType()I

    move-result v2

    if-nez v2, :cond_3

    .line 436
    :cond_2
    new-instance v2, Lcom/adsdk/sdk/banner/BannerAdView;

    iget-object v3, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/BannerAd;

    iget-boolean v5, p0, Lcom/adsdk/sdk/banner/AdView;->animation:Z

    iget-object v6, p0, Lcom/adsdk/sdk/banner/AdView;->adListener:Lcom/adsdk/sdk/AdListener;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/adsdk/sdk/banner/BannerAdView;-><init>(Landroid/content/Context;Lcom/adsdk/sdk/BannerAd;ZLcom/adsdk/sdk/AdListener;)V

    iput-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->mBannerView:Lcom/adsdk/sdk/banner/BannerAdView;

    .line 437
    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->mBannerView:Lcom/adsdk/sdk/banner/BannerAdView;

    invoke-virtual {p0, v2}, Lcom/adsdk/sdk/banner/AdView;->addView(Landroid/view/View;)V

    .line 439
    :cond_3
    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/BannerAd;

    invoke-virtual {v2}, Lcom/adsdk/sdk/BannerAd;->getType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_4

    .line 440
    new-instance v2, Lcom/adsdk/sdk/mraid/MoPubView;

    iget-object v3, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/adsdk/sdk/mraid/MoPubView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->mMoPubview:Lcom/adsdk/sdk/mraid/MoPubView;

    .line 441
    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 442
    .local v1, scale:F
    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->mMoPubview:Lcom/adsdk/sdk/mraid/MoPubView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v5, 0x4248

    mul-float/2addr v5, v1

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Lcom/adsdk/sdk/banner/AdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 443
    new-instance v0, Lcom/adsdk/sdk/mraid/AdView;

    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/adsdk/sdk/banner/AdView;->mMoPubview:Lcom/adsdk/sdk/mraid/MoPubView;

    iget-object v4, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/BannerAd;

    invoke-direct {v0, v2, v3, v4}, Lcom/adsdk/sdk/mraid/AdView;-><init>(Landroid/content/Context;Lcom/adsdk/sdk/mraid/MoPubView;Lcom/adsdk/sdk/BannerAd;)V

    .line 444
    .local v0, m:Lcom/adsdk/sdk/mraid/AdView;
    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->mMoPubview:Lcom/adsdk/sdk/mraid/MoPubView;

    iget-object v3, p0, Lcom/adsdk/sdk/banner/AdView;->adListener:Lcom/adsdk/sdk/AdListener;

    invoke-virtual {v2, v3}, Lcom/adsdk/sdk/mraid/MoPubView;->setAdListener(Lcom/adsdk/sdk/AdListener;)V

    .line 445
    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/adsdk/sdk/mraid/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 446
    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/AdView;->loadAd()V

    .line 449
    .end local v0           #m:Lcom/adsdk/sdk/mraid/AdView;
    .end local v1           #scale:F
    :cond_4
    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/BannerAd;

    invoke-virtual {v2}, Lcom/adsdk/sdk/BannerAd;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 450
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->notifyNoAd()V

    .line 452
    :cond_5
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->startReloadTimer()V

    .line 453
    return-void
.end method

.method private startReloadTimer()V
    .locals 5

    .prologue
    .line 504
    const-string v2, "ADSDK"

    const-string v3, "start reload timer"

    invoke-static {v2, v3}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->reloadTimer:Ljava/util/Timer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/BannerAd;

    invoke-virtual {v2}, Lcom/adsdk/sdk/BannerAd;->getRefresh()I

    move-result v2

    if-gtz v2, :cond_1

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 508
    :cond_1
    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/BannerAd;

    invoke-virtual {v2}, Lcom/adsdk/sdk/BannerAd;->getRefresh()I

    move-result v2

    mul-int/lit16 v0, v2, 0x3e8

    .line 509
    .local v0, refreshTime:I
    const-string v2, "ADSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "set timer: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    new-instance v1, Lcom/adsdk/sdk/banner/ReloadTask;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/banner/ReloadTask;-><init>(Lcom/adsdk/sdk/banner/AdView;)V

    .line 512
    .local v1, reloadTask:Lcom/adsdk/sdk/banner/ReloadTask;
    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->reloadTimer:Ljava/util/Timer;

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method private unregisterScreenStateBroadcastReceiver()V
    .locals 3

    .prologue
    .line 463
    :try_start_0
    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    :goto_0
    return-void

    .line 464
    :catch_0
    move-exception v0

    .line 465
    .local v0, IllegalArgumentException:Ljava/lang/Exception;
    const-string v1, "Failed to unregister screen state broadcast receiver (never registered)."

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getRefreshRate()I
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/BannerAd;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/BannerAd;

    invoke-virtual {v0}, Lcom/adsdk/sdk/BannerAd;->getRefresh()I

    move-result v0

    .line 224
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isInternalBrowser()Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/adsdk/sdk/banner/AdView;->isInternalBrowser:Z

    return v0
.end method

.method public loadNextAd()V
    .locals 2

    .prologue
    .line 369
    const-string v0, "ADSDK"

    const-string v1, "load next ad"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->loadContent()V

    .line 371
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 184
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 185
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 188
    const-string v1, "ADSDK"

    const-string v2, "onAttachedToWindow"

    invoke-static {v1, v2}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 194
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 195
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->unregisterScreenStateBroadcastReceiver()V

    .line 196
    const-string v0, "ADSDK"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    .line 404
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 406
    if-nez p1, :cond_0

    .line 407
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsdk/sdk/banner/AdView;->mIsInForeground:Z

    .line 408
    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/AdView;->resume()V

    .line 413
    :goto_0
    const-string v0, "ADSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onWindowVisibilityChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    return-void

    .line 410
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/banner/AdView;->mIsInForeground:Z

    .line 411
    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/AdView;->pause()V

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 417
    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->reloadTimer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 419
    :try_start_0
    const-string v1, "ADSDK"

    const-string v2, "cancel reload timer"

    invoke-static {v1, v2}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->reloadTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 421
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->reloadTimer:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ADSDK"

    const-string v2, "unable to cancel reloadTimer"

    invoke-static {v1, v2, v0}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 456
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->unregisterScreenStateBroadcastReceiver()V

    .line 457
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mMoPubview:Lcom/adsdk/sdk/mraid/MoPubView;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mMoPubview:Lcom/adsdk/sdk/mraid/MoPubView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubView;->destroy()V

    .line 459
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 470
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->reloadTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->reloadTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 472
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->reloadTimer:Ljava/util/Timer;

    .line 474
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->reloadTimer:Ljava/util/Timer;

    .line 475
    const-string v0, "ADSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/BannerAd;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/BannerAd;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/BannerAd;

    invoke-virtual {v0}, Lcom/adsdk/sdk/BannerAd;->getRefresh()I

    move-result v0

    if-lez v0, :cond_2

    .line 478
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->startReloadTimer()V

    .line 481
    :cond_1
    :goto_0
    return-void

    .line 479
    :cond_2
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/BannerAd;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mMoPubview:Lcom/adsdk/sdk/mraid/MoPubView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mBannerView:Lcom/adsdk/sdk/banner/BannerAdView;

    if-nez v0, :cond_1

    .line 480
    :cond_3
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->loadContent()V

    goto :goto_0
.end method

.method public setAdListener(Lcom/adsdk/sdk/AdListener;)V
    .locals 1
    .parameter "bannerListener"

    .prologue
    .line 489
    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView;->adListener:Lcom/adsdk/sdk/AdListener;

    .line 490
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mMoPubview:Lcom/adsdk/sdk/mraid/MoPubView;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mMoPubview:Lcom/adsdk/sdk/mraid/MoPubView;

    invoke-virtual {v0, p1}, Lcom/adsdk/sdk/mraid/MoPubView;->setAdListener(Lcom/adsdk/sdk/AdListener;)V

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mBannerView:Lcom/adsdk/sdk/banner/BannerAdView;

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mBannerView:Lcom/adsdk/sdk/banner/BannerAdView;

    invoke-virtual {v0, p1}, Lcom/adsdk/sdk/banner/BannerAdView;->setAdListener(Lcom/adsdk/sdk/AdListener;)V

    .line 496
    :cond_1
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 83
    return-void
.end method

.method public setInternalBrowser(Z)V
    .locals 0
    .parameter "isInternalBrowser"

    .prologue
    .line 499
    iput-boolean p1, p0, Lcom/adsdk/sdk/banner/AdView;->isInternalBrowser:Z

    .line 500
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 80
    return-void
.end method
