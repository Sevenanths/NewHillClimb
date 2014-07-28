.class Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$5;
.super Ljava/lang/Object;
.source "ApplifierImpactVideoPlayView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    iput-object p1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$5;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$5;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    const/4 v1, 0x1

    #setter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoCompleted:Z
    invoke-static {v0, v1}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$23(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;Z)V

    .line 264
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$5;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_listener:Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;
    invoke-static {v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$10(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 265
    return-void
.end method
