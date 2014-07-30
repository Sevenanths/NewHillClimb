.class public Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;
.super Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;
.source "AdProviderMillenial.java"

# interfaces
.implements Lcom/millennialmedia/android/RequestListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# static fields
.field private static final BANNER_AD_HEIGHT:I = 0x32

.field private static final BANNER_AD_WIDTH:I = 0x140

.field private static final MED_BANNER_HEIGHT:I = 0x3c

.field private static final MED_BANNER_WIDTH:I = 0x1e0


# instance fields
.field private mAdFailCalled:Z

.field private millennialAdView:Lcom/millennialmedia/android/MMAdView;

.field private millennialId:Ljava/lang/String;

.field private refreshEnabled:Z

.field refreshHandler:Landroid/os/Handler;

.field private refreshThread:Ljava/lang/Thread;

.field private refreshTimeInMs:I

.field private smallBannersOnly:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .parameter "millennialId"
    .parameter "smallBannersOnly"

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->mAdFailCalled:Z

    .line 39
    iput-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->millennialAdView:Lcom/millennialmedia/android/MMAdView;

    .line 40
    iput-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->millennialId:Ljava/lang/String;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->smallBannersOnly:Z

    .line 43
    const v0, 0xea60

    iput v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->refreshTimeInMs:I

    .line 51
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->millennialId:Ljava/lang/String;

    .line 52
    iput-boolean p2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->smallBannersOnly:Z

    .line 53
    return-void
.end method

.method static synthetic access$0(Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;)Z
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->refreshEnabled:Z

    return v0
.end method

.method static synthetic access$1(Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;)I
    .locals 1
    .parameter

    .prologue
    .line 43
    iget v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->refreshTimeInMs:I

    return v0
.end method


# virtual methods
.method public MMAdOverlayClosed(Lcom/millennialmedia/android/MMAd;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 225
    return-void
.end method

.method public MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAd;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " - overlay launched"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public MMAdRequestIsCaching(Lcom/millennialmedia/android/MMAd;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " - is caching"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public adProviderCreate(Z)V
    .locals 11
    .parameter "testMode"

    .prologue
    .line 66
    const/16 v5, 0x140

    .line 67
    .local v5, placementWidth:I
    const/16 v4, 0x32

    .line 70
    .local v4, placementHeight:I
    :try_start_0
    iget-boolean v8, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->smallBannersOnly:Z

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v8}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const/16 v9, 0x1e0

    invoke-static {v8, v9}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->canFit(Landroid/app/Activity;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 72
    const/16 v5, 0x1e0

    .line 73
    const/16 v4, 0x3c

    .line 78
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " - onProviderCreate"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 79
    new-instance v8, Lcom/millennialmedia/android/MMAdView;

    iget-object v9, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v9}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/millennialmedia/android/MMAdView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->millennialAdView:Lcom/millennialmedia/android/MMAdView;

    .line 80
    iget-object v8, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->millennialAdView:Lcom/millennialmedia/android/MMAdView;

    iget-object v9, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->millennialId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/millennialmedia/android/MMAdView;->setApid(Ljava/lang/String;)V

    .line 81
    iget-object v8, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->millennialAdView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v8, p0}, Lcom/millennialmedia/android/MMAdView;->setListener(Lcom/millennialmedia/android/RequestListener;)V

    .line 82
    iget-object v8, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->millennialAdView:Lcom/millennialmedia/android/MMAdView;

    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->getDefaultAdId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/millennialmedia/android/MMAdView;->setId(I)V

    .line 83
    iget-object v8, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->millennialAdView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v8, v5}, Lcom/millennialmedia/android/MMAdView;->setWidth(I)V

    .line 84
    iget-object v8, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->millennialAdView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v8, v4}, Lcom/millennialmedia/android/MMAdView;->setHeight(I)V

    .line 87
    new-instance v6, Lcom/millennialmedia/android/MMRequest;

    invoke-direct {v6}, Lcom/millennialmedia/android/MMRequest;-><init>()V

    .line 94
    .local v6, request:Lcom/millennialmedia/android/MMRequest;
    iget-object v8, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->millennialAdView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v8, v6}, Lcom/millennialmedia/android/MMAdView;->setMMRequest(Lcom/millennialmedia/android/MMRequest;)V

    .line 95
    iget-object v8, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->millennialAdView:Lcom/millennialmedia/android/MMAdView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/millennialmedia/android/MMAdView;->setVisibility(I)V

    .line 97
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->mAdFailCalled:Z

    .line 99
    const/4 v8, 0x1

    int-to-float v9, v5

    iget-object v10, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v10}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v3, v8

    .line 100
    .local v3, layoutWidth:I
    const/4 v8, 0x1

    int-to-float v9, v4

    iget-object v10, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v10}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v1, v8

    .line 102
    .local v1, layoutHeight:I
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 103
    .local v2, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0xc

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 104
    const/16 v8, 0xe

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 106
    iget-object v8, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    iget-object v9, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->millennialAdView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v8, v9, v2}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 110
    .local v7, weakSelf:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;>;"
    new-instance v8, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial$1;

    invoke-direct {v8, p0, v7}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial$1;-><init>(Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;Ljava/lang/ref/WeakReference;)V

    iput-object v8, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->refreshHandler:Landroid/os/Handler;

    .line 115
    iget-object v8, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->millennialAdView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v8}, Lcom/millennialmedia/android/MMAdView;->getAd()V

    .line 116
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " - After Ad Load"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v1           #layoutHeight:I
    .end local v2           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3           #layoutWidth:I
    .end local v6           #request:Lcom/millennialmedia/android/MMRequest;
    .end local v7           #weakSelf:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;>;"
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Ljava/lang/Exception;
    iget-object v8, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v8}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->onAdViewFailed()V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "millennial"

    return-object v0
