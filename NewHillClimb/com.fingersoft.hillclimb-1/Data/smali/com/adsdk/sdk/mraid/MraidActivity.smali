.class public Lcom/adsdk/sdk/mraid/MraidActivity;
.super Lcom/adsdk/sdk/mraid/BaseActivity;
.source "MraidActivity.java"


# instance fields
.field private mAdView:Lcom/adsdk/sdk/mraid/MraidView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdView()Landroid/view/View;
    .locals 5

    .prologue
    .line 14
    new-instance v1, Lcom/adsdk/sdk/mraid/MraidView;

    sget-object v2, Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;->DISABLED:Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;

    sget-object v3, Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;->AD_CONTROLLED:Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;

    .line 15
    sget-object v4, Lcom/adsdk/sdk/mraid/MraidView$PlacementType;->INTERSTITIAL:Lcom/adsdk/sdk/mraid/MraidView$PlacementType;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/adsdk/sdk/mraid/MraidView;-><init>(Landroid/content/Context;Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;Lcom/adsdk/sdk/mraid/MraidView$PlacementType;)V

    .line 14
    iput-object v1, p0, Lcom/adsdk/sdk/mraid/MraidActivity;->mAdView:Lcom/adsdk/sdk/mraid/MraidView;

    .line 17
    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidActivity;->mAdView:Lcom/adsdk/sdk/mraid/MraidView;

    new-instance v2, Lcom/adsdk/sdk/mraid/MraidActivity$1;

    invoke-direct {v2, p0}, Lcom/adsdk/sdk/mraid/MraidActivity$1;-><init>(Lcom/adsdk/sdk/mraid/MraidActivity;)V

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/mraid/MraidView;->setOnReadyListener(Lcom/adsdk/sdk/mraid/MraidView$OnReadyListener;)V

    .line 23
    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidActivity;->mAdView:Lcom/adsdk/sdk/mraid/MraidView;

    new-instance v2, Lcom/adsdk/sdk/mraid/MraidActivity$2;

    invoke-direct {v2, p0}, Lcom/adsdk/sdk/mraid/MraidActivity$2;-><init>(Lcom/adsdk/sdk/mraid/MraidActivity;)V

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/mraid/MraidView;->setOnCloseButtonStateChange(Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;)V

    .line 30
    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidActivity;->mAdView:Lcom/adsdk/sdk/mraid/MraidView;

    new-instance v2, Lcom/adsdk/sdk/mraid/MraidActivity$3;

    invoke-direct {v2, p0}, Lcom/adsdk/sdk/mraid/MraidActivity$3;-><init>(Lcom/adsdk/sdk/mraid/MraidActivity;)V

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/mraid/MraidView;->setOnCloseListener(Lcom/adsdk/sdk/mraid/MraidView$OnCloseListener;)V

    .line 36
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.adsdk.sdk.mraid.Source"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, source:Ljava/lang/String;
    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidActivity;->mAdView:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/mraid/MraidView;->loadHtmlData(Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidActivity;->mAdView:Lcom/adsdk/sdk/mraid/MraidView;

    return-object v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidActivity;->mAdView:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->destroy()V

    .line 45
    invoke-super {p0}, Lcom/adsdk/sdk/mraid/BaseActivity;->onDestroy()V

    .line 46
    return-void
.end method
