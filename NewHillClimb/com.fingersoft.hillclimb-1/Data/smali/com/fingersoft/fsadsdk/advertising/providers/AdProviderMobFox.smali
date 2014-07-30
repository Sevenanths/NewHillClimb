.class public Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMobFox;
.super Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;
.source "AdProviderMobFox.java"

# interfaces
.implements Lcom/adsdk/sdk/AdListener;


# instance fields
.field private mAdFailCalled:Z

.field private mMobFoxPublisherId:Ljava/lang/String;

.field private mMobFoxView:Lcom/adsdk/sdk/banner/AdView;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "mobFoxPublisherId"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMobFox;->mMobFoxView:Lcom/adsdk/sdk/banner/AdView;

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMobFox;->mAdFailCalled:Z

    .line 19
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMobFox;->mMobFoxPublisherId:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public adClicked()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public adClosed(Lcom/adsdk/sdk/Ad;Z)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 102
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "AdManager: MobFox ad closed"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    iget-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMobFox;->mAdFailCalled:Z

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMobFox;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->onAdViewFailed()V

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMobFox;->mAdFailCalled:Z

    .line 108
    :cond_0
    return-void
.end method

.method public adLoadSucceeded(Lcom/adsdk/sdk/Ad;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMobFox;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    const-string v1, "adreceived/mobfox"

    invoke-virtual {v0, v1}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackPageView(Ljava/lang/String;)V

    .line 90
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "AdManager: MobFox load succeeded"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMobFox;->mMobFoxView:Lcom/adsdk/sdk/banner/AdView;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMobFox;->mMobFoxView:Lcom/adsdk/sdk/banner/AdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/banner/AdView;->setVisibility(I)V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMobFox;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " - Ad Loaded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 97
    :cond_0
    return-void
.end method

.method public adPause()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMobFox;->mMobFoxView:Lcom/adsdk/sdk/banner/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMobFox;->mMobFoxView:Lcom/adsdk/sdk/banner/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/banner/AdView;->pause()V

    .line 51
    :cond_0
    return-void
.end method

.method public adProviderClose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMobFox;->mMobFoxView:Lcom/adsdk/sdk/banner/AdView;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMobFox;->mMobFoxView:Lcom/adsdk/sdk/banner/AdView;

    invoke-virtual {v0, v2}, Lcom/adsdk/sdk/banner/AdView;->setAdListener(Lcom/adsdk/sdk/AdListener;)V

    .line 66
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMobFox;->mMobFoxView:Lcom/adsdk/sdk/banner/AdView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/banner/AdView;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMobFox;->mMobFoxView:Lcom/adsdk/sdk/banner/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/banner/AdView;->pause()V

    .line 68
    iput-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMobFox;->mMobFoxView:Lcom/adsdk/sdk/banner/AdView;

    .line 70
    :cond_0
    return-void
.end method

.method public adProviderCreate(Z)V
    .locals 7
    .parameter "testMode"

    .prologue
    .line 33
    :try_start_0
    new-instance v0, Lcom/adsdk/sdk/banner/AdView;

    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMobFox;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v1}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "http://my.mobfox.com/request.php"

    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMobFox;->mMobFoxPublisherId:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/adsdk/sdk/banner/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMobFox;->mMobFoxView:Lcom/adsdk/sdk/banner/AdView;

    .line 34
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMobFox;->mMobFoxView:Lcom/adsdk/sdk/banner/AdView;

    invoke-virtual {v0, p0}, Lcom/adsdk/sdk/banner/AdView;->setAdListener(Lcom/adsdk/sdk/AdListener;)V

    .line 35
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMobFox;->mMobFoxView:Lcom/adsdk/sdk/banner/AdView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/banner/AdView;->setVisibility(I)V

    .line 36
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMobFox;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMobFox;->mMobFoxView:Lcom/adsdk/sdk/banner/AdView;

    invoke-virtual {v0, v1}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->addView(Landroid/view/View;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMobFox;->mAdFailCalled:Z

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMobFox;->getName()Ljava/lang/String;

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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v6

    .line 43
    .local v6, e:Ljava/lang/Exception;
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMobFox;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->onAdViewFailed()V

    goto :goto_0
.end method

.method public adResume()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMobFox;->mMobFoxView:Lcom/adsdk/sdk/banner/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMobFox;->mMobFoxView:Lcom/adsdk/sdk/banner/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/banner/AdView;->resume()V

    .line 57
    :cond_0
    return-void
.end method

.method public adShown(Lcom/adsdk/sdk/Ad;Z)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 111
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string v0, "mobfox"

    return-object v0
.end method

.method public noAdFound()V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMobFox;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " - No ad found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 79
    iget-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMobFox;->mAdFailCalled:Z

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMobFox;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->onAdViewFailed()V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMobFox;->mAdFailCalled:Z

    .line 84
    :cond_0
    return-void
.end method
