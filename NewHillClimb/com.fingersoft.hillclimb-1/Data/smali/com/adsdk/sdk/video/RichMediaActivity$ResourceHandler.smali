.class Lcom/adsdk/sdk/video/RichMediaActivity$ResourceHandler;
.super Landroid/os/Handler;
.source "RichMediaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/video/RichMediaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResourceHandler"
.end annotation


# instance fields
.field richMediaActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/adsdk/sdk/video/RichMediaActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 229
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 230
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$ResourceHandler;->richMediaActivity:Ljava/lang/ref/WeakReference;

    .line 231
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 235
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$ResourceHandler;->richMediaActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/video/RichMediaActivity;

    .line 236
    .local v0, wRichMediaActivity:Lcom/adsdk/sdk/video/RichMediaActivity;
    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0, p1}, Lcom/adsdk/sdk/video/RichMediaActivity;->handleMessage(Landroid/os/Message;)V

    .line 239
    :cond_0
    return-void
.end method
