.class public Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMadvertise;
.super Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;
.source "AdProviderMadvertise.java"

# interfaces
.implements Lde/madvertise/android/sdk/MadvertiseView$MadvertiseViewCallbackListener;


# instance fields
.field private mAdFailCalled:Z

.field private mMadvertiseView:Lde/madvertise/android/sdk/MadvertiseView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMadvertise;->mMadvertiseView:Lde/madvertise/android/sdk/MadvertiseView;

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMadvertise;->mAdFailCalled:Z

    .line 20
    return-void
.end method


# virtual methods
.method public adPause()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMadvertise;->mMadvertiseView:Lde/madvertise/android/sdk/MadvertiseView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMadvertise;->mMadvertiseView:Lde/madvertise/android/sdk/MadvertiseView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/madvertise/android/sdk/MadvertiseView;->setFetchingAdsEnabled(Z)V

    .line 51
    :cond_0
    return-void
.end method

.method public adProviderClose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMadvertise;->mMadvertiseView:Lde/madvertise/android/sdk/MadvertiseView;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMadvertise;->mMadvertiseView:Lde/madvertise/android/sdk/MadvertiseView;

    invoke-virtual {v0, v2}, Lde/madvertise/android/sdk/MadvertiseView;->setMadvertiseViewCallbackListener(Lde/madvertise/android/sdk/MadvertiseView$MadvertiseViewCallbackListener;)V

    .line 65
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMadvertise;->mMadvertiseView:Lde/madvertise/android/sdk/MadvertiseView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lde/madvertise/android/sdk/MadvertiseView;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMadvertise;->mMadvertiseView:Lde/madvertise/android/sdk/MadvertiseView;

    invoke-virtual {v0}, Lde/madvertise/android/sdk/MadvertiseView;->stopRequestThread()V

    .line 67
    iput-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMadvertise;->mMadvertiseView:Lde/madvertise/android/sdk/MadvertiseView;

    .line 69
    :cond_0
    return-void
.end method

.method public adProviderCreate(Z)V
    .locals 6
    .parameter "testMode"

    .prologue
    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMadvertise;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v1}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMadvertise;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v2}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.fingersoft.game"

    const-string v4, "layout"

    const-string v5, "ad_madvertise"

    invoke-static {v2, v3, v4, v5}, Lcom/fingersoft/fsadsdk/advertising/utils/ResourceUtils;->getResourceIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMadvertise;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 34
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMadvertise;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMadvertise;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v2}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.fingersoft.game"

    const-string v4, "string"

    const-string v5, "madad"

    invoke-static {v2, v3, v4, v5}, Lcom/fingersoft/fsadsdk/advertising/utils/ResourceUtils;->getResourceIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lde/madvertise/android/sdk/MadvertiseView;

    iput-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMadvertise;->mMadvertiseView:Lde/madvertise/android/sdk/MadvertiseView;

    .line 35
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMadvertise;->mMadvertiseView:Lde/madvertise/android/sdk/MadvertiseView;

    invoke-virtual {v1, p0}, Lde/madvertise/android/sdk/MadvertiseView;->setMadvertiseViewCallbackListener(Lde/madvertise/android/sdk/MadvertiseView$MadvertiseViewCallbackListener;)V

    .line 36
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMadvertise;->mMadvertiseView:Lde/madvertise/android/sdk/MadvertiseView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lde/madvertise/android/sdk/MadvertiseView;->setVisibility(I)V

    .line 37
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMadvertise;->mAdFailCalled:Z

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMadvertise;->getName()Ljava/lang/String;

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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 43
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMadvertise;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v1}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->onAdViewFailed()V

    goto :goto_0
.end method

.method public adResume()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMadvertise;->mMadvertiseView:Lde/madvertise/android/sdk/MadvertiseView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMadvertise;->mMadvertiseView:Lde/madvertise/android/sdk/MadvertiseView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/madvertise/android/sdk/MadvertiseView;->setFetchingAdsEnabled(Z)V

    .line 57
    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string v0, "madvertise"

    return-object v0
.end method

.method public onAdClicked()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public onApplicationPause()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public onApplicationResume()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2
    .parameter "exception"

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMadvertise;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " - Ad error - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMadvertise;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->onAdViewFailed()V

    .line 98
    iget-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMadvertise;->mAdFailCalled:Z

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMadvertise;->mAdFailCalled:Z

    .line 101
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMadvertise;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->onAdViewFailed()V

    .line 103
    :cond_0
    return-void
.end method

.method public onIllegalHttpStatusCode(ILjava/lang/String;)V
    .locals 2
    .parameter "statusCode"
    .parameter "message"

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMadvertise;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " - [HTTP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 109
    iget-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMadvertise;->mAdFailCalled:Z

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMadvertise;->mAdFailCalled:Z

    .line 112
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMadvertise;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->onAdViewFailed()V

    .line 114
    :cond_0
    return-void
.end method

.method public onLoaded(ZLde/madvertise/android/sdk/MadvertiseView;)V
    .locals 2
    .parameter "succeed"
    .parameter "madView"

    .prologue
    .line 74
    if-nez p1, :cond_2

    .line 76
    iget-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMadvertise;->mAdFailCalled:Z

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMadvertise;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->onAdViewFailed()V

    .line 79
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMadvertise;->mAdFailCalled:Z

    .line 91
    :cond_1
    :goto_0
    return-void

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMadvertise;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->onAdViewSuccess()V

    .line 84
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMadvertise;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    const-string v1, "adreceived/madvertise"

    invoke-virtual {v0, v1}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackPageView(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMadvertise;->mMadvertiseView:Lde/madvertise/android/sdk/MadvertiseView;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMadvertise;->mMadvertiseView:Lde/madvertise/android/sdk/MadvertiseView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/madvertise/android/sdk/MadvertiseView;->setVisibility(I)V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMadvertise;->getName()Ljava/lang/String;

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

    goto :goto_0
.end method
