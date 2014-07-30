.class public final Lcom/google/android/gms/ads/InterstitialAd;
.super Ljava/lang/Object;


# instance fields
.field private final kv:Lcom/google/android/gms/internal/au;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/au;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/au;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->kv:Lcom/google/android/gms/internal/au;

    return-void
.end method


# virtual methods
.method public getAdListener()Lcom/google/android/gms/ads/AdListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->kv:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/au;->getAdListener()Lcom/google/android/gms/ads/AdListener;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->kv:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/au;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInAppPurchaseListener()Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->kv:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/au;->getInAppPurchaseListener()Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    move-result-object v0

    return-object v0
.end method

.method public isLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->kv:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/au;->isLoaded()Z

    move-result v0

    return v0
.end method

.method public loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    .locals 2
    .parameter "adRequest"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->kv:Lcom/google/android/gms/internal/au;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest;->O()Lcom/google/android/gms/internal/as;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/au;->a(Lcom/google/android/gms/internal/as;)V

    return-void
.end method

.method public setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .locals 1
    .parameter "adListener"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->kv:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 1
    .parameter "adUnitId"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->kv:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au;->setAdUnitId(Ljava/lang/String;)V

    return-void
.end method

.method public setInAppPurchaseListener(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V
    .locals 1
    .parameter "inAppPurchaseListener"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->kv:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au;->setInAppPurchaseListener(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V

    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->kv:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/au;->show()V

    return-void
.end method
