.class public Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;
.super Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;
.source "AdProviderAdmob.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob$AdListener;
    }
.end annotation


# instance fields
.field private mAdFailCalled:Z

.field private mAdView:Lcom/google/android/gms/ads/AdView;

.field private mAdmobPubId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "adMobID"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;->mAdView:Lcom/google/android/gms/ads/AdView;

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;->mAdFailCalled:Z

    .line 21
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;->mAdmobPubId:Ljava/lang/String;

    .line 22
    return-void
.end method

.method static synthetic access$0(Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;)Z
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;->mAdFailCalled:Z

    return v0
.end method

.method static synthetic access$1(Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;->mAdFailCalled:Z

    return-void
.end method

.method static synthetic access$2(Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;)Lcom/google/android/gms/ads/AdView;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;->mAdView:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method


# virtual methods
.method public adProviderClose()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;->mAdView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;->mAdView:Lcom/google/android/gms/ads/AdView;

    .line 68
    :cond_0
    return-void
.end method

.method public adProviderCreate(Z)V
    .locals 6
    .parameter "testMode"

    .prologue
    .line 29
    :try_start_0
    new-instance v3, Lcom/google/android/gms/ads/AdView;

    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v4}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;->mAdView:Lcom/google/android/gms/ads/AdView;

    .line 30
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;->mAdView:Lcom/google/android/gms/ads/AdView;

    sget-object v4, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 31
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;->mAdView:Lcom/google/android/gms/ads/AdView;

    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;->mAdmobPubId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 33
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;->mAdView:Lcom/google/android/gms/ads/AdView;

    new-instance v4, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob$AdListener;

    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-direct {v4, p0, v5}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob$AdListener;-><init>(Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;Lcom/fingersoft/fsadsdk/advertising/AdManager;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 36
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    .line 37
    const/4 v4, -0x2

    .line 36
    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 38
    .local v0, adParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 39
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 41
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v3, v4, v0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    new-instance v3, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v2

    .line 43
    .local v2, req:Lcom/google/android/gms/ads/AdRequest;
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 44
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;->mAdFailCalled:Z

    .line 45
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;->mAdView:Lcom/google/android/gms/ads/AdView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " - onProviderCreate"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v0           #adParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #req:Lcom/google/android/gms/ads/AdRequest;
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v1

    .line 52
    .local v1, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v3}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->onAdViewFailed()V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string v0, "admob"

    return-object v0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method
