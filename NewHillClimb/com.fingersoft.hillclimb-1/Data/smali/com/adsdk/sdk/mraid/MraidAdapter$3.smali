.class Lcom/adsdk/sdk/mraid/MraidAdapter$3;
.super Ljava/lang/Object;
.source "MraidAdapter.java"

# interfaces
.implements Lcom/adsdk/sdk/mraid/MraidView$OnCloseListener;


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
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidAdapter$3;->this$0:Lcom/adsdk/sdk/mraid/MraidAdapter;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Lcom/adsdk/sdk/mraid/MraidView;Lcom/adsdk/sdk/mraid/MraidView$ViewState;)V
    .locals 2
    .parameter "view"
    .parameter "newViewState"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidAdapter$3;->this$0:Lcom/adsdk/sdk/mraid/MraidAdapter;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidAdapter;->isInvalidated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidAdapter$3;->this$0:Lcom/adsdk/sdk/mraid/MraidAdapter;

    iget-object v0, v0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidAdapter$3;->this$0:Lcom/adsdk/sdk/mraid/MraidAdapter;

    #getter for: Lcom/adsdk/sdk/mraid/MraidAdapter;->mPreviousAutorefreshSetting:Z
    invoke-static {v1}, Lcom/adsdk/sdk/mraid/MraidAdapter;->access$1(Lcom/adsdk/sdk/mraid/MraidAdapter;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MoPubView;->setAutorefreshEnabled(Z)V

    .line 95
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidAdapter$3;->this$0:Lcom/adsdk/sdk/mraid/MraidAdapter;

    iget-object v0, v0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubView;->adClosed()V

    .line 97
    :cond_0
    return-void
.end method
