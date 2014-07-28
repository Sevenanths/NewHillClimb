.class Lcom/adsdk/sdk/video/RichMediaActivity$13;
.super Ljava/lang/Object;
.source "RichMediaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$13;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 494
    const-string v3, "###########TRACKING SKIP VIDEO"

    invoke-static {v3}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    .line 495
    iget-object v3, p0, Lcom/adsdk/sdk/video/RichMediaActivity$13;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;
    invoke-static {v3}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$7(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/VideoData;

    move-result-object v3

    iget-object v2, v3, Lcom/adsdk/sdk/video/VideoData;->skipEvents:Ljava/util/Vector;

    .line 496
    .local v2, trackers:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 516
    iget-object v3, p0, Lcom/adsdk/sdk/video/RichMediaActivity$13;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    const/4 v4, 0x1

    #setter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mResult:Z
    invoke-static {v3, v4}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$12(Lcom/adsdk/sdk/video/RichMediaActivity;Z)V

    .line 517
    iget-object v3, p0, Lcom/adsdk/sdk/video/RichMediaActivity$13;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/adsdk/sdk/video/RichMediaActivity;->setResult(I)V

    .line 518
    iget-object v3, p0, Lcom/adsdk/sdk/video/RichMediaActivity$13;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-virtual {v3}, Lcom/adsdk/sdk/video/RichMediaActivity;->finish()V

    .line 519
    return-void

    .line 498
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

    .line 499
    new-instance v0, Lcom/adsdk/sdk/video/TrackEvent;

    invoke-direct {v0}, Lcom/adsdk/sdk/video/TrackEvent;-><init>()V

    .line 500
    .local v0, event:Lcom/adsdk/sdk/video/TrackEvent;
    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Lcom/adsdk/sdk/video/TrackEvent;->url:Ljava/lang/String;

    .line 501
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/adsdk/sdk/video/TrackEvent;->timestamp:J

    .line 502
    invoke-static {v0}, Lcom/adsdk/sdk/video/TrackerService;->requestTrack(Lcom/adsdk/sdk/video/TrackEvent;)V

    .line 496
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
