.class Lcom/adsdk/sdk/video/RichMediaActivity$16;
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
    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$16;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 560
    const-string v0, "###########TRACKING SKIP INTERSTITIAL"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$16;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    const/4 v1, 0x1

    #setter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mResult:Z
    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$12(Lcom/adsdk/sdk/video/RichMediaActivity;Z)V

    .line 574
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$16;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->setResult(I)V

    .line 575
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$16;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->finish()V

    .line 576
    return-void
.end method
