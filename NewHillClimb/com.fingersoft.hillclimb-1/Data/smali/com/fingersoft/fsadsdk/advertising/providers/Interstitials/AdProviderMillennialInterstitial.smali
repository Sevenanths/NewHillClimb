.class public Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderMillennialInterstitial;
.super Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialProvider;
.source "AdProviderMillennialInterstitial.java"

# interfaces
.implements Lcom/millennialmedia/android/RequestListener;


# instance fields
.field private interstitial:Lcom/millennialmedia/android/MMInterstitial;

.field private mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

.field private millennialId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fingersoft/fsadsdk/advertising/AdManager;Ljava/lang/String;)V
    .locals 1
    .parameter "mAdManager"
    .parameter "millennialId"

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialProvider;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderMillennialInterstitial;->interstitial:Lcom/millennialmedia/android/MMInterstitial;

    .line 16
    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderMillennialInterstitial;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    .line 20
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderMillennialInterstitial;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    .line 21
    iput-object p2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderMillennialInterstitial;->millennialId:Ljava/lang/String;

    .line 22
    invoke-direct {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderMillennialInterstitial;->loadInterstitial()V

    .line 23
    return-void
.end method

.method private loadInterstitial()V
    .locals 3

    .prologue
    .line 27
    new-instance v1, Lcom/millennialmedia/android/MMInterstitial;

    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderMillennialInterstitial;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v2}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/millennialmedia/android/MMInterstitial;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderMillennialInterstitial;->interstitial:Lcom/millennialmedia/android/MMInterstitial;

    .line 28
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderMillennialInterstitial;->interstitial:Lcom/millennialmedia/android/MMInterstitial;

    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderMillennialInterstitial;->millennialId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MMInterstitial;->setApid(Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderMillennialInterstitial;->interstitial:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v1, p0}, Lcom/millennialmedia/android/MMInterstitial;->setListener(Lcom/millennialmedia/android/RequestListener;)V

    .line 30
    new-instance v0, Lcom/millennialmedia/android/MMRequest;

    invoke-direct {v0}, Lcom/millennialmedia/android/MMRequest;-><init>()V

    .line 31
    .local v0, request:Lcom/millennialmedia/android/MMRequest;
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderMillennialInterstitial;->interstitial:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/MMInterstitial;->setMMRequest(Lcom/millennialmedia/android/MMRequest;)V

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderMillennialInterstitial;->getName()Ljava/lang/String;

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

    .line 33
    return-void
.end method


# virtual methods
.method public MMAdOverlayClosed(Lcom/millennialmedia/android/MMAd;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderMillennialInterstitial;->listener:Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderMillennialInterstitial;->listener:Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialListener;

    invoke-interface {v0}, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialListener;->onDismiss()V

    .line 64
    :cond_0
    return-void
.end method

.method public MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAd;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderMillennialInterstitial;->listener:Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderMillennialInterstitial;->listener:Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialListener;

    invoke-interface {v0}, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialListener;->onShow()V

    .line 70
    :cond_0
    return-void
.end method

.method public MMAdRequestIsCaching(Lcom/millennialmedia/android/MMAd;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 73
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "millennial"

    return-object v0
.end method

.method public onSingleTap(Lcom/millennialmedia/android/MMAd;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderMillennialInterstitial;->listener:Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderMillennialInterstitial;->listener:Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialListener;

    invoke-interface {v0}, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialListener;->onInteract()V

    .line 79
    :cond_0
    return-void
.end method

.method public requestCompleted(Lcom/millennialmedia/android/MMAd;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 84
    const-string v0, "Millennial request compeleted"

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderMillennialInterstitial;->interstitial:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMInterstitial;->display()Z

    .line 86
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderMillennialInterstitial;->listener:Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderMillennialInterstitial;->listener:Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialListener;

    invoke-interface {v0}, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialListener;->onLoaded()V

    .line 87
    :cond_0
    return-void
.end method

.method public requestFailed(Lcom/millennialmedia/android/MMAd;Lcom/millennialmedia/android/MMException;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderMillennialInterstitial;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " request failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/millennialmedia/android/MMException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderMillennialInterstitial;->listener:Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderMillennialInterstitial;->listener:Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialListener;

    invoke-interface {v0}, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialListener;->onFailed()V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderMillennialInterstitial;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->onInterstitialViewFailed()V

    .line 95
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 45
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderMillennialInterstitial;->getName()Ljava/lang/String;

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
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderMillennialInterstitial;->interstitial:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v2}, Lcom/millennialmedia/android/MMInterstitial;->fetch()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 58
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 50
    .local v0, e:Ljava/lang/Exception;
    iput-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderMillennialInterstitial;->interstitial:Lcom/millennialmedia/android/MMInterstitial;

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderMillennialInterstitial;->getName()Ljava/lang/String;

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

    goto :goto_0

    .line 53
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 55
    .local v1, noMemoryAnymore:Ljava/lang/OutOfMemoryError;
    iput-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderMillennialInterstitial;->interstitial:Lcom/millennialmedia/android/MMInterstitial;

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderMillennialInterstitial;->getName()Ljava/lang/String;

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

    goto :goto_0
.end method
