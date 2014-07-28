.class Lcom/adsdk/sdk/video/SDKVideoView$5;
.super Ljava/lang/Object;
.source "SDKVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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
    iput-object p1, p0, Lcom/adsdk/sdk/video/SDKVideoView$5;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v2, 0x1

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Info/Warning: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$5;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    #getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;
    invoke-static {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->access$11(Lcom/adsdk/sdk/video/SDKVideoView;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$5;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    #getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;
    invoke-static {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->access$11(Lcom/adsdk/sdk/video/SDKVideoView;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView$5;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    #getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/adsdk/sdk/video/SDKVideoView;->access$2(Lcom/adsdk/sdk/video/SDKVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    move-result v0

    .line 370
    if-eqz v0, :cond_0

    .line 375
    :cond_0
    return v2
.end method