.end method

.method public onSingleTap(Lcom/millennialmedia/android/MMAd;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 231
    return-void
.end method

.method public refreshAds()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->refreshThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->startRefresh()V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->millennialAdView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    const-string v0, "MMAdView is visible. Refreshing."

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->millennialAdView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getAd()V

    .line 138
    :goto_0
    return-void

    .line 135
    :cond_1
    const-string v0, "MMAdView is invisible."

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->stopRefresh()V

    goto :goto_0
.end method

.method public requestCompleted(Lcom/millennialmedia/android/MMAd;)V
    .locals 4
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    .line 203
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->millennialAdView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0, v3}, Lcom/millennialmedia/android/MMAdView;->setVisibility(I)V

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " - requestCompleted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    const-string v1, "adreceived/millennial"

    invoke-virtual {v0, v1}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackPageView(Ljava/lang/String;)V

    .line 206
    iget-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->refreshEnabled:Z

    if-nez v0, :cond_0

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->refreshEnabled:Z

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->refreshHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->refreshTimeInMs:I

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 211
    return-void
.end method

.method public requestFailed(Lcom/millennialmedia/android/MMAd;Lcom/millennialmedia/android/MMException;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " - requestFailed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->mAdFailCalled:Z

    .line 218
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->onAdViewFailed()V

    .line 219
    return-void
.end method

.method public startRefresh()V
    .locals 1

    .prologue
    .line 142
    const-string v0, "startRefresh() called"

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->refreshThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->refreshEnabled:Z

    if-eqz v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    const-string v0, "Start"

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->refreshEnabled:Z

    .line 148
    new-instance v0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial$2;

    invoke-direct {v0, p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial$2;-><init>(Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;)V

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->refreshThread:Ljava/lang/Thread;

    .line 166
    const-string v0, "refreshThread started"

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->refreshThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public stopRefresh()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 172
    const-string v0, "Stopping refresh..."

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->refreshEnabled:Z

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->refreshThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    iput-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->refreshThread:Ljava/lang/Thread;

    .line 186
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 184
    iput-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->refreshThread:Ljava/lang/Thread;

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v0

    .line 184
    iput-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->refreshThread:Ljava/lang/Thread;

    .line 185
    throw v0
.end method
