.class Lcom/adsdk/sdk/video/RichMediaActivity$7;
.super Ljava/lang/Object;
.source "RichMediaActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$7;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 9
    .parameter "mp"

    .prologue
    const/4 v8, 0x1

    .line 360
    const-string v5, "###########TRACKING END VIDEO"

    invoke-static {v5}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 361
    iget-object v5, p0, Lcom/adsdk/sdk/video/RichMediaActivity$7;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;
    invoke-static {v5}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$7(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/VideoData;

    move-result-object v5

    iget-object v4, v5, Lcom/adsdk/sdk/video/VideoData;->completeEvents:Ljava/util/Vector;

    .line 362
    .local v4, trackers:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v2, v5, :cond_1

    .line 370
    iget-object v5, p0, Lcom/adsdk/sdk/video/RichMediaActivity$7;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I
    invoke-static {v5}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$8(Lcom/adsdk/sdk/video/RichMediaActivity;)I

    move-result v5

    if-ne v5, v8, :cond_0

    .line 371
    iget-object v5, p0, Lcom/adsdk/sdk/video/RichMediaActivity$7;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/video/RichMediaAd;
    invoke-static {v5}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$9(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 372
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/adsdk/sdk/video/RichMediaActivity$7;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    .line 373
    const-class v6, Lcom/adsdk/sdk/video/RichMediaActivity;

    .line 372
    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 374
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "RICH_AD_DATA"

    .line 375
    iget-object v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity$7;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/video/RichMediaAd;
    invoke-static {v6}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$9(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v6

    .line 374
    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 376
    const-string v5, "RICH_AD_TYPE"

    .line 377
    const/4 v6, 0x2

    .line 376
    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 379
    :try_start_0
    iget-object v5, p0, Lcom/adsdk/sdk/video/RichMediaActivity$7;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-virtual {v5, v3}, Lcom/adsdk/sdk/video/RichMediaActivity;->startActivity(Landroid/content/Intent;)V

    .line 381
    iget-object v5, p0, Lcom/adsdk/sdk/video/RichMediaActivity$7;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    .line 382
    iget-object v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity$7;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mEnterAnim:I
    invoke-static {v6}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$10(Lcom/adsdk/sdk/video/RichMediaActivity;)I

    move-result v6

    .line 383
    iget-object v7, p0, Lcom/adsdk/sdk/video/RichMediaActivity$7;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mExitAnim:I
    invoke-static {v7}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$11(Lcom/adsdk/sdk/video/RichMediaActivity;)I

    move-result v7

    .line 380
    invoke-static {v5, v6, v7}, Lcom/adsdk/sdk/video/RichMediaActivity;->setActivityAnimation(Landroid/app/Activity;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    .end local v3           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/adsdk/sdk/video/RichMediaActivity$7;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #setter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mResult:Z
    invoke-static {v5, v8}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$12(Lcom/adsdk/sdk/video/RichMediaActivity;Z)V

    .line 390
    iget-object v5, p0, Lcom/adsdk/sdk/video/RichMediaActivity$7;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/adsdk/sdk/video/RichMediaActivity;->setResult(I)V

    .line 391
    iget-object v5, p0, Lcom/adsdk/sdk/video/RichMediaActivity$7;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-virtual {v5}, Lcom/adsdk/sdk/video/RichMediaActivity;->finish()V

    .line 392
    return-void

    .line 364
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v5, "Track url:"

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 365
    new-instance v1, Lcom/adsdk/sdk/video/TrackEvent;

    invoke-direct {v1}, Lcom/adsdk/sdk/video/TrackEvent;-><init>()V

    .line 366
    .local v1, event:Lcom/adsdk/sdk/video/TrackEvent;
    invoke-virtual {v4, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v1, Lcom/adsdk/sdk/video/TrackEvent;->url:Ljava/lang/String;

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/adsdk/sdk/video/TrackEvent;->timestamp:J

    .line 368
    invoke-static {v1}, Lcom/adsdk/sdk/video/TrackerService;->requestTrack(Lcom/adsdk/sdk/video/TrackEvent;)V

    .line 362
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 384
    .end local v1           #event:Lcom/adsdk/sdk/video/TrackEvent;
    .restart local v3       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 385
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Cannot start Rich Ad activity:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 385
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
