.class Lcom/adsdk/sdk/video/SDKVideoView$2;
.super Ljava/lang/Object;
.source "SDKVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    iput-object p1, p0, Lcom/adsdk/sdk/video/SDKVideoView$2;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    .line 297
    const-string v1, "SDKVideoView onPrepared"

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 298
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView$2;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    const/4 v2, 0x2

    #setter for: Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I
    invoke-static {v1, v2}, Lcom/adsdk/sdk/video/SDKVideoView;->access$0(Lcom/adsdk/sdk/video/SDKVideoView;I)V

    .line 300
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView$2;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    #getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v1}, Lcom/adsdk/sdk/video/SDKVideoView;->access$1(Lcom/adsdk/sdk/video/SDKVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView$2;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    #getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v1}, Lcom/adsdk/sdk/video/SDKVideoView;->access$1(Lcom/adsdk/sdk/video/SDKVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/adsdk/sdk/video/SDKVideoView$2;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    #getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/adsdk/sdk/video/SDKVideoView;->access$2(Lcom/adsdk/sdk/video/SDKVideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView$2;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    #getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;
    invoke-static {v1}, Lcom/adsdk/sdk/video/SDKVideoView;->access$3(Lcom/adsdk/sdk/video/SDKVideoView;)Lcom/adsdk/sdk/video/MediaController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 304
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView$2;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    #getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;
    invoke-static {v1}, Lcom/adsdk/sdk/video/SDKVideoView;->access$3(Lcom/adsdk/sdk/video/SDKVideoView;)Lcom/adsdk/sdk/video/MediaController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/video/MediaController;->setEnabled(Z)V

    .line 306
    :cond_1
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView$2;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    #getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mSeekWhenPrepared:I
    invoke-static {v1}, Lcom/adsdk/sdk/video/SDKVideoView;->access$4(Lcom/adsdk/sdk/video/SDKVideoView;)I

    move-result v0

    .line 309
    .local v0, seekToPosition:I
    if-eqz v0, :cond_2

    .line 310
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView$2;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/video/SDKVideoView;->seekTo(I)V

    .line 312
    :cond_2
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView$2;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    #getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceReady:Z
    invoke-static {v1}, Lcom/adsdk/sdk/video/SDKVideoView;->access$5(Lcom/adsdk/sdk/video/SDKVideoView;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 313
    const-string v1, "SDKVideoView onPrepared surface not ready yet"

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 325
    :cond_3
    :goto_0
    return-void

    .line 316
    :cond_4
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView$2;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    #calls: Lcom/adsdk/sdk/video/SDKVideoView;->setVideoDisplaySize()V
    invoke-static {v1}, Lcom/adsdk/sdk/video/SDKVideoView;->access$6(Lcom/adsdk/sdk/video/SDKVideoView;)V

    .line 317
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView$2;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    #getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mTargetState:I
    invoke-static {v1}, Lcom/adsdk/sdk/video/SDKVideoView;->access$7(Lcom/adsdk/sdk/video/SDKVideoView;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 318
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView$2;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    invoke-virtual {v1}, Lcom/adsdk/sdk/video/SDKVideoView;->start()V

    goto :goto_0

    .line 319
    :cond_5
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView$2;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    invoke-virtual {v1}, Lcom/adsdk/sdk/video/SDKVideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_3

    .line 320
    if-nez v0, :cond_6

    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView$2;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    invoke-virtual {v1}, Lcom/adsdk/sdk/video/SDKVideoView;->getCurrentPosition()I

    move-result v1

    if-lez v1, :cond_3

    .line 321
    :cond_6
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView$2;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    #getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;
    invoke-static {v1}, Lcom/adsdk/sdk/video/SDKVideoView;->access$3(Lcom/adsdk/sdk/video/SDKVideoView;)Lcom/adsdk/sdk/video/MediaController;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 322
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView$2;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    #getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;
    invoke-static {v1}, Lcom/adsdk/sdk/video/SDKVideoView;->access$3(Lcom/adsdk/sdk/video/SDKVideoView;)Lcom/adsdk/sdk/video/MediaController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/video/MediaController;->show(I)V

    goto :goto_0
.end method
