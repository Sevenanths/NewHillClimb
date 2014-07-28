.class Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$4;
.super Landroid/widget/VideoView;
.source "ApplifierImpactVideoPlayView.java"


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
.method constructor <init>(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$4;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    .line 244
    invoke-direct {p0, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onWindowVisibilityChanged(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 247
    if-nez p1, :cond_1

    .line 248
    invoke-super {p0, p1}, Landroid/widget/VideoView;->onWindowVisibilityChanged(I)V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$4;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoCompleted:Z
    invoke-static {v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$22(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$4;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_listener:Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;
    invoke-static {v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$10(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;->onVideoHidden()V

    goto :goto_0
.end method
