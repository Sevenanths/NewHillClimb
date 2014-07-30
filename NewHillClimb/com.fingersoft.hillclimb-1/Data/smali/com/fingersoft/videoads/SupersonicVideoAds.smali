.class public Lcom/fingersoft/videoads/SupersonicVideoAds;
.super Ljava/lang/Object;
.source "SupersonicVideoAds.java"

# interfaces
.implements Lcom/supersonicads/sdk/android/listeners/OnBrandConnectStateChangedListener;
.implements Lcom/fingersoft/videoads/VideoAdProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "SupersonicVideoAds"

.field private static final TEST_MODE:Z = false

.field private static final applicationKey:Ljava/lang/String; = "2e4cac71"

.field private static mSupersonicAdsAgent:Lcom/supersonicads/sdk/android/SupersonicAdsPublisherAgent;


# instance fields
.field private hasCampaigns:Z

.field private mActivity:Landroid/app/Activity;

.field private mPlayType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/fingersoft/videoads/SupersonicVideoAds;->mSupersonicAdsAgent:Lcom/supersonicads/sdk/android/SupersonicAdsPublisherAgent;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fingersoft/videoads/SupersonicVideoAds;->mActivity:Landroid/app/Activity;

    .line 21
    iput v1, p0, Lcom/fingersoft/videoads/SupersonicVideoAds;->mPlayType:I

    .line 22
    iput-boolean v1, p0, Lcom/fingersoft/videoads/SupersonicVideoAds;->hasCampaigns:Z

    return-void
.end method


# virtual methods
.method public hasCampaigns()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/fingersoft/videoads/SupersonicVideoAds;->hasCampaigns:Z

    return v0
.end method

.method public initialize(Landroid/app/Activity;)V
    .locals 8
    .parameter "activity"

    .prologue
    const/4 v7, 0x0

    .line 29
    :try_start_0
    iput-object p1, p0, Lcom/fingersoft/videoads/SupersonicVideoAds;->mActivity:Landroid/app/Activity;

    .line 30
    invoke-static {p1}, Lcom/supersonicads/sdk/android/SupersonicAdsPublisherAgent;->getInstance(Landroid/content/Context;)Lcom/supersonicads/sdk/android/SupersonicAdsPublisherAgent;

    move-result-object v0

    sput-object v0, Lcom/fingersoft/videoads/SupersonicVideoAds;->mSupersonicAdsAgent:Lcom/supersonicads/sdk/android/SupersonicAdsPublisherAgent;

    .line 37
    sget-object v0, Lcom/fingersoft/videoads/SupersonicVideoAds;->mSupersonicAdsAgent:Lcom/supersonicads/sdk/android/SupersonicAdsPublisherAgent;

    const-string v2, "2e4cac71"

    iget-object v1, p0, Lcom/fingersoft/videoads/SupersonicVideoAds;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/fingersoft/game/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v1, p1

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/supersonicads/sdk/android/SupersonicAdsPublisherAgent;->initializeBrandConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/supersonicads/sdk/android/listeners/OnBrandConnectStateChangedListener;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v6

    .line 41
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    sput-object v7, Lcom/fingersoft/videoads/SupersonicVideoAds;->mSupersonicAdsAgent:Lcom/supersonicads/sdk/android/SupersonicAdsPublisherAgent;

    goto :goto_0
.end method

.method public noMoreOffers()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fingersoft/videoads/SupersonicVideoAds;->hasCampaigns:Z

    .line 116
    return-void
.end method

