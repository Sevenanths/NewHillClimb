.class public Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial$InterstitialListener;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdProviderAdMobInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "InterstitialListener"
.end annotation


# instance fields
.field private adManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

.field final synthetic this$0:Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;


# direct methods
.method public constructor <init>(Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;Lcom/fingersoft/fsadsdk/advertising/AdManager;)V
    .locals 0
    .parameter
    .parameter "adManager"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial$InterstitialListener;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;

    .line 62
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    .line 64
    iput-object p2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial$InterstitialListener;->adManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    .line 65
    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(I)V
    .locals 2
    .parameter "errorCode"

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "admob Interstitial failed to load with error code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial$InterstitialListener;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;->mAdFailCalled:Z
    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;->access$0(Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial$InterstitialListener;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;
    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;->access$1(Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;)Lcom/fingersoft/fsadsdk/advertising/AdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->onInterstitialViewFailed()V

    .line 73
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial$InterstitialListener;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;

    const/4 v1, 0x1

    #setter for: Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;->mAdFailCalled:Z
    invoke-static {v0, v1}, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;->access$2(Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;Z)V

    .line 75
    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .prologue
    .line 80
    const-string v0, "admob - Received ad"

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial$InterstitialListener;->adManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    const-string v1, "adreceived/admob"

    invoke-virtual {v0, v1}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackPageView(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial$InterstitialListener;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;
    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;->access$3(Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 83
    return-void
.end method
