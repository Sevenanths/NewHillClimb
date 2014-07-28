.class Lcom/adsdk/sdk/mraid/MraidAdapter$1;
.super Ljava/lang/Object;
.source "MraidAdapter.java"

# interfaces
.implements Lcom/adsdk/sdk/mraid/MraidView$OnReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/mraid/MraidAdapter;->initMraidListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/mraid/MraidAdapter;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/MraidAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidAdapter$1;->this$0:Lcom/adsdk/sdk/mraid/MraidAdapter;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReady(Lcom/adsdk/sdk/mraid/MraidView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidAdapter$1;->this$0:Lcom/adsdk/sdk/mraid/MraidAdapter;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidAdapter;->isInvalidated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidAdapter$1;->this$0:Lcom/adsdk/sdk/mraid/MraidAdapter;

    iget-object v0, v0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubView;->nativeAdLoaded()V

    .line 77
    :cond_0
    return-void
.end method
