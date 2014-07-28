.class Lcom/adsdk/sdk/video/MediaController$1;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/video/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/video/MediaController;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/video/MediaController;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/video/MediaController$1;->this$0:Lcom/adsdk/sdk/video/MediaController;

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 526
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController$1;->this$0:Lcom/adsdk/sdk/video/MediaController;

    #calls: Lcom/adsdk/sdk/video/MediaController;->doPauseResume()V
    invoke-static {v0}, Lcom/adsdk/sdk/video/MediaController;->access$0(Lcom/adsdk/sdk/video/MediaController;)V

    .line 527
    return-void
.end method
