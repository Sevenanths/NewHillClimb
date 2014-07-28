.class Lcom/adsdk/sdk/mraid/MraidAdapter$2;
.super Ljava/lang/Object;
.source "MraidAdapter.java"

# interfaces
.implements Lcom/adsdk/sdk/mraid/MraidView$OnExpandListener;


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
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidAdapter$2;->this$0:Lcom/adsdk/sdk/mraid/MraidAdapter;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpand(Lcom/adsdk/sdk/mraid/MraidView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidAdapter$2;->this$0:Lcom/adsdk/sdk/mraid/MraidAdapter;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidAdapter;->isInvalidated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidAdapter$2;->this$0:Lcom/adsdk/sdk/mraid/MraidAdapter;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidAdapter$2;->this$0:Lcom/adsdk/sdk/mraid/MraidAdapter;

    iget-object v1, v1, Lcom/adsdk/sdk/mraid/MraidAdapter;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MoPubView;->getAutorefreshEnabled()Z

    move-result v1

    #setter for: Lcom/adsdk/sdk/mraid/MraidAdapter;->mPreviousAutorefreshSetting:Z
    invoke-static {v0, v1}, Lcom/adsdk/sdk/mraid/MraidAdapter;->access$0(Lcom/adsdk/sdk/mraid/MraidAdapter;Z)V

    .line 84
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidAdapter$2;->this$0:Lcom/adsdk/sdk/mraid/MraidAdapter;

    iget-object v0, v0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MoPubView;->setAutorefreshEnabled(Z)V

    .line 85
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidAdapter$2;->this$0:Lcom/adsdk/sdk/mraid/MraidAdapter;

    iget-object v0, v0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubView;->adPresentedOverlay()V

    .line 86
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidAdapter$2;->this$0:Lcom/adsdk/sdk/mraid/MraidAdapter;

    iget-object v0, v0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubView;->registerClick()V

    .line 88
    :cond_0
    return-void
.end method
