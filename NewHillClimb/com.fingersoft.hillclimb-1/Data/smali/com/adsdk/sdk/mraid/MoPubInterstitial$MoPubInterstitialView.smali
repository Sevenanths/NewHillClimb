.class public Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;
.super Lcom/adsdk/sdk/mraid/MoPubView;
.source "MoPubInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/mraid/MoPubInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MoPubInterstitialView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/mraid/MoPubInterstitial;


# direct methods
.method public constructor <init>(Lcom/adsdk/sdk/mraid/MoPubInterstitial;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 264
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/adsdk/sdk/mraid/MoPubInterstitial;

    .line 265
    invoke-direct {p0, p2}, Lcom/adsdk/sdk/mraid/MoPubView;-><init>(Landroid/content/Context;)V

    .line 266
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->setAutorefreshEnabled(Z)V

    .line 267
    return-void
.end method


# virtual methods
.method protected loadNativeSDK(Ljava/util/HashMap;)V
    .locals 8
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
    .line 271
    .local p1, paramsHash:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 297
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/adsdk/sdk/mraid/MoPubInterstitial;

    .line 275
    .local v1, interstitial:Lcom/adsdk/sdk/mraid/MoPubInterstitial;
    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->getInterstitialAdapterListener()Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter$BaseInterstitialAdapterListener;

    move-result-object v0

    .line 276
    .local v0, adapterListener:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter$BaseInterstitialAdapterListener;
    const-string v5, "X-Adtype"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 278
    .local v4, type:Ljava/lang/String;
    if-eqz v4, :cond_3

    const-string v5, "interstitial"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "mraid"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 279
    :cond_1
    const-string v5, "interstitial"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 280
    const-string v5, "X-Fulladtype"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v2, v5

    .line 282
    .local v2, interstitialType:Ljava/lang/String;
    :goto_1
    const-string v5, "MoPub"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Loading native adapter for interstitial type: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v5, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/adsdk/sdk/mraid/MoPubInterstitial;

    .line 284
    invoke-static {v2}, Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;->getAdapterForType(Ljava/lang/String;)Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;

    move-result-object v6

    .line 283
    #setter for: Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialAdapter:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;
    invoke-static {v5, v6}, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->access$3(Lcom/adsdk/sdk/mraid/MoPubInterstitial;Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;)V

    .line 286
    iget-object v5, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/adsdk/sdk/mraid/MoPubInterstitial;

    #getter for: Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialAdapter:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;
    invoke-static {v5}, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->access$4(Lcom/adsdk/sdk/mraid/MoPubInterstitial;)Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 287
    const-string v5, "X-Nativeparams"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 288
    .local v3, jsonParams:Ljava/lang/String;
    iget-object v5, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/adsdk/sdk/mraid/MoPubInterstitial;

    #getter for: Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialAdapter:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;
    invoke-static {v5}, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->access$4(Lcom/adsdk/sdk/mraid/MoPubInterstitial;)Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;

    move-result-object v5

    invoke-virtual {v5, v1, v3}, Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;->init(Lcom/adsdk/sdk/mraid/MoPubInterstitial;Ljava/lang/String;)V

    .line 289
    iget-object v5, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/adsdk/sdk/mraid/MoPubInterstitial;

    #getter for: Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialAdapter:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;
    invoke-static {v5}, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->access$4(Lcom/adsdk/sdk/mraid/MoPubInterstitial;)Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;->setAdapterListener(Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter$BaseInterstitialAdapterListener;)V

    .line 290
    iget-object v5, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/adsdk/sdk/mraid/MoPubInterstitial;

    #getter for: Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialAdapter:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;
    invoke-static {v5}, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->access$4(Lcom/adsdk/sdk/mraid/MoPubInterstitial;)Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;->loadInterstitial()V

    goto :goto_0

    .line 280
    .end local v2           #interstitialType:Ljava/lang/String;
    .end local v3           #jsonParams:Ljava/lang/String;
    :cond_2
    const-string v2, "mraid"

    goto :goto_1

    .line 295
    :cond_3
    const-string v5, "MoPub"

    const-string v6, "Couldn\'t load native adapter. Trying next ad..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter$BaseInterstitialAdapterListener;->onNativeInterstitialFailed(Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;)V

    goto/16 :goto_0
.end method
