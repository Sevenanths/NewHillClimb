.class Lcom/adsdk/sdk/video/SDKVideoView$1;
.super Ljava/lang/Object;
.source "SDKVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/video/SDKVideoView;
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
    iput-object p1, p0, Lcom/adsdk/sdk/video/SDKVideoView$1;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1
    .parameter "mp"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 289
    const-string v0, "SDKVideoView OnVideoSizeChangedListener"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 291
    return-void
.end method
