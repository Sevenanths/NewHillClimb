.class Lcom/adsdk/sdk/video/RichMediaActivity$VideoTimeoutTask;
.super Ljava/util/TimerTask;
.source "RichMediaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/video/RichMediaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoTimeoutTask"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field final synthetic this$0:Lcom/adsdk/sdk/video/RichMediaActivity;


# direct methods
.method public constructor <init>(Lcom/adsdk/sdk/video/RichMediaActivity;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter "activity"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$VideoTimeoutTask;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 140
    iput-object p2, p0, Lcom/adsdk/sdk/video/RichMediaActivity$VideoTimeoutTask;->mActivity:Landroid/app/Activity;

    .line 141
    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/video/RichMediaActivity$VideoTimeoutTask;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$VideoTimeoutTask;->mActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 146
    const-string v0, "###########TRACKING VIDEO TIMEOUT"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$VideoTimeoutTask;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/adsdk/sdk/video/RichMediaActivity$VideoTimeoutTask$1;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$VideoTimeoutTask$1;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity$VideoTimeoutTask;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 154
    return-void
.end method
