.class public Lcom/adsdk/sdk/mraid/MoPubInterstitial;
.super Ljava/lang/Object;
.source "MoPubInterstitial.java"

# interfaces
.implements Lcom/adsdk/sdk/AdListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adsdk/sdk/mraid/MoPubInterstitial$DefaultInterstitialAdapterListener;,
        Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;,
        Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialListener;,
        Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$adsdk$sdk$mraid$MoPubInterstitial$InterstitialState:[I


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdUnitId:Ljava/lang/String;

.field private mAdapterListener:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter$BaseInterstitialAdapterListener;

.field private mCurrentInterstitialState:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

.field private mDefaultAdapterListener:Lcom/adsdk/sdk/mraid/MoPubInterstitial$DefaultInterstitialAdapterListener;

.field private mInterstitialAdapter:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;

.field private mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

.field private mListener:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialListener;


# direct methods
.method static synthetic $SWITCH_TABLE$com$adsdk$sdk$mraid$MoPubInterstitial$InterstitialState()[I
    .locals 3

    .prologue
    .line 48
    sget-object v0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->$SWITCH_TABLE$com$adsdk$sdk$mraid$MoPubInterstitial$InterstitialState:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;->values()[Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;->HTML_AD_READY:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;->NATIVE_AD_READY:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;->NOT_READY:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->$SWITCH_TABLE$com$adsdk$sdk$mraid$MoPubInterstitial$InterstitialState:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .parameter "activity"
    .parameter "id"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mActivity:Landroid/app/Activity;

    .line 68
    iput-object p2, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mAdUnitId:Ljava/lang/String;

    .line 70
    new-instance v0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;-><init>(Lcom/adsdk/sdk/mraid/MoPubInterstitial;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    .line 71
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->setAdUnitId(Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;->NOT_READY:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mCurrentInterstitialState:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    .line 74
    new-instance v0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$DefaultInterstitialAdapterListener;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$DefaultInterstitialAdapterListener;-><init>(Lcom/adsdk/sdk/mraid/MoPubInterstitial;)V

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mDefaultAdapterListener:Lcom/adsdk/sdk/mraid/MoPubInterstitial$DefaultInterstitialAdapterListener;

    .line 75
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mDefaultAdapterListener:Lcom/adsdk/sdk/mraid/MoPubInterstitial$DefaultInterstitialAdapterListener;

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mAdapterListener:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter$BaseInterstitialAdapterListener;

    .line 76
    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/mraid/MoPubInterstitial;Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mCurrentInterstitialState:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    return-void
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/mraid/MoPubInterstitial;)Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialListener;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mListener:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/mraid/MoPubInterstitial;)Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/adsdk/sdk/mraid/MoPubInterstitial;Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialAdapter:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;

    return-void
.end method

.method static synthetic access$4(Lcom/adsdk/sdk/mraid/MoPubInterstitial;)Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialAdapter:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;

    return-object v0
.end method

.method private invalidateCurrentInterstitial()V
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;->NOT_READY:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mCurrentInterstitialState:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    .line 91
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialAdapter:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialAdapter:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;->invalidate()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialAdapter:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mDefaultAdapterListener:Lcom/adsdk/sdk/mraid/MoPubInterstitial$DefaultInterstitialAdapterListener;

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mAdapterListener:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter$BaseInterstitialAdapterListener;

    .line 98
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->setAdListener(Lcom/adsdk/sdk/AdListener;)V

    .line 99
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->loadAd()V

    .line 100
    return-void
.end method

.method private showNativeInterstitial()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialAdapter:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialAdapter:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;->showInterstitial()V

    .line 127
    :cond_0
    return-void
.end method


# virtual methods
.method public OnAdFailed(Lcom/adsdk/sdk/mraid/MoPubView;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 130
    sget-object v0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;->NOT_READY:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mCurrentInterstitialState:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    .line 131
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mListener:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mListener:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialListener;->OnInterstitialFailed()V

    .line 132
    :cond_0
    return-void
.end method

.method public OnAdLoaded(Lcom/adsdk/sdk/mraid/MoPubView;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 135
    sget-object v0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;->HTML_AD_READY:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mCurrentInterstitialState:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    .line 137
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialAdapter:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialAdapter:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;->invalidate()V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialAdapter:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mListener:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mListener:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialListener;->OnInterstitialLoaded()V

    .line 143
    :cond_1
    return-void
.end method

.method public adClicked()V
    .locals 0

    .prologue
    .line 305
    return-void
.end method

.method public adClosed(Lcom/adsdk/sdk/Ad;Z)V
    .locals 0
    .parameter "ad"
    .parameter "completed"

    .prologue
    .line 311
    return-void
.end method

.method public adLoadSucceeded(Lcom/adsdk/sdk/Ad;)V
    .locals 0
    .parameter "ad"

    .prologue
    .line 317
    return-void
.end method

.method public adShown(Lcom/adsdk/sdk/Ad;Z)V
    .locals 0
    .parameter "ad"
    .parameter "succeeded"

    .prologue
    .line 323
    return-void
.end method

.method public customEventActionWillBegin()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->registerClick()V

    .line 154
    :cond_0
    return-void
.end method

.method public customEventDidFailToLoadAd()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->loadFailUrl()V

    .line 150
    :cond_0
    return-void
.end method

.method public customEventDidLoadAd()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 207
    iput-object v1, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mAdapterListener:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter$BaseInterstitialAdapterListener;

    .line 209
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialAdapter:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialAdapter:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;->invalidate()V

    .line 211
    iput-object v1, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialAdapter:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->setAdListener(Lcom/adsdk/sdk/AdListener;)V

    .line 215
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->destroy()V

    .line 216
    return-void
.end method

.method public forceRefresh()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->invalidateCurrentInterstitial()V

    .line 85
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->forceRefresh()V

    .line 86
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method protected getInterstitialAdapterListener()Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter$BaseInterstitialAdapterListener;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mAdapterListener:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter$BaseInterstitialAdapterListener;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->getKeywords()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getListener()Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialListener;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mListener:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialListener;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getLocationAwareness()Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->getLocationAwareness()Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;

    move-result-object v0

    return-object v0
.end method

.method public getLocationPrecision()I
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->getLocationPrecision()I

    move-result v0

    return v0
.end method

.method public isReady()Z
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mCurrentInterstitialState:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    sget-object v1, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;->HTML_AD_READY:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    if-eq v0, v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mCurrentInterstitialState:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    sget-object v1, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;->NATIVE_AD_READY:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    if-eq v0, v1, :cond_0

    .line 103
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public load()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->invalidateCurrentInterstitial()V

    .line 80
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->loadAd()V

    .line 81
    return-void
.end method

.method public noAdFound()V
    .locals 0

    .prologue
    .line 329
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 1
    .parameter "keywords"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p1}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->setKeywords(Ljava/lang/String;)V

    .line 184
    :cond_0
    return-void
.end method

.method public setListener(Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mListener:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialListener;

    .line 196
    return-void
.end method

.method public setLocationAwareness(Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;)V
    .locals 1
    .parameter "awareness"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p1}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->setLocationAwareness(Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;)V

    .line 220
    return-void
.end method

.method public setLocationPrecision(I)V
    .locals 1
    .parameter "precision"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p1}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->setLocationPrecision(I)V

    .line 228
    return-void
.end method

.method public show()Z
    .locals 2

    .prologue
    .line 108
    invoke-static {}, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->$SWITCH_TABLE$com$adsdk$sdk$mraid$MoPubInterstitial$InterstitialState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mCurrentInterstitialState:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 111
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 110
    :pswitch_0
    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->showNativeInterstitial()V

    const/4 v0, 0x1

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public showAd()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 163
    new-instance v0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$1;-><init>(Lcom/adsdk/sdk/mraid/MoPubInterstitial;)V

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mAdapterListener:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter$BaseInterstitialAdapterListener;

    .line 177
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->loadAd()V

    .line 178
    return-void
.end method
