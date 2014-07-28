.class Lcom/adsdk/sdk/video/RichMediaActivity$6;
.super Ljava/lang/Object;
.source "RichMediaActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/video/RichMediaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/video/RichMediaActivity;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$6;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 340
    const-string v0, "ADSDK"

    .line 341
    const-string v1, "RichMediaActivity onPrepared MediaPlayer"

    .line 340
    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$6;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoTimeoutTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$4(Lcom/adsdk/sdk/video/RichMediaActivity;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$6;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoTimeoutTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$4(Lcom/adsdk/sdk/video/RichMediaActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 344
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$6;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    const/4 v1, 0x0

    #setter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoTimeoutTimer:Ljava/util/Timer;
    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$5(Lcom/adsdk/sdk/video/RichMediaActivity;Ljava/util/Timer;)V

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$6;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mLoadingView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$6(Lcom/adsdk/sdk/video/RichMediaActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$6;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mLoadingView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$6(Lcom/adsdk/sdk/video/RichMediaActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    .line 348
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$6;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$7(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/VideoData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/adsdk/sdk/video/VideoData;->showNavigationBars:Z

    if-eqz v0, :cond_2

    .line 350
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$6;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$1(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/MediaController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/MediaController;->setVisibility(I)V

    .line 351
    :cond_2
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$6;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$2(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/SDKVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->requestFocus()Z

    .line 352
    return-void
.end method
