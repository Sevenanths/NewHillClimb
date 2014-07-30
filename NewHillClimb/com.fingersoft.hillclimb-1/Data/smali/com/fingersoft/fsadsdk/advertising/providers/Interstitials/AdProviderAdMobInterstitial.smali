.class public Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;
.super Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialProvider;
.source "AdProviderAdMobInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial$InterstitialListener;
    }
.end annotation


# instance fields
.field private admobId:Ljava/lang/String;

.field private interstitial:Lcom/google/android/gms/ads/InterstitialAd;

.field private mAdFailCalled:Z

.field private mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;


# direct methods
.method public constructor <init>(Lcom/fingersoft/fsadsdk/advertising/AdManager;Ljava/lang/String;)V
    .locals 2
    .parameter "mAdManager"
    .parameter "admobId"

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialProvider;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;->mAdFailCalled:Z

    .line 12
    iput-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    .line 14
    iput-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    .line 18
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    .line 19
    iput-object p2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;->admobId:Ljava/lang/String;

    .line 20
    invoke-direct {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;->loadInterstitial()V

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;)Z
    .locals 1
    .parameter

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;->mAdFailCalled:Z

    return v0
.end method

.method static synthetic access$1(Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;)Lcom/fingersoft/fsadsdk/advertising/AdManager;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    return-object v0
.end method

.method static synthetic access$2(Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;->mAdFailCalled:Z

    return-void
.end method

.method static synthetic access$3(Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;)Lcom/google/android/gms/ads/InterstitialAd;
    .locals 1
    .parameter

    .prologue
    .line 12
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    return-object v0
.end method

.method private loadInterstitial()V
    .locals 3

    .prologue
    .line 26
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v1}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    .line 27
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;->admobId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v1, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial$InterstitialListener;

    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-direct {v1, p0, v2}, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial$InterstitialListener;-><init>(Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;Lcom/fingersoft/fsadsdk/advertising/AdManager;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;->getName()Ljava/lang/String;

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

    .line 30
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "admob"

    return-object v0
.end method

.method public show()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 42
    :try_start_0
    new-instance v3, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 43
    .local v0, adRequest:Lcom/google/android/gms/ads/AdRequest;
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " - Loading interstitial"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 56
    .end local v0           #adRequest:Lcom/google/android/gms/ads/AdRequest;
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v1

    .line 48
    .local v1, e:Ljava/lang/Exception;
    iput-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 53
    .local v2, noMemoryAnymore:Ljava/lang/OutOfMemoryError;
    iput-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/AdProviderAdMobInterstitial;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " Out of memory"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
