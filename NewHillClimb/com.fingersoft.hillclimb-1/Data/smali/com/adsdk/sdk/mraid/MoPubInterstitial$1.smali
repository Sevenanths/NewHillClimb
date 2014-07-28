.class Lcom/adsdk/sdk/mraid/MoPubInterstitial$1;
.super Lcom/adsdk/sdk/mraid/MoPubInterstitial$DefaultInterstitialAdapterListener;
.source "MoPubInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/mraid/MoPubInterstitial;->showAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/mraid/MoPubInterstitial;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/MoPubInterstitial;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$1;->this$0:Lcom/adsdk/sdk/mraid/MoPubInterstitial;

    .line 163
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$DefaultInterstitialAdapterListener;-><init>(Lcom/adsdk/sdk/mraid/MoPubInterstitial;)V

    return-void
.end method


# virtual methods
.method public onNativeInterstitialLoaded(Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 165
    invoke-super {p0, p1}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$DefaultInterstitialAdapterListener;->onNativeInterstitialLoaded(Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;)V

    .line 166
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$1;->this$0:Lcom/adsdk/sdk/mraid/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->show()Z

    .line 167
    return-void
.end method
