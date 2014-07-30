.class public abstract Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialProvider;
.super Ljava/lang/Object;
.source "InterstitialProvider.java"


# instance fields
.field protected listener:Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialListener;

.field protected mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialProvider;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    .line 8
    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialProvider;->listener:Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialListener;

    .line 10
    return-void
.end method


# virtual methods
.method public addListener(Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialProvider;->listener:Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialListener;

    .line 21
    return-void
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public interstitialClose()V
    .locals 0

    .prologue
    .line 16
    return-void
.end method

.method public interstitialCreate(Z)V
    .locals 0
    .parameter "testMode"

    .prologue
    .line 13
    return-void
.end method

.method public interstitialPause()V
    .locals 0

    .prologue
    .line 14
    return-void
.end method

.method public interstitialResume()V
    .locals 0

    .prologue
    .line 15
    return-void
.end method

.method public setAdManager(Lcom/fingersoft/fsadsdk/advertising/AdManager;)V
    .locals 0
    .parameter "admanager"

    .prologue
    .line 12
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/Interstitials/InterstitialProvider;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method
