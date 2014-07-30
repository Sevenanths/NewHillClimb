.class public Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderInMobiInterstitial;
.super Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialProvider;
.source "AdProviderInMobiInterstitial.java"

# interfaces
.implements Lcom/inmobi/monetization/IMInterstitialListener;


# instance fields
.field private inMobiId:Ljava/lang/String;

.field private interstitial:Lcom/inmobi/monetization/IMInterstitial;

.field private mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;


# direct methods
.method public constructor <init>(Lcom/fingersoft/fsadsdk/advertising/AdManager;Ljava/lang/String;)V
    .locals 1
    .parameter "mAdManager"
    .parameter "inMobiId"

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialProvider;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderInMobiInterstitial;->interstitial:Lcom/inmobi/monetization/IMInterstitial;

    .line 17
    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderInMobiInterstitial;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    .line 21
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderInMobiInterstitial;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    .line 22
    iput-object p2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderInMobiInterstitial;->inMobiId:Ljava/lang/String;

    .line 23
    invoke-direct {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderInMobiInterstitial;->loadInterstitial()V

    .line 24
    return-void
.end method

.method private loadInterstitial()V
    .locals 3

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderInMobiInterstitial;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderInMobiInterstitial;->inMobiId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/inmobi/commons/InMobi;->initialize(Landroid/app/Activity;Ljava/lang/String;)V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderInMobiInterstitial;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " - onProviderCreate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/inmobi/monetization/IMInterstitial;

    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderInMobiInterstitial;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v1}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderInMobiInterstitial;->inMobiId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/inmobi/monetization/IMInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderInMobiInterstitial;->interstitial:Lcom/inmobi/monetization/IMInterstitial;

    .line 32
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderInMobiInterstitial;->interstitial:Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v0, p0}, Lcom/inmobi/monetization/IMInterstitial;->setIMInterstitialListener(Lcom/inmobi/monetization/IMInterstitialListener;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "in_mobi"

    return-object v0
.end method

.method public onDismissInterstitialScreen(Lcom/inmobi/monetization/IMInterstitial;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderInMobiInterstitial;->listener:Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderInMobiInterstitial;->listener:Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialListener;

    invoke-interface {v0}, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialListener;->onDismiss()V

    .line 66
    :cond_0
    return-void
.end method

.method public onInterstitialFailed(Lcom/inmobi/monetization/IMInterstitial;Lcom/inmobi/monetization/IMErrorCode;)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderInMobiInterstitial;->listener:Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderInMobiInterstitial;->listener:Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialListener;

    invoke-interface {v0}, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialListener;->onFailed()V

    .line 72
    :cond_0
    return-void
.end method

.method public onInterstitialInteraction(Lcom/inmobi/monetization/IMInterstitial;Ljava/util/Map;)V
    .locals 1
    .parameter "arg0"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/monetization/IMInterstitial;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p2, arg1:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderInMobiInterstitial;->listener:Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderInMobiInterstitial;->listener:Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialListener;

    invoke-interface {v0}, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialListener;->onInteract()V

    .line 78
    :cond_0
    return-void
.end method

.method public onInterstitialLoaded(Lcom/inmobi/monetization/IMInterstitial;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderInMobiInterstitial;->interstitial:Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/monetization/IMInterstitial;->getState()Lcom/inmobi/monetization/IMInterstitial$State;

    move-result-object v0

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$State;->READY:Lcom/inmobi/monetization/IMInterstitial$State;

    if-ne v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderInMobiInterstitial;->interstitial:Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/monetization/IMInterstitial;->show()V

    .line 86
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderInMobiInterstitial;->listener:Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderInMobiInterstitial;->listener:Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialListener;

    invoke-interface {v0}, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialListener;->onLoaded()V

    .line 88
    :cond_0
    return-void
.end method

.method public onLeaveApplication(Lcom/inmobi/monetization/IMInterstitial;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 91
    return-void
.end method

.method public onShowInterstitialScreen(Lcom/inmobi/monetization/IMInterstitial;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderInMobiInterstitial;->listener:Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderInMobiInterstitial;->listener:Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialListener;

    invoke-interface {v0}, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialListener;->onShow()V

    .line 97
    :cond_0
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 45
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderInMobiInterstitial;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " - Loading interstitial"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 46
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderInMobiInterstitial;->interstitial:Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v2}, Lcom/inmobi/monetization/IMInterstitial;->loadInterstitial()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 60
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 50
    .local v0, e:Ljava/lang/Exception;
    iput-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderInMobiInterstitial;->interstitial:Lcom/inmobi/monetization/IMInterstitial;

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderInMobiInterstitial;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 52
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderInMobiInterstitial;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v2}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->onAdViewFailed()V

    goto :goto_0

    .line 54
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 56
    .local v1, noMemoryAnymore:Ljava/lang/OutOfMemoryError;
    iput-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderInMobiInterstitial;->interstitial:Lcom/inmobi/monetization/IMInterstitial;

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderInMobiInterstitial;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " Out of memory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 58
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderInMobiInterstitial;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v2}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->onAdViewFailed()V

    goto :goto_0
.end method