.method public onAdFinished(Ljava/lang/String;I)V
    .locals 4
    .parameter "campaignName"
    .parameter "receivedCredits"

    .prologue
    const/16 v3, 0x3a98

    .line 102
    const/16 v0, 0x3a98

    .line 103
    .local v0, value:I
    iget v1, p0, Lcom/fingersoft/videoads/SupersonicVideoAds;->mPlayType:I

    packed-switch v1, :pswitch_data_0

    .line 109
    :goto_0
    iget-object v1, p0, Lcom/fingersoft/videoads/SupersonicVideoAds;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/fingersoft/game/InAppPurchaseStore;->addCoins(Landroid/content/Context;I)V

    .line 110
    iget-object v1, p0, Lcom/fingersoft/videoads/SupersonicVideoAds;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/fingersoft/game/InAppPurchaseStore;->markAsProcessed(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    return-void

    .line 105
    :pswitch_0
    iget-object v1, p0, Lcom/fingersoft/videoads/SupersonicVideoAds;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "reward.videoplay"

    invoke-static {v1, v2, v3}, Lcom/fingersoft/fsadsdk/advertising/ApplicationSettings;->getValueInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 106
    :pswitch_1
    iget-object v1, p0, Lcom/fingersoft/videoads/SupersonicVideoAds;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "reward.videoplay_via_promo"

    invoke-static {v1, v2, v3}, Lcom/fingersoft/fsadsdk/advertising/ApplicationSettings;->getValueInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/fingersoft/videoads/SupersonicVideoAds;->mSupersonicAdsAgent:Lcom/supersonicads/sdk/android/SupersonicAdsPublisherAgent;

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/fingersoft/videoads/SupersonicVideoAds;->mSupersonicAdsAgent:Lcom/supersonicads/sdk/android/SupersonicAdsPublisherAgent;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/android/SupersonicAdsPublisherAgent;->release()V

    .line 65
    :cond_0
    return-void
.end method

.method public onInitFail(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 98
    return-void
.end method

.method public onInitSuccess(Lcom/supersonicads/sdk/android/BrandConnectParameters;)V
    .locals 1
    .parameter "campaigns"

    .prologue
    .line 93
    invoke-virtual {p1}, Lcom/supersonicads/sdk/android/BrandConnectParameters;->getAvailableAds()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fingersoft/videoads/SupersonicVideoAds;->hasCampaigns:Z

    .line 94
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/fingersoft/videoads/SupersonicVideoAds;->mSupersonicAdsAgent:Lcom/supersonicads/sdk/android/SupersonicAdsPublisherAgent;

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/fingersoft/videoads/SupersonicVideoAds;->mSupersonicAdsAgent:Lcom/supersonicads/sdk/android/SupersonicAdsPublisherAgent;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/android/SupersonicAdsPublisherAgent;->applictionPaused()V

    .line 83
    :cond_0
    return-void
.end method

.method public onRestart()V
    .locals 2

    .prologue
    .line 86
    sget-object v0, Lcom/fingersoft/videoads/SupersonicVideoAds;->mSupersonicAdsAgent:Lcom/supersonicads/sdk/android/SupersonicAdsPublisherAgent;

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Lcom/fingersoft/videoads/SupersonicVideoAds;->mSupersonicAdsAgent:Lcom/supersonicads/sdk/android/SupersonicAdsPublisherAgent;

    iget-object v1, p0, Lcom/fingersoft/videoads/SupersonicVideoAds;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/android/SupersonicAdsPublisherAgent;->applicationRestarted(Landroid/content/Context;)V

    .line 89
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/fingersoft/videoads/SupersonicVideoAds;->mSupersonicAdsAgent:Lcom/supersonicads/sdk/android/SupersonicAdsPublisherAgent;

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcom/fingersoft/videoads/SupersonicVideoAds;->mSupersonicAdsAgent:Lcom/supersonicads/sdk/android/SupersonicAdsPublisherAgent;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/android/SupersonicAdsPublisherAgent;->applictionResumed()V

    .line 71
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 74
    sget-object v0, Lcom/fingersoft/videoads/SupersonicVideoAds;->mSupersonicAdsAgent:Lcom/supersonicads/sdk/android/SupersonicAdsPublisherAgent;

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lcom/fingersoft/videoads/SupersonicVideoAds;->mSupersonicAdsAgent:Lcom/supersonicads/sdk/android/SupersonicAdsPublisherAgent;

    iget-object v1, p0, Lcom/fingersoft/videoads/SupersonicVideoAds;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/android/SupersonicAdsPublisherAgent;->applictionStopped(Landroid/content/Context;)V

    .line 77
    :cond_0
    return-void
.end method

.method public playVideo(I)Z
    .locals 2
    .parameter "playType"

    .prologue
    .line 51
    sget-object v0, Lcom/fingersoft/videoads/SupersonicVideoAds;->mSupersonicAdsAgent:Lcom/supersonicads/sdk/android/SupersonicAdsPublisherAgent;

    if-eqz v0, :cond_0

    .line 52
    const-string v0, "SupersonicVideoAds"

    const-string v1, "Playing video"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iput p1, p0, Lcom/fingersoft/videoads/SupersonicVideoAds;->mPlayType:I

    .line 54
    sget-object v0, Lcom/fingersoft/videoads/SupersonicVideoAds;->mSupersonicAdsAgent:Lcom/supersonicads/sdk/android/SupersonicAdsPublisherAgent;

    iget-object v1, p0, Lcom/fingersoft/videoads/SupersonicVideoAds;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/android/SupersonicAdsPublisherAgent;->showBrandConnect(Landroid/content/Context;)V

    .line 55
    const/4 v0, 0x1

    .line 57
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
