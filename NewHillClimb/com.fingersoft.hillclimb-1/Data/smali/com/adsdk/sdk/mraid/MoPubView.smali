.class public Lcom/adsdk/sdk/mraid/MoPubView;
.super Landroid/widget/FrameLayout;
.source "MoPubView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;
    }
.end annotation


# static fields
.field public static final DEFAULT_LOCATION_PRECISION:I = 0x6


# instance fields
.field private mAdListener:Lcom/adsdk/sdk/AdListener;

.field protected mAdView:Lcom/adsdk/sdk/mraid/AdView;

.field protected mAdapter:Lcom/adsdk/sdk/mraid/BaseAdapter;

.field private mContext:Landroid/content/Context;

.field private mIsInForeground:Z

.field private mLocationAwareness:Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;

.field private mLocationPrecision:I

.field private mPreviousAutorefreshSetting:Z

.field private mScreenStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/adsdk/sdk/mraid/MoPubView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    iput-boolean v1, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mPreviousAutorefreshSetting:Z

    .line 115
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mContext:Landroid/content/Context;

    .line 116
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MoPubView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mIsInForeground:Z

    .line 117
    sget-object v0, Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;->LOCATION_AWARENESS_NORMAL:Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mLocationAwareness:Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;

    .line 118
    const/4 v0, 0x6

    iput v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mLocationPrecision:I

    .line 120
    invoke-virtual {p0, v1}, Lcom/adsdk/sdk/mraid/MoPubView;->setHorizontalScrollBarEnabled(Z)V

    .line 121
    invoke-virtual {p0, v1}, Lcom/adsdk/sdk/mraid/MoPubView;->setVerticalScrollBarEnabled(Z)V

    .line 128
    invoke-static {p1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    .line 129
    const-string v0, "MoPub"

    const-string v1, "Disabling MoPub. Local cache file is inaccessible so MoPub will fail if we try to create a WebView. Details of this Android bug found at:http://code.google.com/p/android/issues/detail?id=10789"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 116
    goto :goto_0
.end method


# virtual methods
.method protected adAppeared()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/AdView;->adAppeared()V

    .line 287
    :cond_0
    return-void
.end method

.method protected adClicked()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdListener:Lcom/adsdk/sdk/AdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdListener:Lcom/adsdk/sdk/AdListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/AdListener;->adClicked()V

    .line 278
    :cond_0
    return-void
.end method

.method protected adClosed()V
    .locals 3

    .prologue
    .line 273
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdListener:Lcom/adsdk/sdk/AdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdListener:Lcom/adsdk/sdk/AdListener;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/adsdk/sdk/AdListener;->adClosed(Lcom/adsdk/sdk/Ad;Z)V

    .line 274
    :cond_0
    return-void
.end method

.method protected adFailed()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdListener:Lcom/adsdk/sdk/AdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdListener:Lcom/adsdk/sdk/AdListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/AdListener;->noAdFound()V

    .line 264
    :cond_0
    return-void
.end method

.method protected adLoaded()V
    .locals 2

    .prologue
    .line 258
    const-string v0, "MoPub"

    const-string v1, "adLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdListener:Lcom/adsdk/sdk/AdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdListener:Lcom/adsdk/sdk/AdListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/adsdk/sdk/AdListener;->adLoadSucceeded(Lcom/adsdk/sdk/Ad;)V

    .line 260
    :cond_0
    return-void
.end method

.method protected adPresentedOverlay()V
    .locals 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdListener:Lcom/adsdk/sdk/AdListener;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdListener:Lcom/adsdk/sdk/AdListener;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/adsdk/sdk/AdListener;->adShown(Lcom/adsdk/sdk/Ad;Z)V

    .line 270
    :cond_0
    return-void
.end method

.method protected adWillLoad(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 253
    const-string v0, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adWillLoad: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void
.end method

.method public customEventActionWillBegin()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/AdView;->customEventActionWillBegin()V

    .line 299
    :cond_0
    return-void
.end method

.method public customEventDidFailToLoadAd()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/AdView;->customEventDidFailToLoadAd()V

    .line 295
    :cond_0
    return-void
.end method

.method public customEventDidLoadAd()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/AdView;->customEventDidLoadAd()V

    .line 291
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 191
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/AdView;->cleanup()V

    .line 193
    iput-object v1, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdapter:Lcom/adsdk/sdk/mraid/BaseAdapter;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdapter:Lcom/adsdk/sdk/mraid/BaseAdapter;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/BaseAdapter;->invalidate()V

    .line 198
    iput-object v1, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdapter:Lcom/adsdk/sdk/mraid/BaseAdapter;

    .line 200
    :cond_1
    return-void
.end method

.method public forceRefresh()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdapter:Lcom/adsdk/sdk/mraid/BaseAdapter;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdapter:Lcom/adsdk/sdk/mraid/BaseAdapter;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/BaseAdapter;->invalidate()V

    .line 413
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdapter:Lcom/adsdk/sdk/mraid/BaseAdapter;

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/AdView;->forceRefresh()V

    .line 416
    :cond_1
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public getAdHeight()I
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/AdView;->getAdHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdWidth()I
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/AdView;->getAdWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAutorefreshEnabled()Z
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/AdView;->getAutorefreshEnabled()Z

    move-result v0

    .line 397
    :goto_0
    return v0

    .line 395
    :cond_0
    const-string v0, "MoPub"

    const-string v1, "Can\'t get autorefresh status for destroyed MoPubView. Returning false."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClickthroughUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/AdView;->getClickthroughUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/AdView;->getKeywords()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/AdView;->getLocation()Landroid/location/Location;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocationAwareness()Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mLocationAwareness:Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;

    return-object v0
.end method

.method public getLocationPrecision()I
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mLocationPrecision:I

    return v0
.end method

.method public getResponseString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/AdView;->getResponseString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/AdView;->loadAd()V

    .line 182
    :cond_0
    return-void
.end method

.method protected loadFailUrl()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/AdView;->loadFailUrl()V

    .line 204
    :cond_0
    return-void
.end method

.method protected loadNativeSDK(Ljava/util/HashMap;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, paramsHash:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdapter:Lcom/adsdk/sdk/mraid/BaseAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdapter:Lcom/adsdk/sdk/mraid/BaseAdapter;

    invoke-virtual {v2}, Lcom/adsdk/sdk/mraid/BaseAdapter;->invalidate()V

    .line 209
    :cond_0
    const-string v2, "X-Adtype"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 210
    .local v1, type:Ljava/lang/String;
    invoke-static {v1}, Lcom/adsdk/sdk/mraid/BaseAdapter;->getAdapterForType(Ljava/lang/String;)Lcom/adsdk/sdk/mraid/BaseAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdapter:Lcom/adsdk/sdk/mraid/BaseAdapter;

    .line 212
    iget-object v2, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdapter:Lcom/adsdk/sdk/mraid/BaseAdapter;

    if-eqz v2, :cond_1

    .line 213
    const-string v2, "MoPub"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Loading native adapter for type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-string v2, "X-Nativeparams"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 215
    .local v0, jsonParams:Ljava/lang/String;
    iget-object v2, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdapter:Lcom/adsdk/sdk/mraid/BaseAdapter;

    invoke-virtual {v2, p0, v0}, Lcom/adsdk/sdk/mraid/BaseAdapter;->init(Lcom/adsdk/sdk/mraid/MoPubView;Ljava/lang/String;)V

    .line 216
    iget-object v2, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdapter:Lcom/adsdk/sdk/mraid/BaseAdapter;

    invoke-virtual {v2}, Lcom/adsdk/sdk/mraid/BaseAdapter;->loadAd()V

    .line 221
    .end local v0           #jsonParams:Ljava/lang/String;
    :goto_0
    return-void

    .line 218
    :cond_1
    const-string v2, "MoPub"

    const-string v3, "Couldn\'t load native adapter. Trying next ad..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MoPubView;->loadFailUrl()V

    goto :goto_0
.end method

.method protected nativeAdLoaded()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/AdView;->scheduleRefreshTimerIfEnabled()V

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MoPubView;->adLoaded()V

    .line 283
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 5
    .parameter "visibility"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 238
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-nez v0, :cond_0

    .line 250
    :goto_0
    return-void

    .line 240
    :cond_0
    if-nez p1, :cond_1

    .line 241
    const-string v0, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ad Unit ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v2}, Lcom/adsdk/sdk/mraid/AdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") going visible: enabling refresh"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iput-boolean v4, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mIsInForeground:Z

    .line 243
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0, v4}, Lcom/adsdk/sdk/mraid/AdView;->setAutorefreshEnabled(Z)V

    goto :goto_0

    .line 246
    :cond_1
    const-string v0, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ad Unit ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v2}, Lcom/adsdk/sdk/mraid/AdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") going invisible: disabling refresh"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iput-boolean v3, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mIsInForeground:Z

    .line 248
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0, v3}, Lcom/adsdk/sdk/mraid/AdView;->setAutorefreshEnabled(Z)V

    goto :goto_0
