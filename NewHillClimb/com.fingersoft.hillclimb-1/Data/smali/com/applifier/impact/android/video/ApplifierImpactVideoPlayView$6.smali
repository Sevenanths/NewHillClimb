.class Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$6;
.super Ljava/lang/Object;
.source "ApplifierImpactVideoPlayView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->createView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;


# direct methods
.method constructor <init>(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$6;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    const/4 v1, 0x0

    .line 270
    const-string v0, "onPrepared"

    invoke-static {v0, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 271
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$6;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    #setter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, p1}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$24(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;Landroid/media/MediaPlayer;)V

    .line 273
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$6;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_muted:Z
    invoke-static {v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$25(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$6;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    #calls: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->storeVolume()V
    invoke-static {v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$26(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)V

    .line 275
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$6;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$27(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$6;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    const/4 v1, 0x1

    #setter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoPlayheadPrepared:Z
    invoke-static {v0, v1}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$28(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;Z)V

    .line 279
    return-void
.end method
