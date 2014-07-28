.class Lcom/adsdk/sdk/mraid/MraidDisplayController$1;
.super Ljava/lang/Object;
.source "MraidDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/mraid/MraidDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/MraidDisplayController;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$1;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 63
    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$1;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->checkViewable()Z

    move-result v0

    .line 64
    .local v0, currentViewable:Z
    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$1;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    #getter for: Lcom/adsdk/sdk/mraid/MraidDisplayController;->mIsViewable:Z
    invoke-static {v1}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->access$0(Lcom/adsdk/sdk/mraid/MraidDisplayController;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 65
    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$1;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    #setter for: Lcom/adsdk/sdk/mraid/MraidDisplayController;->mIsViewable:Z
    invoke-static {v1, v0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->access$1(Lcom/adsdk/sdk/mraid/MraidDisplayController;Z)V

    .line 66
    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$1;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v1

    .line 67
    iget-object v2, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$1;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    #getter for: Lcom/adsdk/sdk/mraid/MraidDisplayController;->mIsViewable:Z
    invoke-static {v2}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->access$0(Lcom/adsdk/sdk/mraid/MraidDisplayController;)Z

    move-result v2

    invoke-static {v2}, Lcom/adsdk/sdk/mraid/MraidViewableProperty;->createWithViewable(Z)Lcom/adsdk/sdk/mraid/MraidViewableProperty;

    move-result-object v2

    .line 66
    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/mraid/MraidView;->fireChangeEventForProperty(Lcom/adsdk/sdk/mraid/MraidProperty;)V

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$1;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    #getter for: Lcom/adsdk/sdk/mraid/MraidDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->access$2(Lcom/adsdk/sdk/mraid/MraidDisplayController;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    return-void
.end method