.end method

.method protected registerClick()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/AdView;->registerClick()V

    .line 228
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MoPubView;->adClicked()V

    .line 230
    :cond_0
    return-void
.end method

.method public setAdContentView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0, p1}, Lcom/adsdk/sdk/mraid/AdView;->setAdContentView(Landroid/view/View;)V

    .line 403
    :cond_0
    return-void
.end method

.method public setAdListener(Lcom/adsdk/sdk/AdListener;)V
    .locals 0
    .parameter "adListener"

    .prologue
    .line 406
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdListener:Lcom/adsdk/sdk/AdListener;

    .line 408
    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 1
    .parameter "adUnitId"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0, p1}, Lcom/adsdk/sdk/mraid/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 305
    :cond_0
    return-void
.end method

.method public setAutorefreshEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0, p1}, Lcom/adsdk/sdk/mraid/AdView;->setAutorefreshEnabled(Z)V

    .line 390
    :cond_0
    return-void
.end method

.method public setClickthroughUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0, p1}, Lcom/adsdk/sdk/mraid/AdView;->setClickthroughUrl(Ljava/lang/String;)V

    .line 338
    :cond_0
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 1
    .parameter "keywords"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0, p1}, Lcom/adsdk/sdk/mraid/AdView;->setKeywords(Ljava/lang/String;)V

    .line 309
    :cond_0
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0, p1}, Lcom/adsdk/sdk/mraid/AdView;->setLocation(Landroid/location/Location;)V

    .line 317
    :cond_0
    return-void
.end method

.method public setLocationAwareness(Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;)V
    .locals 0
    .parameter "awareness"

    .prologue
    .line 373
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mLocationAwareness:Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;

    .line 374
    return-void
.end method

.method public setLocationPrecision(I)V
    .locals 0
    .parameter "precision"

    .prologue
    .line 381
    if-ltz p1, :cond_0

    .end local p1
    :goto_0
    iput p1, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mLocationPrecision:I

    .line 382
    return-void

    .line 381
    .restart local p1
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method
