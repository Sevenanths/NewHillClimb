.class Lcom/adsdk/sdk/video/RichMediaActivity$5;
.super Ljava/lang/Object;
.source "RichMediaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$5;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 323
    const-string v1, "Video playback is being checked"

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->w(Ljava/lang/String;)V

    .line 324
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$5;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;
    invoke-static {v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$2(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/SDKVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adsdk/sdk/video/SDKVideoView;->getCurrentPosition()I

    move-result v0

    .line 325
    .local v0, test:I
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$5;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    iget v1, v1, Lcom/adsdk/sdk/video/RichMediaActivity;->mTimeTest:I

    sub-int v1, v0, v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 326
    const-string v1, "Video playback too slow. Ending"

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->w(Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$5;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-virtual {v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->finish()V

    .line 332
    :goto_0
    return-void

    .line 330
    :cond_0
    const-string v1, "Video playback has restarted"

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->w(Ljava/lang/String;)V

    goto :goto_0
.end method
