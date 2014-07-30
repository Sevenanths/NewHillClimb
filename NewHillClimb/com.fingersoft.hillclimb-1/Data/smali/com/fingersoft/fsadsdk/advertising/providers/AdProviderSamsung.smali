.class public Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderSamsung;
.super Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;
.source "AdProviderSamsung.java"

# interfaces
.implements Lcom/sec/android/ad/AdNotificationListener;


# instance fields
.field private adView:Lcom/sec/android/ad/AdHubView;

.field private inventoryId:Ljava/lang/String;

.field private layoutId:I

.field private viewId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .parameter "inventoryId"
    .parameter "layoutId"
    .parameter "viewId"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderSamsung;->adView:Lcom/sec/android/ad/AdHubView;

    .line 17
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderSamsung;->inventoryId:Ljava/lang/String;

    .line 18
    iput p3, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderSamsung;->viewId:I

    .line 19
    iput p2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderSamsung;->layoutId:I

    .line 20
    return-void
.end method


# virtual methods
.method public adProviderCreate(Z)V
    .locals 5
    .parameter "testMode"

    .prologue
    .line 33
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderSamsung;->getName()Ljava/lang/String;

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
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderSamsung;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v1}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderSamsung;->layoutId:I

    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderSamsung;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 36
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderSamsung;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v1}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderSamsung;->viewId:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/ad/AdHubView;

    iput-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderSamsung;->adView:Lcom/sec/android/ad/AdHubView;

    .line 37
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderSamsung;->adView:Lcom/sec/android/ad/AdHubView;

    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderSamsung;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v2}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderSamsung;->inventoryId:Ljava/lang/String;

    sget-object v4, Lcom/sec/android/ad/info/AdSize;->BANNER_320x50:Lcom/sec/android/ad/info/AdSize;

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/ad/AdHubView;->init(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/ad/info/AdSize;)V

    .line 38
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderSamsung;->adView:Lcom/sec/android/ad/AdHubView;

    invoke-virtual {v1, p0}, Lcom/sec/android/ad/AdHubView;->setListener(Lcom/sec/android/ad/AdNotificationListener;)V

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderSamsung;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " - loading ad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderSamsung;->adView:Lcom/sec/android/ad/AdHubView;

    invoke-virtual {v1}, Lcom/sec/android/ad/AdHubView;->startAd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderSamsung;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v1}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->onAdViewFailed()V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string v0, "samsung"

    return-object v0
.end method

.method public onAdFailed(Lcom/sec/android/ad/AdHubView;Ljava/lang/Exception;)V
    .locals 2
    .parameter "view"
    .parameter "e"

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderSamsung;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " - Ad loading failed - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderSamsung;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->onAdViewFailed()V

    .line 54
    return-void
.end method

.method public onAdReceived(Lcom/sec/android/ad/AdHubView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderSamsung;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " - Ad loaded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderSamsung;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    const-string v1, "adreceived/samsung"

    invoke-virtual {v0, v1}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackPageView(Ljava/lang/String;)V

    .line 60
    return-void
.end method
