.class Lcom/adsdk/sdk/video/SDKVideoView$8$1;
.super Ljava/lang/Object;
.source "SDKVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/video/SDKVideoView$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adsdk/sdk/video/SDKVideoView$8;

.field private final synthetic val$l:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

.field private final synthetic val$time:I


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/video/SDKVideoView$8;Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/video/SDKVideoView$8$1;->this$1:Lcom/adsdk/sdk/video/SDKVideoView$8;

    iput-object p2, p0, Lcom/adsdk/sdk/video/SDKVideoView$8$1;->val$l:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

    iput p3, p0, Lcom/adsdk/sdk/video/SDKVideoView$8$1;->val$time:I

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$8$1;->val$l:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView$8$1;->val$time:I

    invoke-interface {v0, v1}, Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;->onTimeEvent(I)V

    .line 211
    return-void
.end method
