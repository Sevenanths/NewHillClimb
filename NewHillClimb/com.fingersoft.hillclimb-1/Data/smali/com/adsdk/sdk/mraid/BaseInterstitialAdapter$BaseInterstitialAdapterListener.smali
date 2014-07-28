.class public interface abstract Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter$BaseInterstitialAdapterListener;
.super Ljava/lang/Object;
.source "BaseInterstitialAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BaseInterstitialAdapterListener"
.end annotation


# virtual methods
.method public abstract onNativeInterstitialClicked(Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;)V
.end method

.method public abstract onNativeInterstitialExpired(Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;)V
.end method

.method public abstract onNativeInterstitialFailed(Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;)V
.end method

.method public abstract onNativeInterstitialLoaded(Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;)V
.end method
