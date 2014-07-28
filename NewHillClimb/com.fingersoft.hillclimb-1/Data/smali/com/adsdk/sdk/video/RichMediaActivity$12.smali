.class Lcom/adsdk/sdk/video/RichMediaActivity$12;
.super Ljava/lang/Object;
.source "RichMediaActivity.java"

# interfaces
.implements Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;


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
    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$12;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeEvent(I)V
    .locals 4
    .parameter "time"

    .prologue
    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "###########CAN CLOSE VIDEO:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$12;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    const/4 v1, 0x1

    #setter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mCanClose:Z
    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$13(Lcom/adsdk/sdk/video/RichMediaActivity;Z)V

    .line 476
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$12;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$7(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/VideoData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/adsdk/sdk/video/VideoData;->showSkipButton:Z

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$12;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$14(Lcom/adsdk/sdk/video/RichMediaActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$12;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$14(Lcom/adsdk/sdk/video/RichMediaActivity;)Landroid/widget/ImageView;

    move-result-object v0

    .line 480
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$12;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;
    invoke-static {v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$15(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/ResourceManager;

    move-result-object v1

    .line 481
    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity$12;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    const/16 v3, -0x12

    invoke-virtual {v1, v2, v3}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 480
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 483
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$12;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$14(Lcom/adsdk/sdk/video/RichMediaActivity;)Landroid/widget/ImageView;

    move-result-object v0

    .line 484
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 486
    :cond_0
    return-void
.end method
