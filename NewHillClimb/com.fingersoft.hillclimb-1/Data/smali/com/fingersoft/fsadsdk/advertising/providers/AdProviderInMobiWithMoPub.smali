.class public Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobiWithMoPub;
.super Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;
.source "AdProviderInMobiWithMoPub.java"

# interfaces
.implements Lcom/mopub/mobileads/MoPubView$BannerAdListener;


# instance fields
.field private mAdFailCalled:Z

.field private mMoPubView:Lcom/mopub/mobileads/MoPubView;

.field private moPubPublisherId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "moPubPublisherId"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobiWithMoPub;->mAdFailCalled:Z

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobiWithMoPub;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    .line 18
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobiWithMoPub;->moPubPublisherId:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public adProviderCreate(Z)V
    .locals 3
    .parameter "testMode"

    .prologue
    .line 32
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " - onProviderCreate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 35
    new-instance v1, Lcom/mopub/mobileads/MoPubView;

    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobiWithMoPub;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v2}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mopub/mobileads/MoPubView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobiWithMoPub;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    .line 36
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobiWithMoPub;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobiWithMoPub;->moPubPublisherId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/MoPubView;->setAdUnitId(Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobiWithMoPub;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubView;->loadAd()V

    .line 38
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobiWithMoPub;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/MoPubView;->setVisibility(I)V

    .line 39
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobiWithMoPub;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v1, p0}, Lcom/mopub/mobileads/MoPubView;->setBannerAdListener(Lcom/mopub/mobileads/MoPubView$BannerAdListener;)V

    .line 40
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobiWithMoPub;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/MoPubView;->setAutorefreshEnabled(Z)V

    .line 41
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobiWithMoPub;->mAdFailCalled:Z

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " - Called load ad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 47
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobiWithMoPub;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v1}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->onAdViewFailed()V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "mopub"

    return-object v0
.end method

.method public onBannerClicked(Lcom/mopub/mobileads/MoPubView;)V
    .locals 0
    .parameter "banner"

    .prologue
    .line 67
    return-void
.end method

.method public onBannerCollapsed(Lcom/mopub/mobileads/MoPubView;)V
    .locals 0
    .parameter "banner"

    .prologue
    .line 73
    return-void
.end method

.method public onBannerExpanded(Lcom/mopub/mobileads/MoPubView;)V
    .locals 0
    .parameter "banner"

    .prologue
    .line 70
    return-void
.end method

.method public onBannerFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 2
    .parameter "banner"
    .parameter "errorCode"

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " - Banner failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobiWithMoPub;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->onAdViewFailed()V

    .line 64
    return-void
.end method

.method public onBannerLoaded(Lcom/mopub/mobileads/MoPubView;)V
    .locals 2
    .parameter "banner"

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " - Banner loaded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobiWithMoPub;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobiWithMoPub;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    const-string v1, "adreceived/mopub/inmobi"

    invoke-virtual {v0, v1}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackPageView(Ljava/lang/String;)V

    .line 57
    return-void
.end method
