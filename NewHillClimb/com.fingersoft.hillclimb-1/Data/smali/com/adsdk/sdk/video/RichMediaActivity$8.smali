.class Lcom/adsdk/sdk/video/RichMediaActivity$8;
.super Ljava/lang/Object;
.source "RichMediaActivity.java"

# interfaces
.implements Lcom/adsdk/sdk/video/SDKVideoView$OnStartListener;


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
    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$8;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoStart()V
    .locals 5

    .prologue
    .line 400
    const-string v3, "###########TRACKING START VIDEO"

    invoke-static {v3}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 401
    iget-object v3, p0, Lcom/adsdk/sdk/video/RichMediaActivity$8;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;
    invoke-static {v3}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$7(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/VideoData;

    move-result-object v3

    iget-object v2, v3, Lcom/adsdk/sdk/video/VideoData;->startEvents:Ljava/util/Vector;

    .line 402
    .local v2, trackers:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 410
    return-void

    .line 404
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v3, "Track url:"

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 405
    new-instance v0, Lcom/adsdk/sdk/video/TrackEvent;

    invoke-direct {v0}, Lcom/adsdk/sdk/video/TrackEvent;-><init>()V

    .line 406
    .local v0, event:Lcom/adsdk/sdk/video/TrackEvent;
    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Lcom/adsdk/sdk/video/TrackEvent;->url:Ljava/lang/String;

    .line 407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/adsdk/sdk/video/TrackEvent;->timestamp:J

    .line 408
    invoke-static {v0}, Lcom/adsdk/sdk/video/TrackerService;->requestTrack(Lcom/adsdk/sdk/video/TrackEvent;)V

    .line 402
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
