.class Lcom/adsdk/sdk/video/SDKVideoView$7;
.super Ljava/lang/Object;
.source "SDKVideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/video/SDKVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/video/SDKVideoView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/video/SDKVideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/video/SDKVideoView$7;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 390
    const-string v0, "SDKVideoView surfaceChanged"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$7;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    #setter for: Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceWidth:I
    invoke-static {v0, p3}, Lcom/adsdk/sdk/video/SDKVideoView;->access$13(Lcom/adsdk/sdk/video/SDKVideoView;I)V

    .line 392
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$7;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    #setter for: Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceHeight:I
    invoke-static {v0, p4}, Lcom/adsdk/sdk/video/SDKVideoView;->access$14(Lcom/adsdk/sdk/video/SDKVideoView;I)V

    .line 393
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$7;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    #calls: Lcom/adsdk/sdk/video/SDKVideoView;->setVideoDisplaySize()V
    invoke-static {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->access$6(Lcom/adsdk/sdk/video/SDKVideoView;)V

    .line 394
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 398
    const-string v0, "Surface created"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$7;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    const/4 v1, 0x1

    #setter for: Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceReady:Z
    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/SDKVideoView;->access$15(Lcom/adsdk/sdk/video/SDKVideoView;Z)V

    .line 400
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$7;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    #getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mPlayWhenSurfaceReady:Z
    invoke-static {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->access$16(Lcom/adsdk/sdk/video/SDKVideoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$7;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    #calls: Lcom/adsdk/sdk/video/SDKVideoView;->openVideo()V
    invoke-static {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->access$17(Lcom/adsdk/sdk/video/SDKVideoView;)V

    .line 403
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 407
    const-string v0, "Surface destroyed"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$7;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    const/4 v1, 0x0

    #setter for: Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceReady:Z
    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/SDKVideoView;->access$15(Lcom/adsdk/sdk/video/SDKVideoView;Z)V

    .line 409
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$7;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    #getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;
    invoke-static {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->access$3(Lcom/adsdk/sdk/video/SDKVideoView;)Lcom/adsdk/sdk/video/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$7;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    #getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;
    invoke-static {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->access$3(Lcom/adsdk/sdk/video/SDKVideoView;)Lcom/adsdk/sdk/video/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/MediaController;->hide()V

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$7;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    const/4 v1, 0x1

    #calls: Lcom/adsdk/sdk/video/SDKVideoView;->release(Z)V
    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/SDKVideoView;->access$18(Lcom/adsdk/sdk/video/SDKVideoView;Z)V

    .line 413
    return-void
.end method
