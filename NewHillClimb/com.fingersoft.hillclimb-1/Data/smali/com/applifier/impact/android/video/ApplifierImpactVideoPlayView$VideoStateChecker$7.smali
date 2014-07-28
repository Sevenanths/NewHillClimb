.class Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$7;
.super Ljava/lang/Object;
.source "ApplifierImpactVideoPlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;


# direct methods
.method constructor <init>(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$7;->this$1:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    .line 721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 724
    iget-object v3, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$7;->this$1:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;
    invoke-static {v3}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->access$4(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    move-result-object v3

    #calls: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->hideBufferingView()V
    invoke-static {v3}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$15(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)V

    .line 725
    iget-object v3, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$7;->this$1:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;
    invoke-static {v3}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->access$4(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    move-result-object v3

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoPlaybackStartedSent:Z
    invoke-static {v3}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$16(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 726
    iget-object v3, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$7;->this$1:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;
    invoke-static {v3}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->access$4(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    move-result-object v3

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_listener:Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;
    invoke-static {v3}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$10(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 727
    iget-object v3, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$7;->this$1:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;
    invoke-static {v3}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->access$4(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    move-result-object v3

    #setter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoPlaybackStartedSent:Z
    invoke-static {v3, v7}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$17(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;Z)V

    .line 728
    const-string v3, "onVideoPlaybackStarted sent to listener"

    invoke-static {v3, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 729
    iget-object v3, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$7;->this$1:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;
    invoke-static {v3}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->access$4(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    move-result-object v3

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_listener:Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;
    invoke-static {v3}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$10(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;->onVideoPlaybackStarted()V

    .line 730
    iget-object v3, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$7;->this$1:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;
    invoke-static {v3}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->access$4(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    #setter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingCompledtedMillis:J
    invoke-static {v3, v4, v5}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$18(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;J)V

    .line 731
    iget-object v3, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$7;->this$1:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;
    invoke-static {v3}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->access$4(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    #setter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoStartedPlayingMillis:J
    invoke-static {v3, v4, v5}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$19(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;J)V

    .line 732
    iget-object v3, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$7;->this$1:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;
    invoke-static {v3}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->access$4(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    move-result-object v3

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingCompledtedMillis:J
    invoke-static {v3}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$20(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$7;->this$1:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;
    invoke-static {v5}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->access$4(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    move-result-object v5

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingStartedMillis:J
    invoke-static {v5}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$11(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 733
    .local v0, bufferingDuration:J
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 734
    .local v2, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "bufferingDuration"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    sget-object v3, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-static {v3, v2}, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;->gaInstrumentationVideoPlay(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;Ljava/util/Map;)V

    .line 738
    .end local v0           #bufferingDuration:J
    .end local v2           #values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    iget-object v3, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$7;->this$1:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;
    invoke-static {v3}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->access$4(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    move-result-object v3

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_sentPositionEvents:Ljava/util/Map;
    invoke-static {v3}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$9(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->Start:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 739
    iget-object v3, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$7;->this$1:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;
    invoke-static {v3}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->access$4(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    move-result-object v3

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_sentPositionEvents:Ljava/util/Map;
    invoke-static {v3}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$9(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->Start:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    iget-object v3, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$7;->this$1:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;
    invoke-static {v3}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->access$4(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    move-result-object v3

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_listener:Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;
    invoke-static {v3}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$10(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;

    move-result-object v3

    sget-object v4, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->Start:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    invoke-interface {v3, v4}, Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;->onEventPositionReached(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;)V

    .line 743
    :cond_1
    return-void
.end method
