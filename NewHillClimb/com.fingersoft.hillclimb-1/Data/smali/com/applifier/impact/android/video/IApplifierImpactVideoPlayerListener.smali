.class public interface abstract Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;
.super Ljava/lang/Object;
.source "IApplifierImpactVideoPlayerListener.java"

# interfaces
.implements Lcom/applifier/impact/android/view/IApplifierImpactViewListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# virtual methods
.method public abstract onEventPositionReached(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;)V
.end method

.method public abstract onVideoHidden()V
.end method

.method public abstract onVideoPlaybackError()V
.end method

.method public abstract onVideoPlaybackStarted()V
.end method

.method public abstract onVideoSkip()V
.end method
