.class Lcom/adsdk/sdk/video/SDKVideoView$8;
.super Ljava/lang/Object;
.source "SDKVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/video/SDKVideoView;->openVideo()V
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
    iput-object p1, p0, Lcom/adsdk/sdk/video/SDKVideoView$8;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 193
    const-string v5, "Time Event Thread started"

    invoke-static {v5}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 195
    :cond_0
    iget-object v5, p0, Lcom/adsdk/sdk/video/SDKVideoView$8;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    #getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v5}, Lcom/adsdk/sdk/video/SDKVideoView;->access$2(Lcom/adsdk/sdk/video/SDKVideoView;)Landroid/media/MediaPlayer;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 196
    iget-object v5, p0, Lcom/adsdk/sdk/video/SDKVideoView$8;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    #getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I
    invoke-static {v5}, Lcom/adsdk/sdk/video/SDKVideoView;->access$19(Lcom/adsdk/sdk/video/SDKVideoView;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 198
    :try_start_0
    iget-object v5, p0, Lcom/adsdk/sdk/video/SDKVideoView$8;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    #getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v5}, Lcom/adsdk/sdk/video/SDKVideoView;->access$2(Lcom/adsdk/sdk/video/SDKVideoView;)Landroid/media/MediaPlayer;

    move-result-object v5

    .line 199
    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v5

    .line 198
    div-int/lit16 v4, v5, 0x3e8

    .line 200
    .local v4, time:I
    iget-object v5, p0, Lcom/adsdk/sdk/video/SDKVideoView$8;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    #getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventListeners:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/adsdk/sdk/video/SDKVideoView;->access$20(Lcom/adsdk/sdk/video/SDKVideoView;)Ljava/util/HashMap;

    move-result-object v5

    .line 201
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Vector;

    .line 202
    .local v3, listeners:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;>;"
    if-eqz v3, :cond_1

    .line 203
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v1, v5, :cond_2

    .line 214
    invoke-virtual {v3}, Ljava/util/Vector;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v1           #i:I
    .end local v3           #listeners:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;>;"
    .end local v4           #time:I
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/adsdk/sdk/video/SDKVideoView$8;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    #getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventThreadDone:Landroid/os/ConditionVariable;
    invoke-static {v5}, Lcom/adsdk/sdk/video/SDKVideoView;->access$21(Lcom/adsdk/sdk/video/SDKVideoView;)Landroid/os/ConditionVariable;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v6, v7}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 221
    const-string v5, "Time Event Thread stopped"

    invoke-static {v5}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    .line 222
    return-void

    .line 205
    .restart local v1       #i:I
    .restart local v3       #listeners:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;>;"
    .restart local v4       #time:I
    :cond_2
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

    .line 206
    .local v2, l:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;
    iget-object v5, p0, Lcom/adsdk/sdk/video/SDKVideoView$8;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    iget-object v5, v5, Lcom/adsdk/sdk/video/SDKVideoView;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/adsdk/sdk/video/SDKVideoView$8$1;

    invoke-direct {v6, p0, v2, v4}, Lcom/adsdk/sdk/video/SDKVideoView$8$1;-><init>(Lcom/adsdk/sdk/video/SDKVideoView$8;Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;I)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    .end local v1           #i:I
    .end local v2           #l:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;
    .end local v3           #listeners:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;>;"
    .end local v4           #time:I
    :catch_0
    move-exception v0

    .line 217
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Time Event Thread error"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
