.class Lcom/adsdk/sdk/video/RichMediaActivity$1;
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
    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$1;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeEvent(I)V
    .locals 3
    .parameter "time"

    .prologue
    .line 270
    const-string v0, "ADSDK"

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RichMediaActivity mOverlayShowListener show after:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 271
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$1;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayView:Lcom/adsdk/sdk/video/WebFrame;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$0(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/WebFrame;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$1;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayView:Lcom/adsdk/sdk/video/WebFrame;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$0(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/WebFrame;

    move-result-object v0

    .line 275
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/WebFrame;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$1;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayView:Lcom/adsdk/sdk/video/WebFrame;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$0(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/WebFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/WebFrame;->requestLayout()V

    .line 278
    :cond_0
    return-void
.end method
