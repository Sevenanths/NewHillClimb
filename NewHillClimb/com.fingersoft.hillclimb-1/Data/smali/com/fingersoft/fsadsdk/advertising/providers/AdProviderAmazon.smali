.class public Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;
.super Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;
.source "AdProviderAmazon.java"

# interfaces
.implements Lcom/amazon/device/ads/AdListener;


# static fields
.field private static final REFRESH_TIME_SECONDS:I = 0x3c


# instance fields
.field private adView:Lcom/amazon/device/ads/AdLayout;

.field private adViewFailed:Z

.field private appKey:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private reloadTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "appKey"

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->adView:Lcom/amazon/device/ads/AdLayout;

    .line 21
    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->handler:Landroid/os/Handler;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->adViewFailed:Z

    .line 83
    new-instance v0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon$1;

    invoke-direct {v0, p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon$1;-><init>(Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;)V

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->reloadTask:Ljava/lang/Runnable;

    .line 26
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->appKey:Ljava/lang/String;

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;)Lcom/amazon/device/ads/AdLayout;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->adView:Lcom/amazon/device/ads/AdLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;)Z
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->adViewFailed:Z

    return v0
.end method

.method static synthetic access$2(Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->reloadTask:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public adProviderCreate(Z)V
    .locals 5
    .parameter "testMode"

    .prologue
    .line 40
    :try_start_0
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->handler:Landroid/os/Handler;

    if-nez v2, :cond_0

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->handler:Landroid/os/Handler;

    .line 41
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " - onProviderCreate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 42
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->appKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/amazon/device/ads/AdRegistration;->setAppKey(Ljava/lang/String;)V

    .line 44
    new-instance v2, Lcom/amazon/device/ads/AdLayout;

    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v3}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazon/device/ads/AdLayout;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->adView:Lcom/amazon/device/ads/AdLayout;

    .line 45
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    .line 46
    const/4 v3, -0x2

    const/16 v4, 0x51

    .line 45
    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 47
    .local v1, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->adView:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v2, v1}, Lcom/amazon/device/ads/AdLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->adView:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v2, p0}, Lcom/amazon/device/ads/AdLayout;->setListener(Lcom/amazon/device/ads/AdListener;)V

    .line 50
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->adView:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v2, v3, v1}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->adViewFailed:Z

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " - loading ad"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 54
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->adView:Lcom/amazon/device/ads/AdLayout;

    new-instance v3, Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-direct {v3}, Lcom/amazon/device/ads/AdTargetingOptions;-><init>()V

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/AdLayout;->loadAd(Lcom/amazon/device/ads/AdTargetingOptions;)Z

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " - loaded ad"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 56
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->adView:Lcom/amazon/device/ads/AdLayout;

    const/16 v3, 0x7530

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/AdLayout;->setTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v1           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v2}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->onAdViewFailed()V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "amazon"

    return-object v0
.end method

.method public onAdCollapsed(Lcom/amazon/device/ads/AdLayout;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 68
    return-void
.end method

.method public onAdExpanded(Lcom/amazon/device/ads/AdLayout;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 73
    return-void
.end method

.method public onAdFailedToLoad(Lcom/amazon/device/ads/AdLayout;Lcom/amazon/device/ads/AdError;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " - Ad loading failed - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazon/device/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->onAdViewFailed()V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->adViewFailed:Z

    .line 81
    return-void
.end method

.method public onAdLoaded(Lcom/amazon/device/ads/AdLayout;Lcom/amazon/device/ads/AdProperties;)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " - Ad loaded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    const-string v1, "adreceived/amazon"

    invoke-virtual {v0, v1}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackPageView(Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->adViewFailed:Z

    .line 110
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAmazon;->reloadTask:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 111
    return-void
.end method
