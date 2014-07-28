.class Lcom/adsdk/sdk/video/RichMediaActivity$2;
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
    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$2;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 286
    const-string v0, "ADSDK"

    .line 287
    const-string v1, "RichMediaActivity mOverlayClickListener"

    .line 286
    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$2;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$1(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$2;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$1(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/MediaController;->toggle()V

    .line 290
    :cond_0
    return-void
.end method
