.class Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask$1;
.super Ljava/lang/Object;
.source "RichMediaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask$1;->this$1:Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask$1;->this$1:Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask;->access$0(Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask;)Lcom/adsdk/sdk/video/RichMediaActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->setResult(I)V

    .line 116
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask$1;->this$1:Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask;->access$0(Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask;)Lcom/adsdk/sdk/video/RichMediaActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->finish()V

    .line 117
    return-void
.end method
