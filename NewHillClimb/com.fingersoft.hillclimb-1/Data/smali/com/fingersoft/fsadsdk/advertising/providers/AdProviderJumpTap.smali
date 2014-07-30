.class public Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderJumpTap;
.super Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;
.source "AdProviderJumpTap.java"

# interfaces
.implements Lcom/jumptap/adtag/JtAdViewListener;


# instance fields
.field private mAdFailCalled:Z

.field private mAdView:Lcom/jumptap/adtag/JtAdView;

.field private mPriority:Ljava/lang/String;

.field private mPublisherID:Ljava/lang/String;

.field private mSiteID:Ljava/lang/String;

.field private mSpotID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pubId"
    .parameter "spotId"
    .parameter "siteId"
    .parameter "priority"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderJumpTap;->mAdView:Lcom/jumptap/adtag/JtAdView;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderJumpTap;->mPublisherID:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderJumpTap;->mSpotID:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderJumpTap;->mSiteID:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderJumpTap;->mPriority:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderJumpTap;->mAdFailCalled:Z

    .line 24
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderJumpTap;->mPublisherID:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderJumpTap;->mSpotID:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderJumpTap;->mSiteID:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderJumpTap;->mPriority:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public adPause()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public adProviderClose()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderJumpTap;->mAdView:Lcom/jumptap/adtag/JtAdView;

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderJumpTap;->mAdView:Lcom/jumptap/adtag/JtAdView;

    .line 82
    :cond_0
    return-void
.end method

.method public adProviderCreate(Z)V
    .locals 4
    .parameter "testMode"

    .prologue
    .line 44
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderJumpTap;->mAdFailCalled:Z

    .line 46
    invoke-static {}, Lcom/jumptap/adtag/JtAdWidgetSettingsFactory;->createWidgetSettings()Lcom/jumptap/adtag/JtAdWidgetSettings;

    move-result-object v1

    .line 47
    .local v1, s:Lcom/jumptap/adtag/JtAdWidgetSettings;
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderJumpTap;->mPublisherID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setPublisherId(Ljava/lang/String;)V

    .line 48
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderJumpTap;->mSpotID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setSpotId(Ljava/lang/String;)V

    .line 49
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderJumpTap;->mSiteID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setSiteId(Ljava/lang/String;)V

    .line 50
    const-string v2, "US"

    invoke-virtual {v1, v2}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setCountry(Ljava/lang/String;)V

    .line 52
    new-instance v2, Lcom/jumptap/adtag/JtAdView;

    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderJumpTap;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v3}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/jumptap/adtag/JtAdView;-><init>(Landroid/content/Context;Lcom/jumptap/adtag/JtAdWidgetSettings;)V

    iput-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderJumpTap;->mAdView:Lcom/jumptap/adtag/JtAdView;

    .line 53
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderJumpTap;->mAdView:Lcom/jumptap/adtag/JtAdView;

    invoke-virtual {v2, p0}, Lcom/jumptap/adtag/JtAdView;->setAdViewListener(Lcom/jumptap/adtag/JtAdViewListener;)V

    .line 56
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderJumpTap;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderJumpTap;->mAdView:Lcom/jumptap/adtag/JtAdView;

    invoke-virtual {v2, v3}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->addView(Landroid/view/View;)V

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderJumpTap;->getName()Ljava/lang/String;

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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v1           #s:Lcom/jumptap/adtag/JtAdWidgetSettings;
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderJumpTap;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v2}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->onAdViewFailed()V

    goto :goto_0
.end method

.method public adResume()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderJumpTap;->mPriority:Ljava/lang/String;

    const-string v1, "HIGH"

    if-ne v0, v1, :cond_0

    .line 34
    const-string v0, "jumptap_high"

    .line 36
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "jumptap_low"

    goto :goto_0
.end method

.method public onAdError(Lcom/jumptap/adtag/JtAdView;II)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderJumpTap;->mAdFailCalled:Z

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderJumpTap;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " - Ad loading failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderJumpTap;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->onAdViewFailed()V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderJumpTap;->mAdFailCalled:Z

    .line 93
    :cond_0
    return-void
.end method

.method public onBannerClicked(Lcom/jumptap/adtag/JtAdView;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 96
    return-void
.end method

.method public onBeginAdInteraction(Lcom/jumptap/adtag/JtAdView;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 99
    return-void
.end method

.method public onContract(Lcom/jumptap/adtag/JtAdView;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 102
    return-void
.end method

.method public onEndAdInteraction(Lcom/jumptap/adtag/JtAdView;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 105
    return-void
.end method

.method public onExpand(Lcom/jumptap/adtag/JtAdView;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 108
    return-void
.end method

.method public onFocusChange(Lcom/jumptap/adtag/JtAdView;IZ)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 111
    return-void
.end method

.method public onHide(Lcom/jumptap/adtag/JtAdView;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 114
    return-void
.end method

.method public onInterstitialDismissed(Lcom/jumptap/adtag/JtAdView;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 117
    return-void
.end method

.method public onLaunchActivity(Lcom/jumptap/adtag/JtAdView;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 120
    return-void
.end method

.method public onNewAd(Lcom/jumptap/adtag/JtAdView;ILjava/lang/String;)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderJumpTap;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adreceived/jumptap/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderJumpTap;->mPriority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackPageView(Ljava/lang/String;)V

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderJumpTap;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " - New Ad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onNoAdFound(Lcom/jumptap/adtag/JtAdView;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderJumpTap;->mAdFailCalled:Z

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderJumpTap;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " - No ad found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderJumpTap;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->onAdViewFailed()V

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderJumpTap;->mAdFailCalled:Z

    .line 145
    :cond_0
    return-void
.end method

.method public onReturnFromActivity(Lcom/jumptap/adtag/JtAdView;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 148
    return-void
.end method
