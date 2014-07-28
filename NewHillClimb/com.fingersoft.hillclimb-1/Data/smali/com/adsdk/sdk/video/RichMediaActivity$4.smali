.class Lcom/adsdk/sdk/video/RichMediaActivity$4;
.super Ljava/lang/Object;
.source "RichMediaActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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
    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$4;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Info: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Extra: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->i(Ljava/lang/String;)V

    .line 312
    const/16 v0, 0x2bf

    if-ne p2, v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$4;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$4;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;
    invoke-static {v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$2(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/SDKVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adsdk/sdk/video/SDKVideoView;->getCurrentPosition()I

    move-result v1

    iput v1, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mTimeTest:I

    .line 314
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$4;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mCheckProgressTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$3(Lcom/adsdk/sdk/video/RichMediaActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 316
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
