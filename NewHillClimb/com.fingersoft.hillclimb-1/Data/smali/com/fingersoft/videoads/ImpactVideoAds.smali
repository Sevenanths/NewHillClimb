.class public Lcom/fingersoft/videoads/ImpactVideoAds;
.super Ljava/lang/Object;
.source "ImpactVideoAds.java"

# interfaces
.implements Lcom/applifier/impact/android/IApplifierImpactListener;
.implements Lcom/fingersoft/videoads/VideoAdProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "ImpactVideoAds"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mImpact:Lcom/applifier/impact/android/ApplifierImpact;

.field private mPlayType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/fingersoft/videoads/ImpactVideoAds;->mActivity:Landroid/app/Activity;

    .line 18
    iput-object v0, p0, Lcom/fingersoft/videoads/ImpactVideoAds;->mImpact:Lcom/applifier/impact/android/ApplifierImpact;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/fingersoft/videoads/ImpactVideoAds;->mPlayType:I

    return-void
.end method


# virtual methods
.method public hasCampaigns()Z
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/applifier/impact/android/ApplifierImpact;->instance:Lcom/applifier/impact/android/ApplifierImpact;

    invoke-virtual {v0}, Lcom/applifier/impact/android/ApplifierImpact;->canShowCampaigns()Z

    move-result v0

    return v0
.end method

.method public initialize(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/fingersoft/videoads/ImpactVideoAds;->mActivity:Landroid/app/Activity;

    .line 30
    new-instance v0, Lcom/applifier/impact/android/ApplifierImpact;

    iget-object v1, p0, Lcom/fingersoft/videoads/ImpactVideoAds;->mActivity:Landroid/app/Activity;

    const-string v2, "11140"

    invoke-direct {v0, v1, v2, p0}, Lcom/applifier/impact/android/ApplifierImpact;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/applifier/impact/android/IApplifierImpactListener;)V

    iput-object v0, p0, Lcom/fingersoft/videoads/ImpactVideoAds;->mImpact:Lcom/applifier/impact/android/ApplifierImpact;

    .line 31
    return-void
.end method

.method public onCampaignsAvailable()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public onCampaignsFetchFailed()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public onImpactClose()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public onImpactOpen()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 55
    sget-object v0, Lcom/applifier/impact/android/ApplifierImpact;->instance:Lcom/applifier/impact/android/ApplifierImpact;

    invoke-virtual {v0, p1}, Lcom/applifier/impact/android/ApplifierImpact;->changeActivity(Landroid/app/Activity;)V

    .line 56
    return-void
.end method

.method public onVideoCompleted(Ljava/lang/String;Z)V
    .locals 4
    .parameter "itemKey"
    .parameter "skipped"

    .prologue
    const/16 v3, 0x1388

    .line 88
    if-nez p2, :cond_0

    .line 89
    const/16 v0, 0x1388

    .line 90
    .local v0, value:I
    iget v1, p0, Lcom/fingersoft/videoads/ImpactVideoAds;->mPlayType:I

    packed-switch v1, :pswitch_data_0

    .line 96
    :goto_0
    iget-object v1, p0, Lcom/fingersoft/videoads/ImpactVideoAds;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/fingersoft/game/InAppPurchaseStore;->addCoins(Landroid/content/Context;I)V

    .line 97
    iget-object v1, p0, Lcom/fingersoft/videoads/ImpactVideoAds;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/fingersoft/game/InAppPurchaseStore;->markAsProcessed(Landroid/content/Context;Ljava/lang/String;)V

    .line 99
    .end local v0           #value:I
    :cond_0
    return-void

    .line 92
    .restart local v0       #value:I
    :pswitch_0
    iget-object v1, p0, Lcom/fingersoft/videoads/ImpactVideoAds;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "reward.videoplay"

    invoke-static {v1, v2, v3}, Lcom/fingersoft/fsadsdk/advertising/ApplicationSettings;->getValueInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 93
    :pswitch_1
    iget-object v1, p0, Lcom/fingersoft/videoads/ImpactVideoAds;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "reward.videoplay_via_promo"

    invoke-static {v1, v2, v3}, Lcom/fingersoft/fsadsdk/advertising/ApplicationSettings;->getValueInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onVideoStarted()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public playVideo(I)Z
    .locals 5
    .parameter "playType"

    .prologue
    const/4 v4, 0x0

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    .local v0, optionsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "noOfferScreen"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v2, "openAnimated"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v2, "sid"

    const-string v3, "gom"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v2, "muteVideoSounds"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v2, "ImpactVideoAds"

    const-string v3, "Playing video"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    sget-object v2, Lcom/applifier/impact/android/ApplifierImpact;->instance:Lcom/applifier/impact/android/ApplifierImpact;

    invoke-virtual {v2, v0}, Lcom/applifier/impact/android/ApplifierImpact;->showImpact(Ljava/util/Map;)Z

    move-result v1

    .line 50
    .local v1, success:Z
    iput p1, p0, Lcom/fingersoft/videoads/ImpactVideoAds;->mPlayType:I

    .line 51
    return v1
.end method
